package com.google.maps.android.clustering.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.util.SparseArray;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.Projection;
import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.maps.android.MarkerManager;
import com.google.maps.android.R;
import com.google.maps.android.clustering.Cluster;
import com.google.maps.android.clustering.ClusterItem;
import com.google.maps.android.clustering.ClusterManager;
import com.google.maps.android.geometry.Point;
import com.google.maps.android.projection.SphericalMercatorProjection;
import com.google.maps.android.ui.IconGenerator;
import com.google.maps.android.ui.SquareTextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultClusterRenderer<T extends ClusterItem> implements ClusterRenderer<T> {
    private static final TimeInterpolator ANIMATION_INTERP;
    private static final int[] BUCKETS;
    private static final int MIN_CLUSTER_SIZE = 4;
    private static final boolean SHOULD_ANIMATE;
    private ClusterManager.OnClusterClickListener<T> mClickListener;
    private final ClusterManager<T> mClusterManager;
    private Set<? extends Cluster<T>> mClusters;
    private ShapeDrawable mColoredCircleBackground;
    private final float mDensity;
    private final IconGenerator mIconGenerator;
    private ClusterManager.OnClusterInfoWindowClickListener<T> mInfoWindowClickListener;
    private ClusterManager.OnClusterItemClickListener<T> mItemClickListener;
    private ClusterManager.OnClusterItemInfoWindowClickListener<T> mItemInfoWindowClickListener;
    private final GoogleMap mMap;
    private MarkerCache<T> mMarkerCache;
    private final DefaultClusterRenderer<T>.ViewModifier mViewModifier;
    private float mZoom;
    private Set<MarkerWithPosition> mMarkers = Collections.newSetFromMap(new ConcurrentHashMap());
    private SparseArray<BitmapDescriptor> mIcons = new SparseArray<>();
    private Map<Marker, Cluster<T>> mMarkerToCluster = new HashMap();
    private Map<Cluster<T>, Marker> mClusterToMarker = new HashMap();

    static {
        SHOULD_ANIMATE = Build.VERSION.SDK_INT >= 11;
        BUCKETS = new int[]{10, 20, 50, 100, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, 500, 1000};
        ANIMATION_INTERP = new DecelerateInterpolator();
    }

    public DefaultClusterRenderer(Context context, GoogleMap map, ClusterManager<T> clusterManager) {
        this.mMarkerCache = new MarkerCache<>();
        this.mViewModifier = new ViewModifier();
        this.mMap = map;
        this.mDensity = context.getResources().getDisplayMetrics().density;
        this.mIconGenerator = new IconGenerator(context);
        this.mIconGenerator.setContentView(makeSquareTextView(context));
        this.mIconGenerator.setTextAppearance(R.style.ClusterIcon_TextAppearance);
        this.mIconGenerator.setBackground(makeClusterBackground());
        this.mClusterManager = clusterManager;
    }

    @Override // com.google.maps.android.clustering.view.ClusterRenderer
    public void onAdd() {
        this.mClusterManager.getMarkerCollection().setOnMarkerClickListener(new GoogleMap.OnMarkerClickListener() { // from class: com.google.maps.android.clustering.view.DefaultClusterRenderer.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.maps.GoogleMap.OnMarkerClickListener
            public boolean onMarkerClick(Marker marker) {
                return DefaultClusterRenderer.this.mItemClickListener != null && DefaultClusterRenderer.this.mItemClickListener.onClusterItemClick((ClusterItem) DefaultClusterRenderer.this.mMarkerCache.get(marker));
            }
        });
        this.mClusterManager.getMarkerCollection().setOnInfoWindowClickListener(new GoogleMap.OnInfoWindowClickListener() { // from class: com.google.maps.android.clustering.view.DefaultClusterRenderer.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener
            public void onInfoWindowClick(Marker marker) {
                if (DefaultClusterRenderer.this.mItemInfoWindowClickListener != null) {
                    DefaultClusterRenderer.this.mItemInfoWindowClickListener.onClusterItemInfoWindowClick((ClusterItem) DefaultClusterRenderer.this.mMarkerCache.get(marker));
                }
            }
        });
        this.mClusterManager.getClusterMarkerCollection().setOnMarkerClickListener(new GoogleMap.OnMarkerClickListener() { // from class: com.google.maps.android.clustering.view.DefaultClusterRenderer.3
            @Override // com.google.android.gms.maps.GoogleMap.OnMarkerClickListener
            public boolean onMarkerClick(Marker marker) {
                return DefaultClusterRenderer.this.mClickListener != null && DefaultClusterRenderer.this.mClickListener.onClusterClick((Cluster) DefaultClusterRenderer.this.mMarkerToCluster.get(marker));
            }
        });
        this.mClusterManager.getClusterMarkerCollection().setOnInfoWindowClickListener(new GoogleMap.OnInfoWindowClickListener() { // from class: com.google.maps.android.clustering.view.DefaultClusterRenderer.4
            @Override // com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener
            public void onInfoWindowClick(Marker marker) {
                if (DefaultClusterRenderer.this.mInfoWindowClickListener != null) {
                    DefaultClusterRenderer.this.mInfoWindowClickListener.onClusterInfoWindowClick((Cluster) DefaultClusterRenderer.this.mMarkerToCluster.get(marker));
                }
            }
        });
    }

    @Override // com.google.maps.android.clustering.view.ClusterRenderer
    public void onRemove() {
        this.mClusterManager.getMarkerCollection().setOnMarkerClickListener(null);
        this.mClusterManager.getClusterMarkerCollection().setOnMarkerClickListener(null);
    }

    private LayerDrawable makeClusterBackground() {
        this.mColoredCircleBackground = new ShapeDrawable(new OvalShape());
        ShapeDrawable outline = new ShapeDrawable(new OvalShape());
        outline.getPaint().setColor(-2130706433);
        LayerDrawable background = new LayerDrawable(new Drawable[]{outline, this.mColoredCircleBackground});
        int strokeWidth = (int) (this.mDensity * 3.0f);
        background.setLayerInset(1, strokeWidth, strokeWidth, strokeWidth, strokeWidth);
        return background;
    }

    private SquareTextView makeSquareTextView(Context context) {
        SquareTextView squareTextView = new SquareTextView(context);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
        squareTextView.setLayoutParams(layoutParams);
        squareTextView.setId(R.id.text);
        int twelveDpi = (int) (this.mDensity * 12.0f);
        squareTextView.setPadding(twelveDpi, twelveDpi, twelveDpi, twelveDpi);
        return squareTextView;
    }

    protected int getColor(int clusterSize) {
        float size = Math.min(clusterSize, 300.0f);
        float hue = (((300.0f - size) * (300.0f - size)) / 90000.0f) * 220.0f;
        return Color.HSVToColor(new float[]{hue, 1.0f, 0.6f});
    }

    protected String getClusterText(int bucket) {
        if (bucket < BUCKETS[0]) {
            return String.valueOf(bucket);
        }
        return String.valueOf(String.valueOf(bucket)).concat("+");
    }

    protected int getBucket(Cluster<T> cluster) {
        int size = cluster.getSize();
        int i = 0;
        if (size <= BUCKETS[0]) {
            return size;
        }
        while (true) {
            int i2 = i;
            if (i2 < BUCKETS.length - 1) {
                if (size >= BUCKETS[i2 + 1]) {
                    i = i2 + 1;
                } else {
                    return BUCKETS[i2];
                }
            } else {
                return BUCKETS[BUCKETS.length - 1];
            }
        }
    }

    @SuppressLint({"HandlerLeak"})
    private class ViewModifier extends Handler {
        private static final int RUN_TASK = 0;
        private static final int TASK_FINISHED = 1;
        private DefaultClusterRenderer<T>.RenderTask mNextClusters;
        private boolean mViewModificationInProgress;

        private ViewModifier() {
            this.mViewModificationInProgress = false;
            this.mNextClusters = null;
        }

        /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:26:0x0059
            	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1182)
            	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
            	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
            */
        @Override // android.os.Handler
        public void handleMessage(android.os.Message r5) {
            /*
                r4 = this;
                int r0 = r5.what
                r1 = 1
                r2 = 0
                if (r0 != r1) goto L10
                r4.mViewModificationInProgress = r2
                com.google.maps.android.clustering.view.DefaultClusterRenderer<T>$RenderTask r0 = r4.mNextClusters
                if (r0 == 0) goto Lf
                r4.sendEmptyMessage(r2)
            Lf:
                return
            L10:
                r4.removeMessages(r2)
                boolean r0 = r4.mViewModificationInProgress
                if (r0 == 0) goto L18
                return
            L18:
                com.google.maps.android.clustering.view.DefaultClusterRenderer<T>$RenderTask r0 = r4.mNextClusters
                if (r0 != 0) goto L1d
                return
            L1d:
                com.google.maps.android.clustering.view.DefaultClusterRenderer r0 = com.google.maps.android.clustering.view.DefaultClusterRenderer.this
                com.google.android.gms.maps.GoogleMap r0 = com.google.maps.android.clustering.view.DefaultClusterRenderer.access$800(r0)
                com.google.android.gms.maps.Projection r0 = r0.getProjection()
                if (r0 != 0) goto L2a
                return
            L2a:
                monitor-enter(r4)
                r2 = 0
                com.google.maps.android.clustering.view.DefaultClusterRenderer<T>$RenderTask r3 = r4.mNextClusters     // Catch: java.lang.Throwable -> L59
                r4.mNextClusters = r2     // Catch: java.lang.Throwable -> L56
                r4.mViewModificationInProgress = r1     // Catch: java.lang.Throwable -> L56
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L56
                com.google.maps.android.clustering.view.DefaultClusterRenderer$ViewModifier$1 r1 = new com.google.maps.android.clustering.view.DefaultClusterRenderer$ViewModifier$1
                r1.<init>()
                r3.setCallback(r1)
                r3.setProjection(r0)
                com.google.maps.android.clustering.view.DefaultClusterRenderer r1 = com.google.maps.android.clustering.view.DefaultClusterRenderer.this
                com.google.android.gms.maps.GoogleMap r1 = com.google.maps.android.clustering.view.DefaultClusterRenderer.access$800(r1)
                com.google.android.gms.maps.model.CameraPosition r1 = r1.getCameraPosition()
                float r1 = r1.zoom
                r3.setMapZoom(r1)
                java.lang.Thread r1 = new java.lang.Thread
                r1.<init>(r3)
                r1.start()
                return
            L56:
                r1 = move-exception
                r2 = r3
                goto L5a
            L59:
                r1 = move-exception
            L5a:
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L59
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.maps.android.clustering.view.DefaultClusterRenderer.ViewModifier.handleMessage(android.os.Message):void");
        }

        public void queue(Set<? extends Cluster<T>> clusters) {
            synchronized (this) {
                this.mNextClusters = new RenderTask(clusters);
            }
            sendEmptyMessage(0);
        }
    }

    protected boolean shouldRenderAsCluster(Cluster<T> cluster) {
        return cluster.getSize() > 4;
    }

    private class RenderTask implements Runnable {
        final Set<? extends Cluster<T>> clusters;
        private Runnable mCallback;
        private float mMapZoom;
        private Projection mProjection;
        private SphericalMercatorProjection mSphericalMercatorProjection;

        private RenderTask(Set<? extends Cluster<T>> clusters) {
            this.clusters = clusters;
        }

        public void setCallback(Runnable callback) {
            this.mCallback = callback;
        }

        public void setProjection(Projection projection) {
            this.mProjection = projection;
        }

        public void setMapZoom(float zoom) {
            this.mMapZoom = zoom;
            this.mSphericalMercatorProjection = new SphericalMercatorProjection(Math.pow(2.0d, Math.min(zoom, DefaultClusterRenderer.this.mZoom)) * 256.0d);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        @SuppressLint({"NewApi"})
        public void run() {
            List<Point> list;
            Iterator<? extends Cluster<T>> it;
            LatLng latLng;
            if (this.clusters.equals(DefaultClusterRenderer.this.mClusters)) {
                this.mCallback.run();
                return;
            }
            LatLng latLng2 = null;
            MarkerModifier markerModifier = new MarkerModifier();
            float f = this.mMapZoom;
            boolean z = f > DefaultClusterRenderer.this.mZoom;
            float f2 = f - DefaultClusterRenderer.this.mZoom;
            Set<MarkerWithPosition> set = DefaultClusterRenderer.this.mMarkers;
            LatLngBounds latLngBounds = this.mProjection.getVisibleRegion().latLngBounds;
            List<Point> arrayList = null;
            if (DefaultClusterRenderer.this.mClusters != null && DefaultClusterRenderer.SHOULD_ANIMATE) {
                arrayList = new ArrayList();
                for (Cluster<T> cluster : DefaultClusterRenderer.this.mClusters) {
                    if (DefaultClusterRenderer.this.shouldRenderAsCluster(cluster) && latLngBounds.contains(cluster.getPosition())) {
                        arrayList.add(this.mSphericalMercatorProjection.toPoint(cluster.getPosition()));
                    }
                }
            }
            Set setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            Iterator<? extends Cluster<T>> it2 = this.clusters.iterator();
            while (it2.hasNext()) {
                Cluster<T> next = it2.next();
                boolean zContains = latLngBounds.contains(next.getPosition());
                if (z && zContains && DefaultClusterRenderer.SHOULD_ANIMATE) {
                    Point pointFindClosestCluster = DefaultClusterRenderer.findClosestCluster(arrayList, this.mSphericalMercatorProjection.toPoint(next.getPosition()));
                    if (pointFindClosestCluster != null) {
                        list = arrayList;
                        markerModifier.add(true, new CreateMarkerTask(next, setNewSetFromMap, this.mSphericalMercatorProjection.toLatLng(pointFindClosestCluster)));
                        it = it2;
                        latLng = null;
                    } else {
                        list = arrayList;
                        it = it2;
                        latLng = null;
                        markerModifier.add(true, new CreateMarkerTask(next, setNewSetFromMap, null));
                    }
                } else {
                    list = arrayList;
                    it = it2;
                    latLng = latLng2;
                    markerModifier.add(zContains, new CreateMarkerTask(next, setNewSetFromMap, latLng));
                }
                latLng2 = latLng;
                arrayList = list;
                it2 = it;
            }
            markerModifier.waitUntilFree();
            set.removeAll(setNewSetFromMap);
            List<Point> arrayList2 = null;
            if (DefaultClusterRenderer.SHOULD_ANIMATE) {
                arrayList2 = new ArrayList();
                for (Cluster<T> cluster2 : this.clusters) {
                    if (DefaultClusterRenderer.this.shouldRenderAsCluster(cluster2) && latLngBounds.contains(cluster2.getPosition())) {
                        arrayList2.add(this.mSphericalMercatorProjection.toPoint(cluster2.getPosition()));
                    }
                }
            }
            for (MarkerWithPosition markerWithPosition : set) {
                boolean zContains2 = latLngBounds.contains(markerWithPosition.position);
                if (!z && f2 > -3.0f && zContains2 && DefaultClusterRenderer.SHOULD_ANIMATE) {
                    Point pointFindClosestCluster2 = DefaultClusterRenderer.findClosestCluster(arrayList2, this.mSphericalMercatorProjection.toPoint(markerWithPosition.position));
                    if (pointFindClosestCluster2 != null) {
                        markerModifier.animateThenRemove(markerWithPosition, markerWithPosition.position, this.mSphericalMercatorProjection.toLatLng(pointFindClosestCluster2));
                    } else {
                        markerModifier.remove(true, markerWithPosition.marker);
                    }
                } else {
                    markerModifier.remove(zContains2, markerWithPosition.marker);
                }
            }
            markerModifier.waitUntilFree();
            DefaultClusterRenderer.this.mMarkers = setNewSetFromMap;
            DefaultClusterRenderer.this.mClusters = this.clusters;
            DefaultClusterRenderer.this.mZoom = f;
            this.mCallback.run();
        }
    }

    @Override // com.google.maps.android.clustering.view.ClusterRenderer
    public void onClustersChanged(Set<? extends Cluster<T>> clusters) {
        this.mViewModifier.queue(clusters);
    }

    @Override // com.google.maps.android.clustering.view.ClusterRenderer
    public void setOnClusterClickListener(ClusterManager.OnClusterClickListener<T> listener) {
        this.mClickListener = listener;
    }

    @Override // com.google.maps.android.clustering.view.ClusterRenderer
    public void setOnClusterInfoWindowClickListener(ClusterManager.OnClusterInfoWindowClickListener<T> listener) {
        this.mInfoWindowClickListener = listener;
    }

    @Override // com.google.maps.android.clustering.view.ClusterRenderer
    public void setOnClusterItemClickListener(ClusterManager.OnClusterItemClickListener<T> listener) {
        this.mItemClickListener = listener;
    }

    @Override // com.google.maps.android.clustering.view.ClusterRenderer
    public void setOnClusterItemInfoWindowClickListener(ClusterManager.OnClusterItemInfoWindowClickListener<T> listener) {
        this.mItemInfoWindowClickListener = listener;
    }

    private static double distanceSquared(Point a, Point b) {
        return ((a.x - b.x) * (a.x - b.x)) + ((a.y - b.y) * (a.y - b.y));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Point findClosestCluster(List<Point> markers, Point point) {
        if (markers == null || markers.isEmpty()) {
            return null;
        }
        double minDistSquared = 10000.0d;
        Point closest = null;
        for (Point candidate : markers) {
            double dist = distanceSquared(candidate, point);
            if (dist < minDistSquared) {
                closest = candidate;
                minDistSquared = dist;
            }
        }
        return closest;
    }

    @SuppressLint({"HandlerLeak"})
    private class MarkerModifier extends Handler implements MessageQueue.IdleHandler {
        private static final int BLANK = 0;
        private final Condition busyCondition;
        private final Lock lock;
        private Queue<DefaultClusterRenderer<T>.AnimationTask> mAnimationTasks;
        private Queue<DefaultClusterRenderer<T>.CreateMarkerTask> mCreateMarkerTasks;
        private boolean mListenerAdded;
        private Queue<DefaultClusterRenderer<T>.CreateMarkerTask> mOnScreenCreateMarkerTasks;
        private Queue<Marker> mOnScreenRemoveMarkerTasks;
        private Queue<Marker> mRemoveMarkerTasks;

        private MarkerModifier() {
            super(Looper.getMainLooper());
            this.lock = new ReentrantLock();
            this.busyCondition = this.lock.newCondition();
            this.mCreateMarkerTasks = new LinkedList();
            this.mOnScreenCreateMarkerTasks = new LinkedList();
            this.mRemoveMarkerTasks = new LinkedList();
            this.mOnScreenRemoveMarkerTasks = new LinkedList();
            this.mAnimationTasks = new LinkedList();
        }

        public void add(boolean priority, DefaultClusterRenderer<T>.CreateMarkerTask c) {
            this.lock.lock();
            sendEmptyMessage(0);
            if (priority) {
                this.mOnScreenCreateMarkerTasks.add(c);
            } else {
                this.mCreateMarkerTasks.add(c);
            }
            this.lock.unlock();
        }

        public void remove(boolean priority, Marker m) {
            this.lock.lock();
            sendEmptyMessage(0);
            if (priority) {
                this.mOnScreenRemoveMarkerTasks.add(m);
            } else {
                this.mRemoveMarkerTasks.add(m);
            }
            this.lock.unlock();
        }

        public void animate(MarkerWithPosition marker, LatLng from, LatLng to) {
            this.lock.lock();
            this.mAnimationTasks.add(new AnimationTask(marker, from, to));
            this.lock.unlock();
        }

        public void animateThenRemove(MarkerWithPosition marker, LatLng from, LatLng to) {
            this.lock.lock();
            DefaultClusterRenderer<T>.AnimationTask animationTask = new AnimationTask(marker, from, to);
            animationTask.removeOnAnimationComplete(DefaultClusterRenderer.this.mClusterManager.getMarkerManager());
            this.mAnimationTasks.add(animationTask);
            this.lock.unlock();
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (!this.mListenerAdded) {
                Looper.myQueue().addIdleHandler(this);
                this.mListenerAdded = true;
            }
            removeMessages(0);
            this.lock.lock();
            for (int i = 0; i < 10; i++) {
                try {
                    performNextTask();
                } catch (Throwable th) {
                    this.lock.unlock();
                    throw th;
                }
            }
            if (isBusy()) {
                sendEmptyMessageDelayed(0, 10L);
            } else {
                this.mListenerAdded = false;
                Looper.myQueue().removeIdleHandler(this);
                this.busyCondition.signalAll();
            }
            this.lock.unlock();
        }

        private void performNextTask() {
            if (!this.mOnScreenRemoveMarkerTasks.isEmpty()) {
                removeMarker(this.mOnScreenRemoveMarkerTasks.poll());
                return;
            }
            if (!this.mAnimationTasks.isEmpty()) {
                this.mAnimationTasks.poll().perform();
                return;
            }
            if (this.mOnScreenCreateMarkerTasks.isEmpty()) {
                if (this.mCreateMarkerTasks.isEmpty()) {
                    if (!this.mRemoveMarkerTasks.isEmpty()) {
                        removeMarker(this.mRemoveMarkerTasks.poll());
                        return;
                    }
                    return;
                }
                this.mCreateMarkerTasks.poll().perform(this);
                return;
            }
            this.mOnScreenCreateMarkerTasks.poll().perform(this);
        }

        private void removeMarker(Marker m) {
            Cluster<T> cluster = (Cluster) DefaultClusterRenderer.this.mMarkerToCluster.get(m);
            DefaultClusterRenderer.this.mClusterToMarker.remove(cluster);
            DefaultClusterRenderer.this.mMarkerCache.remove(m);
            DefaultClusterRenderer.this.mMarkerToCluster.remove(m);
            DefaultClusterRenderer.this.mClusterManager.getMarkerManager().remove(m);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean isBusy() {
            /*
                r2 = this;
                java.util.concurrent.locks.Lock r0 = r2.lock     // Catch: java.lang.Throwable -> L37
                r0.lock()     // Catch: java.lang.Throwable -> L37
                java.util.Queue<com.google.maps.android.clustering.view.DefaultClusterRenderer<T>$CreateMarkerTask> r0 = r2.mCreateMarkerTasks     // Catch: java.lang.Throwable -> L37
                boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L37
                if (r0 == 0) goto L30
                java.util.Queue<com.google.maps.android.clustering.view.DefaultClusterRenderer<T>$CreateMarkerTask> r0 = r2.mOnScreenCreateMarkerTasks     // Catch: java.lang.Throwable -> L37
                boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L37
                if (r0 == 0) goto L30
                java.util.Queue<com.google.android.gms.maps.model.Marker> r0 = r2.mOnScreenRemoveMarkerTasks     // Catch: java.lang.Throwable -> L37
                boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L37
                if (r0 == 0) goto L30
                java.util.Queue<com.google.android.gms.maps.model.Marker> r0 = r2.mRemoveMarkerTasks     // Catch: java.lang.Throwable -> L37
                boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L37
                if (r0 == 0) goto L30
                java.util.Queue<com.google.maps.android.clustering.view.DefaultClusterRenderer<T>$AnimationTask> r0 = r2.mAnimationTasks     // Catch: java.lang.Throwable -> L37
                boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L37
                if (r0 != 0) goto L2e
                goto L30
            L2e:
                r0 = 0
                goto L31
            L30:
                r0 = 1
            L31:
                java.util.concurrent.locks.Lock r1 = r2.lock
                r1.unlock()
                return r0
            L37:
                r0 = move-exception
                java.util.concurrent.locks.Lock r1 = r2.lock
                r1.unlock()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.maps.android.clustering.view.DefaultClusterRenderer.MarkerModifier.isBusy():boolean");
        }

        public void waitUntilFree() {
            while (isBusy()) {
                sendEmptyMessage(0);
                this.lock.lock();
                try {
                    try {
                        if (isBusy()) {
                            this.busyCondition.await();
                        }
                    } catch (InterruptedException e) {
                        throw new RuntimeException(e);
                    }
                } finally {
                    this.lock.unlock();
                }
            }
        }

        @Override // android.os.MessageQueue.IdleHandler
        public boolean queueIdle() {
            sendEmptyMessage(0);
            return true;
        }
    }

    private static class MarkerCache<T> {
        private Map<T, Marker> mCache;
        private Map<Marker, T> mCacheReverse;

        private MarkerCache() {
            this.mCache = new HashMap();
            this.mCacheReverse = new HashMap();
        }

        public Marker get(T item) {
            return this.mCache.get(item);
        }

        public T get(Marker m) {
            return this.mCacheReverse.get(m);
        }

        public void put(T item, Marker m) {
            this.mCache.put(item, m);
            this.mCacheReverse.put(m, item);
        }

        public void remove(Marker m) {
            T item = this.mCacheReverse.get(m);
            this.mCacheReverse.remove(m);
            this.mCache.remove(item);
        }
    }

    protected void onBeforeClusterItemRendered(T item, MarkerOptions markerOptions) {
    }

    protected void onBeforeClusterRendered(Cluster<T> cluster, MarkerOptions markerOptions) {
        int bucket = getBucket(cluster);
        BitmapDescriptor descriptor = this.mIcons.get(bucket);
        if (descriptor == null) {
            this.mColoredCircleBackground.getPaint().setColor(getColor(bucket));
            descriptor = BitmapDescriptorFactory.fromBitmap(this.mIconGenerator.makeIcon(getClusterText(bucket)));
            this.mIcons.put(bucket, descriptor);
        }
        markerOptions.icon(descriptor);
    }

    protected void onClusterRendered(Cluster<T> cluster, Marker marker) {
    }

    protected void onClusterItemRendered(T clusterItem, Marker marker) {
    }

    public Marker getMarker(T clusterItem) {
        return this.mMarkerCache.get(clusterItem);
    }

    public T getClusterItem(Marker marker) {
        return this.mMarkerCache.get(marker);
    }

    public Marker getMarker(Cluster<T> cluster) {
        return this.mClusterToMarker.get(cluster);
    }

    public Cluster<T> getCluster(Marker marker) {
        return this.mMarkerToCluster.get(marker);
    }

    private class CreateMarkerTask {
        private final LatLng animateFrom;
        private final Cluster<T> cluster;
        private final Set<MarkerWithPosition> newMarkers;

        public CreateMarkerTask(Cluster<T> c, Set<MarkerWithPosition> markersAdded, LatLng animateFrom) {
            this.cluster = c;
            this.newMarkers = markersAdded;
            this.animateFrom = animateFrom;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void perform(DefaultClusterRenderer<T>.MarkerModifier markerModifier) {
            MarkerWithPosition markerWithPosition;
            if (!DefaultClusterRenderer.this.shouldRenderAsCluster(this.cluster)) {
                for (T item : this.cluster.getItems()) {
                    Marker marker = DefaultClusterRenderer.this.mMarkerCache.get(item);
                    if (marker == null) {
                        MarkerOptions markerOptions = new MarkerOptions();
                        if (this.animateFrom != null) {
                            markerOptions.position(this.animateFrom);
                        } else {
                            markerOptions.position(item.getPosition());
                        }
                        DefaultClusterRenderer.this.onBeforeClusterItemRendered(item, markerOptions);
                        marker = DefaultClusterRenderer.this.mClusterManager.getMarkerCollection().addMarker(markerOptions);
                        markerWithPosition = new MarkerWithPosition(marker);
                        DefaultClusterRenderer.this.mMarkerCache.put(item, marker);
                        if (this.animateFrom != null) {
                            markerModifier.animate(markerWithPosition, this.animateFrom, item.getPosition());
                        }
                    } else {
                        markerWithPosition = new MarkerWithPosition(marker);
                    }
                    DefaultClusterRenderer.this.onClusterItemRendered(item, marker);
                    this.newMarkers.add(markerWithPosition);
                }
                return;
            }
            MarkerOptions markerOptions2 = new MarkerOptions().position(this.animateFrom == null ? this.cluster.getPosition() : this.animateFrom);
            DefaultClusterRenderer.this.onBeforeClusterRendered(this.cluster, markerOptions2);
            Marker marker2 = DefaultClusterRenderer.this.mClusterManager.getClusterMarkerCollection().addMarker(markerOptions2);
            DefaultClusterRenderer.this.mMarkerToCluster.put(marker2, this.cluster);
            DefaultClusterRenderer.this.mClusterToMarker.put(this.cluster, marker2);
            MarkerWithPosition markerWithPosition2 = new MarkerWithPosition(marker2);
            if (this.animateFrom != null) {
                markerModifier.animate(markerWithPosition2, this.animateFrom, this.cluster.getPosition());
            }
            DefaultClusterRenderer.this.onClusterRendered(this.cluster, marker2);
            this.newMarkers.add(markerWithPosition2);
        }
    }

    private static class MarkerWithPosition {
        private final Marker marker;
        private LatLng position;

        private MarkerWithPosition(Marker marker) {
            this.marker = marker;
            this.position = marker.getPosition();
        }

        public boolean equals(Object other) {
            if (other instanceof MarkerWithPosition) {
                return this.marker.equals(((MarkerWithPosition) other).marker);
            }
            return false;
        }

        public int hashCode() {
            return this.marker.hashCode();
        }
    }

    @TargetApi(12)
    private class AnimationTask extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {
        private final LatLng from;
        private MarkerManager mMarkerManager;
        private boolean mRemoveOnComplete;
        private final Marker marker;
        private final MarkerWithPosition markerWithPosition;
        private final LatLng to;

        private AnimationTask(MarkerWithPosition markerWithPosition, LatLng from, LatLng to) {
            this.markerWithPosition = markerWithPosition;
            this.marker = markerWithPosition.marker;
            this.from = from;
            this.to = to;
        }

        public void perform() {
            ValueAnimator valueAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimator.setInterpolator(DefaultClusterRenderer.ANIMATION_INTERP);
            valueAnimator.addUpdateListener(this);
            valueAnimator.addListener(this);
            valueAnimator.start();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            if (this.mRemoveOnComplete) {
                Cluster<T> cluster = (Cluster) DefaultClusterRenderer.this.mMarkerToCluster.get(this.marker);
                DefaultClusterRenderer.this.mClusterToMarker.remove(cluster);
                DefaultClusterRenderer.this.mMarkerCache.remove(this.marker);
                DefaultClusterRenderer.this.mMarkerToCluster.remove(this.marker);
                this.mMarkerManager.remove(this.marker);
            }
            this.markerWithPosition.position = this.to;
        }

        public void removeOnAnimationComplete(MarkerManager markerManager) {
            this.mMarkerManager = markerManager;
            this.mRemoveOnComplete = true;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fraction = valueAnimator.getAnimatedFraction();
            double d = this.to.latitude - this.from.latitude;
            double d2 = fraction;
            Double.isNaN(d2);
            double lat = (d * d2) + this.from.latitude;
            double lngDelta = this.to.longitude - this.from.longitude;
            if (Math.abs(lngDelta) > 180.0d) {
                lngDelta -= Math.signum(lngDelta) * 360.0d;
            }
            double d3 = fraction;
            Double.isNaN(d3);
            double lng = (d3 * lngDelta) + this.from.longitude;
            LatLng position = new LatLng(lat, lng);
            this.marker.setPosition(position);
        }
    }
}
