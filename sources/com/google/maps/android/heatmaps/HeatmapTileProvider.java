package com.google.maps.android.heatmaps;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.support.v4.util.LongSparseArray;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Tile;
import com.google.android.gms.maps.model.TileProvider;
import com.google.maps.android.geometry.Bounds;
import com.google.maps.android.geometry.Point;
import com.google.maps.android.quadtree.PointQuadTree;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class HeatmapTileProvider implements TileProvider {
    private static final int DEFAULT_MAX_ZOOM = 11;
    private static final int DEFAULT_MIN_ZOOM = 5;
    public static final double DEFAULT_OPACITY = 0.7d;
    public static final int DEFAULT_RADIUS = 20;
    private static final int MAX_RADIUS = 50;
    private static final int MAX_ZOOM_LEVEL = 22;
    private static final int MIN_RADIUS = 10;
    private static final int SCREEN_SIZE = 1280;
    private static final int TILE_DIM = 512;
    static final double WORLD_WIDTH = 1.0d;
    private Bounds mBounds;
    private int[] mColorMap;
    private Collection<WeightedLatLng> mData;
    private Gradient mGradient;
    private double[] mKernel;
    private double[] mMaxIntensity;
    private double mOpacity;
    private int mRadius;
    private PointQuadTree<WeightedLatLng> mTree;
    private static final int[] DEFAULT_GRADIENT_COLORS = {Color.rgb(102, 225, 0), Color.rgb(255, 0, 0)};
    private static final float[] DEFAULT_GRADIENT_START_POINTS = {0.2f, 1.0f};
    public static final Gradient DEFAULT_GRADIENT = new Gradient(DEFAULT_GRADIENT_COLORS, DEFAULT_GRADIENT_START_POINTS);

    public static class Builder {
        private Collection<WeightedLatLng> data;
        private int radius = 20;
        private Gradient gradient = HeatmapTileProvider.DEFAULT_GRADIENT;
        private double opacity = 0.7d;

        public Builder data(Collection<LatLng> val) {
            return weightedData(HeatmapTileProvider.wrapData(val));
        }

        public Builder weightedData(Collection<WeightedLatLng> val) {
            this.data = val;
            if (this.data.isEmpty()) {
                throw new IllegalArgumentException("No input points.");
            }
            return this;
        }

        public Builder radius(int val) {
            this.radius = val;
            if (this.radius < 10 || this.radius > 50) {
                throw new IllegalArgumentException("Radius not within bounds.");
            }
            return this;
        }

        public Builder gradient(Gradient val) {
            this.gradient = val;
            return this;
        }

        public Builder opacity(double val) {
            this.opacity = val;
            if (this.opacity < 0.0d || this.opacity > 1.0d) {
                throw new IllegalArgumentException("Opacity must be in range [0, 1]");
            }
            return this;
        }

        public HeatmapTileProvider build() {
            if (this.data == null) {
                throw new IllegalStateException("No input data: you must use either .data or .weightedData before building");
            }
            return new HeatmapTileProvider(this);
        }
    }

    private HeatmapTileProvider(Builder builder) {
        this.mData = builder.data;
        this.mRadius = builder.radius;
        this.mGradient = builder.gradient;
        this.mOpacity = builder.opacity;
        int i = this.mRadius;
        double d = this.mRadius;
        Double.isNaN(d);
        this.mKernel = generateKernel(i, d / 3.0d);
        setGradient(this.mGradient);
        setWeightedData(this.mData);
    }

    public void setWeightedData(Collection<WeightedLatLng> data) {
        this.mData = data;
        if (this.mData.isEmpty()) {
            throw new IllegalArgumentException("No input points.");
        }
        this.mBounds = getBounds(this.mData);
        this.mTree = new PointQuadTree<>(this.mBounds);
        for (WeightedLatLng l : this.mData) {
            this.mTree.add(l);
        }
        this.mMaxIntensity = getMaxIntensities(this.mRadius);
    }

    public void setData(Collection<LatLng> data) {
        setWeightedData(wrapData(data));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Collection<WeightedLatLng> wrapData(Collection<LatLng> data) {
        ArrayList<WeightedLatLng> weightedData = new ArrayList<>();
        for (LatLng l : data) {
            weightedData.add(new WeightedLatLng(l));
        }
        return weightedData;
    }

    @Override // com.google.android.gms.maps.model.TileProvider
    public Tile getTile(int i, int i2, int i3) {
        double dPow = 1.0d / Math.pow(2.0d, i3);
        double d = this.mRadius;
        Double.isNaN(d);
        double d2 = (d * dPow) / 512.0d;
        double d3 = (this.mRadius * 2) + 512;
        Double.isNaN(d3);
        double d4 = ((2.0d * d2) + dPow) / d3;
        double d5 = i;
        Double.isNaN(d5);
        double d6 = (d5 * dPow) - d2;
        double d7 = i + 1;
        Double.isNaN(d7);
        double d8 = (d7 * dPow) + d2;
        double d9 = i2;
        Double.isNaN(d9);
        double d10 = (d9 * dPow) - d2;
        double d11 = i2 + 1;
        Double.isNaN(d11);
        double d12 = (d11 * dPow) + d2;
        double d13 = 0.0d;
        Collection<WeightedLatLng> arrayList = new ArrayList();
        if (d6 < 0.0d) {
            d13 = -1.0d;
            arrayList = this.mTree.search(new Bounds(d6 + 1.0d, 1.0d, d10, d12));
        } else if (d8 > 1.0d) {
            d13 = 1.0d;
            arrayList = this.mTree.search(new Bounds(0.0d, d8 - 1.0d, d10, d12));
        }
        Bounds bounds = new Bounds(d6, d8, d10, d12);
        if (!bounds.intersects(new Bounds(this.mBounds.minX - d2, this.mBounds.maxX + d2, this.mBounds.minY - d2, this.mBounds.maxY + d2))) {
            return TileProvider.NO_TILE;
        }
        Collection<T> collectionSearch = this.mTree.search(bounds);
        if (!collectionSearch.isEmpty()) {
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, (this.mRadius * 2) + 512, (this.mRadius * 2) + 512);
            Iterator it = collectionSearch.iterator();
            Object obj = collectionSearch;
            while (it.hasNext()) {
                WeightedLatLng weightedLatLng = (WeightedLatLng) it.next();
                Object obj2 = obj;
                Point point = weightedLatLng.getPoint();
                Bounds bounds2 = bounds;
                Iterator it2 = it;
                int i4 = (int) ((point.x - d6) / d4);
                double d14 = d8;
                int i5 = (int) ((point.y - d10) / d4);
                double[] dArr2 = dArr[i4];
                dArr2[i5] = dArr2[i5] + weightedLatLng.getIntensity();
                obj = obj2;
                bounds = bounds2;
                it = it2;
                d8 = d14;
            }
            for (WeightedLatLng weightedLatLng2 : arrayList) {
                Point point2 = weightedLatLng2.getPoint();
                int i6 = (int) (((point2.x + d13) - d6) / d4);
                double d15 = d2;
                int i7 = (int) ((point2.y - d10) / d4);
                double[] dArr3 = dArr[i6];
                dArr3[i7] = dArr3[i7] + weightedLatLng2.getIntensity();
                d2 = d15;
            }
            return convertBitmap(colorize(convolve(dArr, this.mKernel), this.mColorMap, this.mMaxIntensity[i3]));
        }
        return TileProvider.NO_TILE;
    }

    public void setGradient(Gradient gradient) {
        this.mGradient = gradient;
        this.mColorMap = gradient.generateColorMap(this.mOpacity);
    }

    public void setRadius(int radius) {
        this.mRadius = radius;
        int i = this.mRadius;
        double d = this.mRadius;
        Double.isNaN(d);
        this.mKernel = generateKernel(i, d / 3.0d);
        this.mMaxIntensity = getMaxIntensities(this.mRadius);
    }

    public void setOpacity(double opacity) {
        this.mOpacity = opacity;
        setGradient(this.mGradient);
    }

    private double[] getMaxIntensities(int radius) {
        int i;
        double[] maxIntensityArray = new double[22];
        int i2 = 5;
        while (true) {
            i = 11;
            if (i2 >= 11) {
                break;
            }
            maxIntensityArray[i2] = getMaxValue(this.mData, this.mBounds, radius, (int) (Math.pow(2.0d, i2 - 3) * 1280.0d));
            if (i2 == 5) {
                for (int j = 0; j < i2; j++) {
                    maxIntensityArray[j] = maxIntensityArray[i2];
                }
            }
            i2++;
        }
        while (true) {
            int i3 = i;
            if (i3 < 22) {
                maxIntensityArray[i3] = maxIntensityArray[10];
                i = i3 + 1;
            } else {
                return maxIntensityArray;
            }
        }
    }

    private static Tile convertBitmap(Bitmap bitmap) {
        ByteArrayOutputStream stream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, stream);
        byte[] bitmapdata = stream.toByteArray();
        return new Tile(512, 512, bitmapdata);
    }

    static Bounds getBounds(Collection<WeightedLatLng> points) {
        Iterator<WeightedLatLng> iter = points.iterator();
        WeightedLatLng first = iter.next();
        double minX = first.getPoint().x;
        double maxX = first.getPoint().x;
        double minY = first.getPoint().y;
        double maxY = first.getPoint().y;
        while (iter.hasNext()) {
            WeightedLatLng l = iter.next();
            double x = l.getPoint().x;
            double y = l.getPoint().y;
            if (x < minX) {
                minX = x;
            }
            if (x > maxX) {
                maxX = x;
            }
            if (y < minY) {
                minY = y;
            }
            if (y > maxY) {
                maxY = y;
            }
        }
        return new Bounds(minX, maxX, minY, maxY);
    }

    static double[] generateKernel(int radius, double sd) {
        double[] kernel = new double[(radius * 2) + 1];
        for (int i = -radius; i <= radius; i++) {
            double d = (-i) * i;
            Double.isNaN(d);
            kernel[i + radius] = Math.exp(d / ((2.0d * sd) * sd));
        }
        return kernel;
    }

    static double[][] convolve(double[][] grid, double[] kernel) {
        double length = kernel.length;
        Double.isNaN(length);
        int radius = (int) Math.floor(length / 2.0d);
        int dimOld = grid.length;
        int dim = dimOld - (radius * 2);
        int upperLimit = (radius + dim) - 1;
        double[][] intermediate = (double[][]) Array.newInstance((Class<?>) double.class, dimOld, dimOld);
        int x = 0;
        while (true) {
            double d = 0.0d;
            if (x >= dimOld) {
                break;
            }
            int y = 0;
            while (y < dimOld) {
                double val = grid[x][y];
                if (val != d) {
                    int xUpperLimit = (upperLimit < x + radius ? upperLimit : x + radius) + 1;
                    int initial = radius > x - radius ? radius : x - radius;
                    int x2 = initial;
                    while (true) {
                        int x22 = x2;
                        if (x22 < xUpperLimit) {
                            double[] dArr = intermediate[x22];
                            dArr[y] = dArr[y] + (kernel[x22 - (x - radius)] * val);
                            x2 = x22 + 1;
                        }
                    }
                }
                y++;
                d = 0.0d;
            }
            x++;
        }
        double[][] outputGrid = (double[][]) Array.newInstance((Class<?>) double.class, dim, dim);
        for (int x3 = radius; x3 < upperLimit + 1; x3++) {
            for (int y2 = 0; y2 < dimOld; y2++) {
                double val2 = intermediate[x3][y2];
                if (val2 != 0.0d) {
                    int yUpperLimit = (upperLimit < y2 + radius ? upperLimit : y2 + radius) + 1;
                    int initial2 = radius > y2 - radius ? radius : y2 - radius;
                    for (int y22 = initial2; y22 < yUpperLimit; y22++) {
                        double[] dArr2 = outputGrid[x3 - radius];
                        int i = y22 - radius;
                        dArr2[i] = dArr2[i] + (kernel[y22 - (y2 - radius)] * val2);
                    }
                }
            }
        }
        return outputGrid;
    }

    static Bitmap colorize(double[][] grid, int[] colorMap, double max) {
        int maxColor = colorMap[colorMap.length - 1];
        double length = colorMap.length - 1;
        Double.isNaN(length);
        double colorMapScaling = length / max;
        int dim = grid.length;
        int[] colors = new int[dim * dim];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < dim) {
                int j = 0;
                while (j < dim) {
                    double val = grid[j][i2];
                    int index = (i2 * dim) + j;
                    int j2 = j;
                    int col = (int) (val * colorMapScaling);
                    if (val != 0.0d) {
                        if (col < colorMap.length) {
                            colors[index] = colorMap[col];
                        } else {
                            colors[index] = maxColor;
                        }
                    } else {
                        colors[index] = 0;
                    }
                    j = j2 + 1;
                }
                i = i2 + 1;
            } else {
                Bitmap tile = Bitmap.createBitmap(dim, dim, Bitmap.Config.ARGB_8888);
                tile.setPixels(colors, 0, dim, 0, 0, dim, dim);
                return tile;
            }
        }
    }

    static double getMaxValue(Collection<WeightedLatLng> points, Bounds bounds, int radius, int screenDim) {
        double minY;
        double minX = bounds.minX;
        double maxX = bounds.maxX;
        double minY2 = bounds.minY;
        double maxY = bounds.maxY;
        double boundsDim = maxX - minX > maxY - minY2 ? maxX - minX : maxY - minY2;
        double d = screenDim / (radius * 2);
        Double.isNaN(d);
        int nBuckets = (int) (d + 0.5d);
        double d2 = nBuckets;
        Double.isNaN(d2);
        double scale = d2 / boundsDim;
        LongSparseArray<LongSparseArray<Double>> buckets = new LongSparseArray<>();
        double max = 0.0d;
        for (WeightedLatLng l : points) {
            double maxX2 = maxX;
            double maxY2 = maxY;
            double minX2 = minX;
            int xBucket = (int) ((l.getPoint().x - minX) * scale);
            int yBucket = (int) ((l.getPoint().y - minY2) * scale);
            LongSparseArray<LongSparseArray<Double>> buckets2 = buckets;
            LongSparseArray<Double> column = buckets2.get(xBucket);
            if (column == null) {
                column = new LongSparseArray<>();
                minY = minY2;
                buckets2.put(xBucket, column);
            } else {
                minY = minY2;
            }
            Double value = column.get(yBucket);
            if (value == null) {
                value = Double.valueOf(0.0d);
            }
            Double value2 = Double.valueOf(value.doubleValue() + l.getIntensity());
            column.put(yBucket, value2);
            if (value2.doubleValue() > max) {
                max = value2.doubleValue();
            }
            buckets = buckets2;
            maxX = maxX2;
            maxY = maxY2;
            minX = minX2;
            minY2 = minY;
        }
        return max;
    }
}
