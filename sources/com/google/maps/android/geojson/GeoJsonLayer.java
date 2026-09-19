package com.google.maps.android.geojson;

import android.content.Context;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.LatLngBounds;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class GeoJsonLayer {
    private LatLngBounds mBoundingBox;
    private final GeoJsonRenderer mRenderer;

    public GeoJsonLayer(GoogleMap map, JSONObject geoJsonFile) {
        if (geoJsonFile == null) {
            throw new IllegalArgumentException("GeoJSON file cannot be null");
        }
        this.mBoundingBox = null;
        GeoJsonParser parser = new GeoJsonParser(geoJsonFile);
        this.mBoundingBox = parser.getBoundingBox();
        HashMap<GeoJsonFeature, Object> geoJsonFeatures = new HashMap<>();
        for (GeoJsonFeature feature : parser.getFeatures()) {
            geoJsonFeatures.put(feature, null);
        }
        this.mRenderer = new GeoJsonRenderer(map, geoJsonFeatures);
    }

    public GeoJsonLayer(GoogleMap map, int resourceId, Context context) throws JSONException, IOException {
        this(map, createJsonFileObject(context.getResources().openRawResource(resourceId)));
    }

    private static JSONObject createJsonFileObject(InputStream stream) throws JSONException, IOException {
        StringBuilder result = new StringBuilder();
        BufferedReader reader = new BufferedReader(new InputStreamReader(stream));
        while (true) {
            try {
                String line = reader.readLine();
                if (line != null) {
                    result.append(line);
                } else {
                    reader.close();
                    return new JSONObject(result.toString());
                }
            } catch (Throwable th) {
                reader.close();
                throw th;
            }
        }
    }

    public Iterable<GeoJsonFeature> getFeatures() {
        return this.mRenderer.getFeatures();
    }

    public void addLayerToMap() {
        this.mRenderer.addLayerToMap();
    }

    public void addFeature(GeoJsonFeature feature) {
        if (feature == null) {
            throw new IllegalArgumentException("Feature cannot be null");
        }
        this.mRenderer.addFeature(feature);
    }

    public void removeFeature(GeoJsonFeature feature) {
        if (feature == null) {
            throw new IllegalArgumentException("Feature cannot be null");
        }
        this.mRenderer.removeFeature(feature);
    }

    public GoogleMap getMap() {
        return this.mRenderer.getMap();
    }

    public void setMap(GoogleMap map) {
        this.mRenderer.setMap(map);
    }

    public void removeLayerFromMap() {
        this.mRenderer.removeLayerFromMap();
    }

    public boolean isLayerOnMap() {
        return this.mRenderer.isLayerOnMap();
    }

    public GeoJsonPointStyle getDefaultPointStyle() {
        return this.mRenderer.getDefaultPointStyle();
    }

    public GeoJsonLineStringStyle getDefaultLineStringStyle() {
        return this.mRenderer.getDefaultLineStringStyle();
    }

    public GeoJsonPolygonStyle getDefaultPolygonStyle() {
        return this.mRenderer.getDefaultPolygonStyle();
    }

    public LatLngBounds getBoundingBox() {
        return this.mBoundingBox;
    }

    public String toString() {
        return "Collection{\n Bounding box=" + this.mBoundingBox + "\n}\n";
    }
}
