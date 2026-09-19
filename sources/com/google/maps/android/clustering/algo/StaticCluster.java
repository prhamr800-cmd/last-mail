package com.google.maps.android.clustering.algo;

import com.google.android.gms.maps.model.LatLng;
import com.google.maps.android.clustering.Cluster;
import com.google.maps.android.clustering.ClusterItem;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class StaticCluster<T extends ClusterItem> implements Cluster<T> {
    private final LatLng mCenter;
    private final List<T> mItems = new ArrayList();

    public StaticCluster(LatLng center) {
        this.mCenter = center;
    }

    public boolean add(T t) {
        return this.mItems.add(t);
    }

    @Override // com.google.maps.android.clustering.Cluster
    public LatLng getPosition() {
        return this.mCenter;
    }

    public boolean remove(T t) {
        return this.mItems.remove(t);
    }

    @Override // com.google.maps.android.clustering.Cluster
    public Collection<T> getItems() {
        return this.mItems;
    }

    @Override // com.google.maps.android.clustering.Cluster
    public int getSize() {
        return this.mItems.size();
    }

    public String toString() {
        String strValueOf = String.valueOf("StaticCluster{mCenter=");
        String strValueOf2 = String.valueOf(this.mCenter);
        int size = this.mItems.size();
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 26 + String.valueOf(strValueOf2).length());
        sb.append(strValueOf);
        sb.append(strValueOf2);
        sb.append(", mItems.size=");
        sb.append(size);
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return this.mCenter.hashCode() + this.mItems.hashCode();
    }

    public boolean equals(Object other) {
        return (other instanceof StaticCluster) && ((StaticCluster) other).mCenter.equals(this.mCenter) && ((StaticCluster) other).mItems.equals(this.mItems);
    }
}
