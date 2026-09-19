package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzfz;
import com.google.android.gms.internal.measurement.zzga;
import com.google.android.gms.internal.measurement.zzgb;
import com.google.android.gms.internal.measurement.zzgc;
import com.google.android.gms.internal.measurement.zzgg;
import com.google.android.gms.internal.measurement.zzgh;
import com.google.android.gms.internal.measurement.zzgi;
import com.google.android.gms.internal.measurement.zzgj;
import com.google.android.gms.internal.measurement.zzgk;
import com.google.android.gms.internal.measurement.zzgl;
import com.google.android.gms.internal.measurement.zzgm;
import com.google.android.gms.internal.measurement.zzgn;
import com.google.android.gms.internal.measurement.zzgo;
import com.google.android.gms.internal.measurement.zzzj;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfq extends zzfj {
    zzfq(zzfk zzfkVar) {
        super(zzfkVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzfj
    protected final boolean zzgy() {
        return false;
    }

    final void zza(zzgo zzgoVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzgoVar.zzamw = null;
        zzgoVar.zzaxq = null;
        zzgoVar.zzava = null;
        if (obj instanceof String) {
            zzgoVar.zzamw = (String) obj;
            return;
        }
        if (obj instanceof Long) {
            zzgoVar.zzaxq = (Long) obj;
        } else if (obj instanceof Double) {
            zzgoVar.zzava = (Double) obj;
        } else {
            zzgt().zzjg().zzg("Ignoring invalid (type) user attribute value", obj);
        }
    }

    final void zza(zzgj zzgjVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzgjVar.zzamw = null;
        zzgjVar.zzaxq = null;
        zzgjVar.zzava = null;
        if (obj instanceof String) {
            zzgjVar.zzamw = (String) obj;
            return;
        }
        if (obj instanceof Long) {
            zzgjVar.zzaxq = (Long) obj;
        } else if (obj instanceof Double) {
            zzgjVar.zzava = (Double) obj;
        } else {
            zzgt().zzjg().zzg("Ignoring invalid (type) event param value", obj);
        }
    }

    final byte[] zza(zzgk zzgkVar) {
        try {
            byte[] bArr = new byte[zzgkVar.zzwe()];
            zzzj zzzjVarZzk = zzzj.zzk(bArr, 0, bArr.length);
            zzgkVar.zza(zzzjVarZzk);
            zzzjVarZzk.zzzh();
            return bArr;
        } catch (IOException e) {
            zzgt().zzjg().zzg("Data loss. Failed to serialize batch", e);
            return null;
        }
    }

    static zzgj zza(zzgi zzgiVar, String str) {
        for (zzgj zzgjVar : zzgiVar.zzaxm) {
            if (zzgjVar.name.equals(str)) {
                return zzgjVar;
            }
        }
        return null;
    }

    static Object zzb(zzgi zzgiVar, String str) {
        zzgj zzgjVarZza = zza(zzgiVar, str);
        if (zzgjVarZza != null) {
            if (zzgjVarZza.zzamw != null) {
                return zzgjVarZza.zzamw;
            }
            if (zzgjVarZza.zzaxq != null) {
                return zzgjVarZza.zzaxq;
            }
            if (zzgjVarZza.zzava != null) {
                return zzgjVarZza.zzava;
            }
            return null;
        }
        return null;
    }

    static zzgj[] zza(zzgj[] zzgjVarArr, String str, Object obj) {
        for (zzgj zzgjVar : zzgjVarArr) {
            if (str.equals(zzgjVar.name)) {
                zzgjVar.zzaxq = null;
                zzgjVar.zzamw = null;
                zzgjVar.zzava = null;
                if (obj instanceof Long) {
                    zzgjVar.zzaxq = (Long) obj;
                } else if (obj instanceof String) {
                    zzgjVar.zzamw = (String) obj;
                } else if (obj instanceof Double) {
                    zzgjVar.zzava = (Double) obj;
                }
                return zzgjVarArr;
            }
        }
        zzgj[] zzgjVarArr2 = new zzgj[zzgjVarArr.length + 1];
        System.arraycopy(zzgjVarArr, 0, zzgjVarArr2, 0, zzgjVarArr.length);
        zzgj zzgjVar2 = new zzgj();
        zzgjVar2.name = str;
        if (obj instanceof Long) {
            zzgjVar2.zzaxq = (Long) obj;
        } else if (obj instanceof String) {
            zzgjVar2.zzamw = (String) obj;
        } else if (obj instanceof Double) {
            zzgjVar2.zzava = (Double) obj;
        }
        zzgjVarArr2[zzgjVarArr.length] = zzgjVar2;
        return zzgjVarArr2;
    }

    final String zzb(zzgk zzgkVar) {
        int i;
        int i2;
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        if (zzgkVar.zzaxr != null) {
            for (zzgl zzglVar : zzgkVar.zzaxr) {
                if (zzglVar != null && zzglVar != null) {
                    zza(sb, 1);
                    sb.append("bundle {\n");
                    zza(sb, 1, "protocol_version", zzglVar.zzaxt);
                    zza(sb, 1, "platform", zzglVar.zzayb);
                    zza(sb, 1, "gmp_version", zzglVar.zzayf);
                    zza(sb, 1, "uploading_gmp_version", zzglVar.zzayg);
                    zza(sb, 1, "config_version", zzglVar.zzayr);
                    zza(sb, 1, "gmp_app_id", zzglVar.zzafx);
                    zza(sb, 1, "admob_app_id", zzglVar.zzaxc);
                    zza(sb, 1, "app_id", zzglVar.zztt);
                    zza(sb, 1, "app_version", zzglVar.zzts);
                    zza(sb, 1, "app_version_major", zzglVar.zzayn);
                    zza(sb, 1, "firebase_instance_id", zzglVar.zzafz);
                    zza(sb, 1, "dev_cert_hash", zzglVar.zzayj);
                    zza(sb, 1, "app_store", zzglVar.zzage);
                    zza(sb, 1, "upload_timestamp_millis", zzglVar.zzaxw);
                    zza(sb, 1, "start_timestamp_millis", zzglVar.zzaxx);
                    zza(sb, 1, "end_timestamp_millis", zzglVar.zzaxy);
                    zza(sb, 1, "previous_bundle_start_timestamp_millis", zzglVar.zzaxz);
                    zza(sb, 1, "previous_bundle_end_timestamp_millis", zzglVar.zzaya);
                    zza(sb, 1, "app_instance_id", zzglVar.zzafw);
                    zza(sb, 1, "resettable_device_id", zzglVar.zzayh);
                    zza(sb, 1, "device_id", zzglVar.zzayq);
                    zza(sb, 1, "ds_id", zzglVar.zzayt);
                    zza(sb, 1, "limited_ad_tracking", zzglVar.zzayi);
                    zza(sb, 1, "os_version", zzglVar.zzayc);
                    zza(sb, 1, "device_model", zzglVar.zzayd);
                    zza(sb, 1, "user_default_language", zzglVar.zzaid);
                    zza(sb, 1, "time_zone_offset_minutes", zzglVar.zzaye);
                    zza(sb, 1, "bundle_sequential_index", zzglVar.zzayk);
                    zza(sb, 1, "service_upload", zzglVar.zzayl);
                    zza(sb, 1, "health_monitor", zzglVar.zzagy);
                    if (zzglVar.zzays != null && zzglVar.zzays.longValue() != 0) {
                        zza(sb, 1, "android_id", zzglVar.zzays);
                    }
                    if (zzglVar.zzayv != null) {
                        zza(sb, 1, "retry_counter", zzglVar.zzayv);
                    }
                    zzgo[] zzgoVarArr = zzglVar.zzaxv;
                    if (zzgoVarArr != null) {
                        for (zzgo zzgoVar : zzgoVarArr) {
                            if (zzgoVar != null) {
                                zza(sb, 2);
                                sb.append("user_property {\n");
                                zza(sb, 2, "set_timestamp_millis", zzgoVar.zzazg);
                                zza(sb, 2, "name", zzgq().zzbx(zzgoVar.name));
                                zza(sb, 2, "string_value", zzgoVar.zzamw);
                                zza(sb, 2, "int_value", zzgoVar.zzaxq);
                                zza(sb, 2, "double_value", zzgoVar.zzava);
                                zza(sb, 2);
                                sb.append("}\n");
                            }
                        }
                    }
                    zzgg[] zzggVarArr = zzglVar.zzaym;
                    String str = zzglVar.zztt;
                    if (zzggVarArr != null) {
                        int length = zzggVarArr.length;
                        int i3 = 0;
                        while (i3 < length) {
                            zzgg zzggVar = zzggVarArr[i3];
                            if (zzggVar != null) {
                                zza(sb, 2);
                                sb.append("audience_membership {\n");
                                zza(sb, 2, "audience_id", zzggVar.zzavr);
                                zza(sb, 2, "new_audience", zzggVar.zzaxh);
                                i = i3;
                                i2 = length;
                                zza(sb, 2, "current_data", zzggVar.zzaxf, str);
                                zza(sb, 2, "previous_data", zzggVar.zzaxg, str);
                                zza(sb, 2);
                                sb.append("}\n");
                            } else {
                                i = i3;
                                i2 = length;
                            }
                            i3 = i + 1;
                            length = i2;
                        }
                    }
                    zzgi[] zzgiVarArr = zzglVar.zzaxu;
                    if (zzgiVarArr != null) {
                        for (zzgi zzgiVar : zzgiVarArr) {
                            if (zzgiVar != null) {
                                zza(sb, 2);
                                sb.append("event {\n");
                                zza(sb, 2, "name", zzgq().zzbv(zzgiVar.name));
                                zza(sb, 2, "timestamp_millis", zzgiVar.zzaxn);
                                zza(sb, 2, "previous_timestamp_millis", zzgiVar.zzaxo);
                                zza(sb, 2, "count", zzgiVar.count);
                                zzgj[] zzgjVarArr = zzgiVar.zzaxm;
                                if (zzgjVarArr != null) {
                                    for (zzgj zzgjVar : zzgjVarArr) {
                                        if (zzgjVar != null) {
                                            zza(sb, 3);
                                            sb.append("param {\n");
                                            zza(sb, 3, "name", zzgq().zzbw(zzgjVar.name));
                                            zza(sb, 3, "string_value", zzgjVar.zzamw);
                                            zza(sb, 3, "int_value", zzgjVar.zzaxq);
                                            zza(sb, 3, "double_value", zzgjVar.zzava);
                                            zza(sb, 3);
                                            sb.append("}\n");
                                        }
                                    }
                                }
                                zza(sb, 2);
                                sb.append("}\n");
                            }
                        }
                    }
                    zza(sb, 1);
                    sb.append("}\n");
                }
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    final String zza(zzfy zzfyVar) {
        if (zzfyVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        zza(sb, 0, "filter_id", zzfyVar.zzavx);
        zza(sb, 0, "event_name", zzgq().zzbv(zzfyVar.zzavy));
        zza(sb, 1, "event_count_filter", zzfyVar.zzawb);
        sb.append("  filters {\n");
        for (zzfz zzfzVar : zzfyVar.zzavz) {
            zza(sb, 2, zzfzVar);
        }
        zza(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    final String zza(zzgb zzgbVar) {
        if (zzgbVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        zza(sb, 0, "filter_id", zzgbVar.zzavx);
        zza(sb, 0, "property_name", zzgq().zzbx(zzgbVar.zzawn));
        zza(sb, 1, zzgbVar.zzawo);
        sb.append("}\n");
        return sb.toString();
    }

    private final void zza(StringBuilder sb, int i, String str, zzgm zzgmVar, String str2) {
        if (zzgmVar == null) {
            return;
        }
        zza(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (zzgmVar.zzaza != null) {
            zza(sb, 4);
            sb.append("results: ");
            long[] jArr = zzgmVar.zzaza;
            int length = jArr.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                Long lValueOf = Long.valueOf(jArr[i2]);
                int i4 = i3 + 1;
                if (i3 != 0) {
                    sb.append(", ");
                }
                sb.append(lValueOf);
                i2++;
                i3 = i4;
            }
            sb.append('\n');
        }
        if (zzgmVar.zzayz != null) {
            zza(sb, 4);
            sb.append("status: ");
            long[] jArr2 = zzgmVar.zzayz;
            int length2 = jArr2.length;
            int i5 = 0;
            int i6 = 0;
            while (i5 < length2) {
                Long lValueOf2 = Long.valueOf(jArr2[i5]);
                int i7 = i6 + 1;
                if (i6 != 0) {
                    sb.append(", ");
                }
                sb.append(lValueOf2);
                i5++;
                i6 = i7;
            }
            sb.append('\n');
        }
        if (zzgv().zzbd(str2)) {
            if (zzgmVar.zzazb != null) {
                zza(sb, 4);
                sb.append("dynamic_filter_timestamps: {");
                zzgh[] zzghVarArr = zzgmVar.zzazb;
                int length3 = zzghVarArr.length;
                int i8 = 0;
                int i9 = 0;
                while (i8 < length3) {
                    zzgh zzghVar = zzghVarArr[i8];
                    int i10 = i9 + 1;
                    if (i9 != 0) {
                        sb.append(", ");
                    }
                    sb.append(zzghVar.zzaxj);
                    sb.append(":");
                    sb.append(zzghVar.zzaxk);
                    i8++;
                    i9 = i10;
                }
                sb.append("}\n");
            }
            if (zzgmVar.zzazc != null) {
                zza(sb, 4);
                sb.append("sequence_filter_timestamps: {");
                zzgn[] zzgnVarArr = zzgmVar.zzazc;
                int length4 = zzgnVarArr.length;
                int i11 = 0;
                int i12 = 0;
                while (i11 < length4) {
                    zzgn zzgnVar = zzgnVarArr[i11];
                    int i13 = i12 + 1;
                    if (i12 != 0) {
                        sb.append(", ");
                    }
                    sb.append(zzgnVar.zzaxj);
                    sb.append(": [");
                    long[] jArr3 = zzgnVar.zzaze;
                    int length5 = jArr3.length;
                    int i14 = 0;
                    int i15 = 0;
                    while (i14 < length5) {
                        long j = jArr3[i14];
                        int i16 = i15 + 1;
                        if (i15 != 0) {
                            sb.append(", ");
                        }
                        sb.append(j);
                        i14++;
                        i15 = i16;
                    }
                    sb.append("]");
                    i11++;
                    i12 = i13;
                }
                sb.append("}\n");
            }
        }
        zza(sb, 3);
        sb.append("}\n");
    }

    private final void zza(StringBuilder sb, int i, String str, zzga zzgaVar) {
        if (zzgaVar == null) {
            return;
        }
        zza(sb, i);
        sb.append(str);
        sb.append(" {\n");
        if (zzgaVar.zzawh != null) {
            String str2 = "UNKNOWN_COMPARISON_TYPE";
            switch (zzgaVar.zzawh.intValue()) {
                case 1:
                    str2 = "LESS_THAN";
                    break;
                case 2:
                    str2 = "GREATER_THAN";
                    break;
                case 3:
                    str2 = "EQUAL";
                    break;
                case 4:
                    str2 = "BETWEEN";
                    break;
            }
            zza(sb, i, "comparison_type", str2);
        }
        zza(sb, i, "match_as_float", zzgaVar.zzawi);
        zza(sb, i, "comparison_value", zzgaVar.zzawj);
        zza(sb, i, "min_comparison_value", zzgaVar.zzawk);
        zza(sb, i, "max_comparison_value", zzgaVar.zzawl);
        zza(sb, i);
        sb.append("}\n");
    }

    private final void zza(StringBuilder sb, int i, zzfz zzfzVar) {
        if (zzfzVar == null) {
            return;
        }
        zza(sb, i);
        sb.append("filter {\n");
        zza(sb, i, "complement", zzfzVar.zzawf);
        zza(sb, i, "param_name", zzgq().zzbw(zzfzVar.zzawg));
        int i2 = i + 1;
        zzgc zzgcVar = zzfzVar.zzawd;
        if (zzgcVar != null) {
            zza(sb, i2);
            sb.append("string_filter");
            sb.append(" {\n");
            if (zzgcVar.zzawp != null) {
                String str = "UNKNOWN_MATCH_TYPE";
                switch (zzgcVar.zzawp.intValue()) {
                    case 1:
                        str = "REGEXP";
                        break;
                    case 2:
                        str = "BEGINS_WITH";
                        break;
                    case 3:
                        str = "ENDS_WITH";
                        break;
                    case 4:
                        str = "PARTIAL";
                        break;
                    case 5:
                        str = "EXACT";
                        break;
                    case 6:
                        str = "IN_LIST";
                        break;
                }
                zza(sb, i2, "match_type", str);
            }
            zza(sb, i2, "expression", zzgcVar.zzawq);
            zza(sb, i2, "case_sensitive", zzgcVar.zzawr);
            if (zzgcVar.zzaws.length > 0) {
                zza(sb, i2 + 1);
                sb.append("expression_list {\n");
                for (String str2 : zzgcVar.zzaws) {
                    zza(sb, i2 + 2);
                    sb.append(str2);
                    sb.append("\n");
                }
                sb.append("}\n");
            }
            zza(sb, i2);
            sb.append("}\n");
        }
        zza(sb, i2, "number_filter", zzfzVar.zzawe);
        zza(sb, i);
        sb.append("}\n");
    }

    private static void zza(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    private static void zza(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        zza(sb, i + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    final <T extends Parcelable> T zza(byte[] bArr, Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.unmarshall(bArr, 0, bArr.length);
            parcelObtain.setDataPosition(0);
            return creator.createFromParcel(parcelObtain);
        } catch (SafeParcelReader.ParseException e) {
            zzgt().zzjg().zzca("Failed to load parcelable from buffer");
            return null;
        } finally {
            parcelObtain.recycle();
        }
    }

    @WorkerThread
    final boolean zze(zzae zzaeVar, zzi zziVar) {
        Preconditions.checkNotNull(zzaeVar);
        Preconditions.checkNotNull(zziVar);
        if (TextUtils.isEmpty(zziVar.zzafx) && TextUtils.isEmpty(zziVar.zzagk)) {
            zzgw();
            return false;
        }
        return true;
    }

    static boolean zzcu(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    static boolean zza(long[] jArr, int i) {
        if (i >= (jArr.length << 6)) {
            return false;
        }
        return ((1 << (i % 64)) & jArr[i / 64]) != 0;
    }

    static long[] zza(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            jArr[i] = 0;
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = (i << 6) + i2;
                if (i3 < bitSet.length()) {
                    if (bitSet.get(i3)) {
                        jArr[i] = jArr[i] | (1 << i2);
                    }
                }
            }
        }
        return jArr;
    }

    final boolean zzb(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(zzbx().currentTimeMillis() - j) > j2;
    }

    final byte[] zza(byte[] bArr) throws IOException {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int i = gZIPInputStream.read(bArr2);
                if (i > 0) {
                    byteArrayOutputStream.write(bArr2, 0, i);
                } else {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e) {
            zzgt().zzjg().zzg("Failed to ungzip content", e);
            throw e;
        }
    }

    final byte[] zzb(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            zzgt().zzjg().zzg("Failed to gzip content", e);
            throw e;
        }
    }

    @Nullable
    final int[] zzmi() {
        Map<String, String> mapZzm = zzag.zzm(this.zzang.getContext());
        if (mapZzm == null || mapZzm.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int iIntValue = zzag.zzaks.get().intValue();
        for (Map.Entry<String, String> entry : mapZzm.entrySet()) {
            if (entry.getKey().startsWith("measurement.id.")) {
                try {
                    int i = Integer.parseInt(entry.getValue());
                    if (i != 0) {
                        arrayList.add(Integer.valueOf(i));
                        if (arrayList.size() >= iIntValue) {
                            zzgt().zzjj().zzg("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                            break;
                        }
                        continue;
                    } else {
                        continue;
                    }
                } catch (NumberFormatException e) {
                    zzgt().zzjj().zzg("Experiment ID NumberFormatException", e);
                }
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        int[] iArr = new int[arrayList.size()];
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            iArr[i3] = ((Integer) obj).intValue();
            i3++;
        }
        return iArr;
    }

    @Override // com.google.android.gms.measurement.internal.zzfi
    public final /* bridge */ /* synthetic */ zzfq zzjr() {
        return super.zzjr();
    }

    @Override // com.google.android.gms.measurement.internal.zzfi
    public final /* bridge */ /* synthetic */ zzk zzjs() {
        return super.zzjs();
    }

    @Override // com.google.android.gms.measurement.internal.zzfi
    public final /* bridge */ /* synthetic */ zzr zzjt() {
        return super.zzjt();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgf() {
        super.zzgf();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgg() {
        super.zzgg();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgh() {
        super.zzgh();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzy zzgp() {
        return super.zzgp();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzao zzgq() {
        return super.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzfu zzgr() {
        return super.zzgr();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzbp zzgs() {
        return super.zzgs();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzaq zzgt() {
        return super.zzgt();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzbb zzgu() {
        return super.zzgu();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzo zzgv() {
        return super.zzgv();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzl zzgw() {
        return super.zzgw();
    }
}
