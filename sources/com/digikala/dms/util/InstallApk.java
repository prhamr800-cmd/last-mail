package com.digikala.dms.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.support.v4.content.FileProvider;
import java.io.File;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class InstallApk {
    public static APKBuilder with(Context context) {
        return new APKBuilder(context);
    }

    public static class APKBuilder {
        private String apkPath;
        private Context context;
        private boolean forceInstall;
        private String uri;

        public APKBuilder(Context context) {
            this.context = context;
        }

        public APKBuilder from(String apkPath) {
            this.apkPath = apkPath;
            return this;
        }

        public APKBuilder fromUri(String apkUri) {
            this.uri = apkUri;
            return this;
        }

        public void forceInstall() throws XmlPullParserException, IOException {
            this.forceInstall = true;
            install();
        }

        public void install() throws XmlPullParserException, IOException {
            Intent intent = new Intent("android.intent.action.VIEW");
            File file = new File(this.apkPath);
            if (Build.VERSION.SDK_INT >= 24) {
                intent.addFlags(1);
                Uri contentUri = FileProvider.getUriForFile(this.context, "com.digikala.dms.provider", file);
                intent.setDataAndType(contentUri, "application/vnd.android.package-archive");
            } else {
                intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            }
            intent.addFlags(268435456);
            this.context.startActivity(intent);
        }
    }
}
