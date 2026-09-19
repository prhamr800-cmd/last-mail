###### Class com.snowplowanalytics.snowplow.tracker.storage.EventStoreHelper (com.snowplowanalytics.snowplow.tracker.storage.EventStoreHelper)
.class public Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EventStoreHelper.java"


# static fields
.field public static final COLUMN_DATE_CREATED:Ljava/lang/String; = "dateCreated"

.field public static final COLUMN_EVENT_DATA:Ljava/lang/String; = "eventData"

.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field private static final DATABASE_NAME:Ljava/lang/String; = "snowplowEvents.sqlite"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final METADATA_DATE_CREATED:Ljava/lang/String; = "dateCreated"

.field public static final METADATA_EVENT_DATA:Ljava/lang/String; = "eventData"

.field public static final METADATA_ID:Ljava/lang/String; = "id"

.field public static final TABLE_EVENTS:Ljava/lang/String; = "events"

.field private static final TAG:Ljava/lang/String;

.field private static final queryCreateTable:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS \'events\' (id INTEGER PRIMARY KEY, eventData BLOB, dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP)"

.field private static final queryDropTable:Ljava/lang/String; = "DROP TABLE IF EXISTS \'events\'"

.field private static sInstance:Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    const-string v0, "snowplowEvents.sqlite"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 70
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;->sInstance:Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;

    if-nez v0, :cond_f

    .line 60
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;->sInstance:Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;

    .line 62
    :cond_f
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;->sInstance:Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 74
    const-string v0, "CREATE TABLE IF NOT EXISTS \'events\' (id INTEGER PRIMARY KEY, eventData BLOB, dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 79
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;->TAG:Ljava/lang/String;

    const-string v1, "Upgrade not implemented, resetting database..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    const-string v0, "DROP TABLE IF EXISTS \'events\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStoreHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    return-void
.end method
