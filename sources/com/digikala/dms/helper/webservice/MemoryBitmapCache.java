package com.digikala.dms.helper.webservice;

import android.graphics.Bitmap;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.util.LruCache;
import com.android.volley.toolbox.ImageLoader;

/* JADX INFO: loaded from: classes2.dex */
public class MemoryBitmapCache extends LruCache<String, Bitmap> implements ImageLoader.ImageCache {
    public static int getDefaultLruCacheSize() {
        int maxMemory = (int) (Runtime.getRuntime().maxMemory() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID);
        int cacheSize = maxMemory / 4;
        return cacheSize;
    }

    public MemoryBitmapCache() {
        this(getDefaultLruCacheSize());
    }

    public MemoryBitmapCache(int sizeInKiloBytes) {
        super(sizeInKiloBytes);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.util.LruCache
    public int sizeOf(String key, Bitmap value) {
        return (value.getRowBytes() * value.getHeight()) / 1024;
    }

    @Override // com.android.volley.toolbox.ImageLoader.ImageCache
    public Bitmap getBitmap(String url) {
        return get(url);
    }

    @Override // com.android.volley.toolbox.ImageLoader.ImageCache
    public void putBitmap(String url, Bitmap bitmap) {
        put(url, bitmap);
    }
}
