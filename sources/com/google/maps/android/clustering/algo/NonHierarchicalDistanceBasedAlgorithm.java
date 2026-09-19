package com.google.maps.android.clustering.algo;

import com.google.android.gms.maps.model.LatLng;
import com.google.maps.android.clustering.Cluster;
import com.google.maps.android.clustering.ClusterItem;
import com.google.maps.android.geometry.Bounds;
import com.google.maps.android.geometry.Point;
import com.google.maps.android.projection.SphericalMercatorProjection;
import com.google.maps.android.quadtree.PointQuadTree;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class NonHierarchicalDistanceBasedAlgorithm<T extends ClusterItem> implements Algorithm<T> {
    public static final int MAX_DISTANCE_AT_ZOOM = 100;
    private static final SphericalMercatorProjection PROJECTION = new SphericalMercatorProjection(1.0d);
    private final Collection<QuadItem<T>> mItems = new ArrayList();
    private final PointQuadTree<QuadItem<T>> mQuadTree = new PointQuadTree<>(0.0d, 1.0d, 0.0d, 1.0d);

    @Override // com.google.maps.android.clustering.algo.Algorithm
    public void addItem(T item) {
        QuadItem<T> quadItem = new QuadItem<>(item);
        synchronized (this.mQuadTree) {
            this.mItems.add(quadItem);
            this.mQuadTree.add(quadItem);
        }
    }

    @Override // com.google.maps.android.clustering.algo.Algorithm
    public void addItems(Collection<T> items) {
        for (T item : items) {
            addItem(item);
        }
    }

    @Override // com.google.maps.android.clustering.algo.Algorithm
    public void clearItems() {
        synchronized (this.mQuadTree) {
            this.mItems.clear();
            this.mQuadTree.clear();
        }
    }

    @Override // com.google.maps.android.clustering.algo.Algorithm
    public void removeItem(T item) {
        QuadItem<T> quadItem = new QuadItem<>(item);
        synchronized (this.mQuadTree) {
            this.mItems.remove(quadItem);
            this.mQuadTree.remove(quadItem);
        }
    }

    @Override // com.google.maps.android.clustering.algo.Algorithm
    public Set<? extends Cluster<T>> getClusters(double zoom) throws Throwable {
        double zoomSpecificSpan;
        NonHierarchicalDistanceBasedAlgorithm<T> nonHierarchicalDistanceBasedAlgorithm = this;
        int discreteZoom = (int) zoom;
        double distance = (100.0d / Math.pow(2.0d, discreteZoom)) / 256.0d;
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        Map<QuadItem<T>, Double> distanceToCluster = new HashMap<>();
        Map<QuadItem<T>, StaticCluster<T>> itemToCluster = new HashMap<>();
        synchronized (nonHierarchicalDistanceBasedAlgorithm.mQuadTree) {
            try {
                Iterator<QuadItem<T>> it = nonHierarchicalDistanceBasedAlgorithm.mItems.iterator();
                while (it.hasNext()) {
                    QuadItem<T> candidate = it.next();
                    if (!hashSet.contains(candidate)) {
                        Bounds searchBounds = nonHierarchicalDistanceBasedAlgorithm.createBoundsFromSpan(candidate.getPoint(), distance);
                        Collection<T> collectionSearch = nonHierarchicalDistanceBasedAlgorithm.mQuadTree.search(searchBounds);
                        Iterator<QuadItem<T>> it2 = it;
                        if (collectionSearch.size() == 1) {
                            try {
                                hashSet2.add(candidate);
                                hashSet.add(candidate);
                                distanceToCluster.put(candidate, Double.valueOf(0.0d));
                                it = it2;
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        } else {
                            StaticCluster<T> cluster = new StaticCluster<>(((QuadItem) candidate).mClusterItem.getPosition());
                            hashSet2.add(cluster);
                            for (T clusterItem : collectionSearch) {
                                Double existingDistance = distanceToCluster.get(clusterItem);
                                int discreteZoom2 = discreteZoom;
                                try {
                                    zoomSpecificSpan = distance;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                                try {
                                    double distance2 = nonHierarchicalDistanceBasedAlgorithm.distanceSquared(clusterItem.getPoint(), candidate.getPoint());
                                    if (existingDistance == null) {
                                        distanceToCluster.put(clusterItem, Double.valueOf(distance2));
                                        cluster.add(((QuadItem) clusterItem).mClusterItem);
                                        itemToCluster.put(clusterItem, cluster);
                                        discreteZoom = discreteZoom2;
                                        distance = zoomSpecificSpan;
                                        nonHierarchicalDistanceBasedAlgorithm = this;
                                    } else if (existingDistance.doubleValue() < distance2) {
                                        discreteZoom = discreteZoom2;
                                        distance = zoomSpecificSpan;
                                    } else {
                                        itemToCluster.get(clusterItem).remove(((QuadItem) clusterItem).mClusterItem);
                                        distanceToCluster.put(clusterItem, Double.valueOf(distance2));
                                        cluster.add(((QuadItem) clusterItem).mClusterItem);
                                        itemToCluster.put(clusterItem, cluster);
                                        discreteZoom = discreteZoom2;
                                        distance = zoomSpecificSpan;
                                        nonHierarchicalDistanceBasedAlgorithm = this;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    throw th;
                                }
                            }
                            hashSet.addAll(collectionSearch);
                            it = it2;
                            discreteZoom = discreteZoom;
                            distance = distance;
                            nonHierarchicalDistanceBasedAlgorithm = this;
                        }
                    }
                }
                return hashSet2;
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    @Override // com.google.maps.android.clustering.algo.Algorithm
    public Collection<T> getItems() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.mQuadTree) {
            for (QuadItem<T> quadItem : this.mItems) {
                arrayList.add(((QuadItem) quadItem).mClusterItem);
            }
        }
        return arrayList;
    }

    private double distanceSquared(Point a, Point b) {
        return ((a.x - b.x) * (a.x - b.x)) + ((a.y - b.y) * (a.y - b.y));
    }

    private Bounds createBoundsFromSpan(Point p, double span) {
        double halfSpan = span / 2.0d;
        return new Bounds(p.x - halfSpan, p.x + halfSpan, p.y - halfSpan, p.y + halfSpan);
    }

    private static class QuadItem<T extends ClusterItem> implements PointQuadTree.Item, Cluster<T> {
        private final T mClusterItem;
        private final Point mPoint;
        private final LatLng mPosition;
        private Set<T> singletonSet;

        private QuadItem(T item) {
            this.mClusterItem = item;
            this.mPosition = item.getPosition();
            this.mPoint = NonHierarchicalDistanceBasedAlgorithm.PROJECTION.toPoint(this.mPosition);
            this.singletonSet = Collections.singleton(this.mClusterItem);
        }

        @Override // com.google.maps.android.quadtree.PointQuadTree.Item
        public Point getPoint() {
            return this.mPoint;
        }

        @Override // com.google.maps.android.clustering.Cluster
        public LatLng getPosition() {
            return this.mPosition;
        }

        @Override // com.google.maps.android.clustering.Cluster
        public Set<T> getItems() {
            return this.singletonSet;
        }

        @Override // com.google.maps.android.clustering.Cluster
        public int getSize() {
            return 1;
        }

        public int hashCode() {
            return this.mClusterItem.hashCode();
        }

        public boolean equals(Object other) {
            if (!(other instanceof QuadItem)) {
                return false;
            }
            return ((QuadItem) other).mClusterItem.equals(this.mClusterItem);
        }
    }
}
