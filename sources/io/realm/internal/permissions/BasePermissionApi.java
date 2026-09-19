package io.realm.internal.permissions;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import io.realm.RealmModel;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public interface BasePermissionApi extends RealmModel {
    @SuppressFBWarnings({"EI_EXPOSE_REP"})
    Date getCreatedAt();

    String getId();

    Integer getStatusCode();

    String getStatusMessage();

    @SuppressFBWarnings({"EI_EXPOSE_REP"})
    Date getUpdatedAt();
}
