###### Class com.digikala.dms.core.DMSRealmMigration (com.digikala.dms.core.DMSRealmMigration)
.class public Lcom/digikala/dms/core/DMSRealmMigration;
.super Ljava/lang/Object;
.source "DMSRealmMigration.java"

# interfaces
.implements Lio/realm/RealmMigration;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public migrate(Lio/realm/DynamicRealm;JJ)V
    .registers 14
    .param p1, "realm"    # Lio/realm/DynamicRealm;
    .param p2, "oldVersion"    # J
    .param p4, "newVersion"    # J

    .line 25
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    .line 26
    .local v0, "schema":Lio/realm/RealmSchema;
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "migrate oldVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-nez v6, :cond_c1

    .line 48
    const-string v4, "Courier"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "notificationToken"

    const-class v6, Ljava/lang/String;

    new-array v7, v3, [Lio/realm/FieldAttribute;

    .line 49
    invoke-virtual {v4, v5, v6, v7}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    .line 52
    const-string v4, "ServerNotification"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "id"

    const-class v6, Ljava/lang/String;

    new-array v7, v3, [Lio/realm/FieldAttribute;

    .line 53
    invoke-virtual {v4, v5, v6, v7}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "status"

    const-class v6, Ljava/lang/String;

    new-array v7, v3, [Lio/realm/FieldAttribute;

    .line 54
    invoke-virtual {v4, v5, v6, v7}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    .line 57
    const-string v4, "ServerMessages"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "id"

    const-class v6, Ljava/lang/String;

    new-array v7, v3, [Lio/realm/FieldAttribute;

    .line 58
    invoke-virtual {v4, v5, v6, v7}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "title"

    const-class v6, Ljava/lang/String;

    new-array v7, v3, [Lio/realm/FieldAttribute;

    .line 59
    invoke-virtual {v4, v5, v6, v7}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "message"

    const-class v6, Ljava/lang/String;

    new-array v7, v3, [Lio/realm/FieldAttribute;

    .line 60
    invoke-virtual {v4, v5, v6, v7}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "date"

    const-class v6, Ljava/lang/Long;

    new-array v7, v3, [Lio/realm/FieldAttribute;

    .line 61
    invoke-virtual {v4, v5, v6, v7}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "seen"

    const-class v6, Ljava/lang/Boolean;

    new-array v7, v3, [Lio/realm/FieldAttribute;

    .line 62
    invoke-virtual {v4, v5, v6, v7}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    .line 65
    const-string v4, "CardType"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "id"

    const-class v6, Ljava/lang/String;

    new-array v7, v3, [Lio/realm/FieldAttribute;

    .line 66
    invoke-virtual {v4, v5, v6, v7}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "title"

    const-class v6, Ljava/lang/String;

    new-array v7, v3, [Lio/realm/FieldAttribute;

    .line 67
    invoke-virtual {v4, v5, v6, v7}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    .line 70
    const-string v4, "Shipment"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "cardTypeId"

    const-class v6, Ljava/lang/String;

    new-array v7, v3, [Lio/realm/FieldAttribute;

    .line 71
    invoke-virtual {v4, v5, v6, v7}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "cardNumber"

    const-class v6, Ljava/lang/String;

    new-array v7, v3, [Lio/realm/FieldAttribute;

    .line 72
    invoke-virtual {v4, v5, v6, v7}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "comment"

    const-class v6, Ljava/lang/String;

    new-array v3, v3, [Lio/realm/FieldAttribute;

    .line 73
    invoke-virtual {v4, v5, v6, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    .line 74
    add-long/2addr p2, v1

    goto/16 :goto_187

    .line 76
    :cond_c1
    cmp-long v4, p2, v1

    if-nez v4, :cond_117

    .line 78
    const-string v4, "Shipment"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "rejectReasons"

    invoke-virtual {v4, v5}, Lio/realm/RealmObjectSchema;->hasField(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_de

    .line 79
    const-string v4, "Shipment"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "rejectReasons"

    .line 81
    invoke-virtual {v4, v5}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    .line 83
    :cond_de
    const-string v4, "ShipmentItem"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "rejectReasons"

    invoke-virtual {v4, v5}, Lio/realm/RealmObjectSchema;->hasField(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 85
    const-string v4, "ShipmentItem"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "rejectReasons"

    .line 87
    invoke-virtual {v4, v5}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    .line 90
    :cond_f7
    const-string v4, "Courier"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "userName"

    invoke-virtual {v4, v5}, Lio/realm/RealmObjectSchema;->hasField(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_114

    .line 92
    const-string v4, "Courier"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "userName"

    const-class v6, Ljava/lang/String;

    new-array v3, v3, [Lio/realm/FieldAttribute;

    .line 93
    invoke-virtual {v4, v5, v6, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    .line 96
    :cond_114
    const/4 v3, 0x0

    add-long/2addr p2, v1

    goto :goto_187

    .line 98
    :cond_117
    const-wide/16 v4, 0x2

    cmp-long v6, p2, v4

    if-nez v6, :cond_171

    .line 101
    :try_start_11d
    const-string v4, "Shipment"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "rejectReasons"

    invoke-virtual {v4, v5}, Lio/realm/RealmObjectSchema;->hasField(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_136

    .line 102
    const-string v4, "Shipment"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "rejectReasons"

    .line 104
    invoke-virtual {v4, v5}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    .line 106
    :cond_136
    const-string v4, "ShipmentItem"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "rejectReasons"

    invoke-virtual {v4, v5}, Lio/realm/RealmObjectSchema;->hasField(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14f

    .line 108
    const-string v4, "ShipmentItem"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "rejectReasons"

    .line 109
    invoke-virtual {v4, v5}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    .line 112
    :cond_14f
    const-string v4, "Courier"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "userName"

    invoke-virtual {v4, v5}, Lio/realm/RealmObjectSchema;->hasField(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16c

    .line 114
    const-string v4, "Courier"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "userName"

    const-class v6, Ljava/lang/String;

    new-array v3, v3, [Lio/realm/FieldAttribute;

    .line 115
    invoke-virtual {v4, v5, v6, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_16c} :catch_16d

    .line 120
    :cond_16c
    goto :goto_16e

    .line 118
    :catch_16d
    move-exception v3

    .line 122
    :goto_16e
    const/4 v3, 0x0

    add-long/2addr p2, v1

    goto :goto_187

    .line 124
    :cond_171
    const-wide/16 v4, 0x3

    cmp-long v6, p2, v4

    if-nez v6, :cond_187

    .line 125
    const-string v4, "Shipment"

    invoke-virtual {v0, v4}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    const-string v5, "autoRefundable"

    const-class v6, Ljava/lang/Boolean;

    new-array v3, v3, [Lio/realm/FieldAttribute;

    .line 126
    invoke-virtual {v4, v5, v6, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    .line 127
    add-long/2addr p2, v1

    .line 130
    :cond_187
    :goto_187
    return-void
.end method
