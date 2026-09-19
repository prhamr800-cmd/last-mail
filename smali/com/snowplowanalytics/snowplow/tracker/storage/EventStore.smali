###### Class com.snowplowanalytics.snowplow.tracker.storage.EventStore (com.snowplowanalytics.snowplow.tracker.storage.EventStore)
.class public Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;
.super Ljava/lang/Object;
.source "EventStore.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private allColumns:[Ljava/lang/String;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;

.field private lastInsertedRowId:J

.field private sendLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sendLimit"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "eventData"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "dateCreated"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->allColumns:[Ljava/lang/String;

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->lastInsertedRowId:J

    .line 61
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;->getInstance(Landroid/content/Context;)Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->dbHelper:Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;

    .line 62
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->open()V

    .line 63
    iput p2, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->sendLimit:I

    .line 65
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->TAG:Ljava/lang/String;

    const-string v1, "DB Path: %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method private queryDatabase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->isDatabaseOpen()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 178
    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "events"

    iget-object v4, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->allColumns:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move-object v9, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 181
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 182
    :goto_1d
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_55

    .line 183
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v2, "eventMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "id"

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v3, "eventData"

    const/4 v4, 0x1

    .line 186
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->deserializer([B)Ljava/util/Map;

    move-result-object v4

    .line 185
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v3, "dateCreated"

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 189
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v2    # "eventMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_1d

    .line 191
    :cond_55
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 193
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_58
    return-object v0
.end method


# virtual methods
.method public add(Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;)V
    .registers 2
    .param p1, "payload"    # Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;

    .line 74
    invoke-virtual {p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->insertEvent(Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;)J

    .line 75
    return-void
.end method

.method public close()V
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->dbHelper:Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;->close()V

    .line 93
    return-void
.end method

.method public getAllEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->queryDatabase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescEventsInRange(I)Ljava/util/List;
    .registers 4
    .param p1, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id DESC LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->queryDatabase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEmittableEvents()Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;
    .registers 8

    .line 230
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 231
    .local v0, "eventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;>;"
    iget v2, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->sendLimit:I

    invoke-virtual {p0, v2}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->getDescEventsInRange(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 237
    .local v3, "eventMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    invoke-direct {v4}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;-><init>()V

    .line 238
    .local v4, "payload":Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
    const-string v5, "eventData"

    .line 239
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 240
    .local v5, "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v4, v5}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->addMap(Ljava/util/Map;)V

    .line 243
    const-string v6, "id"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 244
    .local v6, "eventId":Ljava/lang/Long;
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v3    # "eventMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "payload":Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
    .end local v5    # "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "eventId":Ljava/lang/Long;
    goto :goto_14

    .line 249
    :cond_3f
    new-instance v2, Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;

    invoke-direct {v2, v1, v0}, Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;-><init>(Ljava/util/ArrayList;Ljava/util/LinkedList;)V

    return-object v2
.end method

.method public getEvent(J)Ljava/util/Map;
    .registers 6
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->queryDatabase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 264
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 265
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    return-object v1

    .line 267
    :cond_24
    return-object v1
.end method

.method public getLastInsertedRowId()J
    .registers 3

    .line 216
    iget-wide v0, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->lastInsertedRowId:J

    return-wide v0
.end method

.method public getSize()J
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertEvent(Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;)J
    .registers 8
    .param p1, "payload"    # Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;

    .line 105
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->isDatabaseOpen()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 106
    invoke-interface {p1}, Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->serialize(Ljava/util/Map;)[B

    move-result-object v0

    .line 107
    .local v0, "bytes":[B
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 108
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "eventData"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 109
    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "events"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->lastInsertedRowId:J

    .line 111
    .end local v0    # "bytes":[B
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_24
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->TAG:Ljava/lang/String;

    const-string v1, "Added event to database: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->lastInsertedRowId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-wide v0, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->lastInsertedRowId:J

    return-wide v0
.end method

.method public isDatabaseOpen()Z
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public open()V
    .registers 2

    .line 82
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->isDatabaseOpen()Z

    move-result v0

    if-nez v0, :cond_13

    .line 83
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->dbHelper:Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 84
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 86
    :cond_13
    return-void
.end method

.method public removeAllEvents()Z
    .registers 6

    .line 157
    const/4 v0, -0x1

    .line 158
    .local v0, "retval":I
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->isDatabaseOpen()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 159
    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "events"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 161
    :cond_10
    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->TAG:Ljava/lang/String;

    const-string v2, "Removing all events from database."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    if-nez v0, :cond_1e

    const/4 v3, 0x1

    nop

    :cond_1e
    return v3
.end method

.method public removeEvent(J)Z
    .registers 10
    .param p1, "id"    # J

    .line 122
    const/4 v0, -0x1

    .line 123
    .local v0, "retval":I
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->isDatabaseOpen()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 124
    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "events"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 127
    :cond_21
    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->TAG:Ljava/lang/String;

    const-string v2, "Removed event from database: %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    if-ne v0, v3, :cond_42

    goto :goto_43

    :cond_42
    const/4 v3, 0x0

    :goto_43
    return v3
.end method

.method public removeEvents(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 138
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 139
    return v1

    .line 142
    :cond_8
    const/4 v0, -0x1

    .line 143
    .local v0, "retval":I
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->isDatabaseOpen()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 144
    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "events"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id in ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->joinLongList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 144
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 147
    :cond_32
    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->TAG:Ljava/lang/String;

    const-string v3, "Removed events from database: %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v5}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_4a

    const/4 v1, 0x1

    nop

    :cond_4a
    return v1
.end method
