package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzyi {
    static String zzd(zzun zzunVar) {
        zzyj zzyjVar = new zzyj(zzunVar);
        StringBuilder sb = new StringBuilder(zzyjVar.size());
        for (int i = 0; i < zzyjVar.size(); i++) {
            byte bZzal = zzyjVar.zzal(i);
            if (bZzal == 34) {
                sb.append("\\\"");
            } else if (bZzal == 39) {
                sb.append("\\'");
            } else if (bZzal != 92) {
                switch (bZzal) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bZzal < 32 || bZzal > 126) {
                            sb.append('\\');
                            sb.append((char) (((bZzal >>> 6) & 3) + 48));
                            sb.append((char) (((bZzal >>> 3) & 7) + 48));
                            sb.append((char) ((bZzal & 7) + 48));
                        } else {
                            sb.append((char) bZzal);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}
