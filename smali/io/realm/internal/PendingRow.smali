###### Class io.realm.internal.PendingRow (io.realm.internal.PendingRow)
.class public Lio/realm/internal/PendingRow;
.super Ljava/lang/Object;
.source "PendingRow.java"

# interfaces
.implements Lio/realm/internal/Row;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/PendingRow$FrontEnd;
    }
.end annotation


# static fields
.field private static final PROXY_NOT_SET_MESSAGE:Ljava/lang/String; = "The \'frontEnd\' has not been set."

.field private static final QUERY_EXECUTED_MESSAGE:Ljava/lang/String; = "The query has been executed. This \'PendingRow\' is not valid anymore."

.field private static final QUERY_NOT_RETURNED_MESSAGE:Ljava/lang/String; = "The pending query has not been executed."


# instance fields
.field private frontEndRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/realm/internal/PendingRow$FrontEnd;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lio/realm/RealmChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/internal/PendingRow;",
            ">;"
        }
    .end annotation
.end field

.field private pendingOsResults:Lio/realm/internal/OsResults;

.field private returnCheckedRow:Z

.field private sharedRealm:Lio/realm/internal/OsSharedRealm;


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Z)V
    .registers 7
    .param p1, "sharedRealm"    # Lio/realm/internal/OsSharedRealm;
    .param p2, "query"    # Lio/realm/internal/TableQuery;
    .param p3, "sortDescriptor"    # Lio/realm/internal/SortDescriptor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "returnCheckedRow"    # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lio/realm/internal/PendingRow;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 43
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lio/realm/internal/OsResults;->createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;)Lio/realm/internal/OsResults;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/PendingRow;->pendingOsResults:Lio/realm/internal/OsResults;

    .line 45
    new-instance v0, Lio/realm/internal/PendingRow$1;

    invoke-direct {v0, p0}, Lio/realm/internal/PendingRow$1;-><init>(Lio/realm/internal/PendingRow;)V

    iput-object v0, p0, Lio/realm/internal/PendingRow;->listener:Lio/realm/RealmChangeListener;

    .line 51
    iget-object v0, p0, Lio/realm/internal/PendingRow;->pendingOsResults:Lio/realm/internal/OsResults;

    iget-object v1, p0, Lio/realm/internal/PendingRow;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {v0, p0, v1}, Lio/realm/internal/OsResults;->addListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V

    .line 52
    iput-boolean p4, p0, Lio/realm/internal/PendingRow;->returnCheckedRow:Z

    .line 53
    invoke-virtual {p1, p0}, Lio/realm/internal/OsSharedRealm;->addPendingRow(Lio/realm/internal/PendingRow;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lio/realm/internal/PendingRow;)V
    .registers 1
    .param p0, "x0"    # Lio/realm/internal/PendingRow;

    .line 20
    invoke-direct {p0}, Lio/realm/internal/PendingRow;->notifyFrontEnd()V

    return-void
.end method

.method private clearPendingCollection()V
    .registers 3

    .line 217
    iget-object v0, p0, Lio/realm/internal/PendingRow;->pendingOsResults:Lio/realm/internal/OsResults;

    iget-object v1, p0, Lio/realm/internal/PendingRow;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {v0, p0, v1}, Lio/realm/internal/OsResults;->removeListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/PendingRow;->pendingOsResults:Lio/realm/internal/OsResults;

    .line 219
    iput-object v0, p0, Lio/realm/internal/PendingRow;->listener:Lio/realm/RealmChangeListener;

    .line 220
    iget-object v0, p0, Lio/realm/internal/PendingRow;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0, p0}, Lio/realm/internal/OsSharedRealm;->removePendingRow(Lio/realm/internal/PendingRow;)V

    .line 221
    return-void
.end method

.method private notifyFrontEnd()V
    .registers 4

    .line 224
    iget-object v0, p0, Lio/realm/internal/PendingRow;->frontEndRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3d

    .line 227
    iget-object v0, p0, Lio/realm/internal/PendingRow;->frontEndRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/PendingRow$FrontEnd;

    .line 228
    .local v0, "frontEnd":Lio/realm/internal/PendingRow$FrontEnd;
    if-nez v0, :cond_12

    .line 230
    invoke-direct {p0}, Lio/realm/internal/PendingRow;->clearPendingCollection()V

    .line 231
    return-void

    .line 234
    :cond_12
    iget-object v1, p0, Lio/realm/internal/PendingRow;->pendingOsResults:Lio/realm/internal/OsResults;

    invoke-virtual {v1}, Lio/realm/internal/OsResults;->isValid()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 236
    iget-object v1, p0, Lio/realm/internal/PendingRow;->pendingOsResults:Lio/realm/internal/OsResults;

    invoke-virtual {v1}, Lio/realm/internal/OsResults;->firstUncheckedRow()Lio/realm/internal/UncheckedRow;

    move-result-object v1

    .line 239
    .local v1, "uncheckedRow":Lio/realm/internal/UncheckedRow;
    invoke-direct {p0}, Lio/realm/internal/PendingRow;->clearPendingCollection()V

    .line 241
    if-eqz v1, :cond_33

    .line 242
    iget-boolean v2, p0, Lio/realm/internal/PendingRow;->returnCheckedRow:Z

    if-eqz v2, :cond_2e

    invoke-static {v1}, Lio/realm/internal/CheckedRow;->getFromRow(Lio/realm/internal/UncheckedRow;)Lio/realm/internal/CheckedRow;

    move-result-object v2

    goto :goto_2f

    :cond_2e
    move-object v2, v1

    .line 244
    .local v2, "row":Lio/realm/internal/Row;
    :goto_2f
    invoke-interface {v0, v2}, Lio/realm/internal/PendingRow$FrontEnd;->onQueryFinished(Lio/realm/internal/Row;)V

    .line 245
    .end local v2    # "row":Lio/realm/internal/Row;
    goto :goto_38

    .line 247
    :cond_33
    sget-object v2, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    invoke-interface {v0, v2}, Lio/realm/internal/PendingRow$FrontEnd;->onQueryFinished(Lio/realm/internal/Row;)V

    .line 249
    .end local v1    # "uncheckedRow":Lio/realm/internal/UncheckedRow;
    :goto_38
    goto :goto_3c

    .line 250
    :cond_39
    invoke-direct {p0}, Lio/realm/internal/PendingRow;->clearPendingCollection()V

    .line 253
    :goto_3c
    return-void

    .line 225
    .end local v0    # "frontEnd":Lio/realm/internal/PendingRow$FrontEnd;
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The \'frontEnd\' has not been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkIfAttached()V
    .registers 3

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeQuery()V
    .registers 3

    .line 257
    iget-object v0, p0, Lio/realm/internal/PendingRow;->pendingOsResults:Lio/realm/internal/OsResults;

    if-eqz v0, :cond_8

    .line 261
    invoke-direct {p0}, Lio/realm/internal/PendingRow;->notifyFrontEnd()V

    .line 262
    return-void

    .line 258
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The query has been executed. This \'PendingRow\' is not valid anymore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBinaryByteArray(J)[B
    .registers 5
    .param p1, "columnIndex"    # J

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(J)Z
    .registers 5
    .param p1, "columnIndex"    # J

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()J
    .registers 3

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)J
    .registers 4
    .param p1, "columnName"    # Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnName(J)Ljava/lang/String;
    .registers 5
    .param p1, "columnIndex"    # J

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnType(J)Lio/realm/RealmFieldType;
    .registers 5
    .param p1, "columnIndex"    # J

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDate(J)Ljava/util/Date;
    .registers 5
    .param p1, "columnIndex"    # J

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDouble(J)D
    .registers 5
    .param p1, "columnIndex"    # J

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFloat(J)F
    .registers 5
    .param p1, "columnIndex"    # J

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndex()J
    .registers 3

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLink(J)J
    .registers 5
    .param p1, "columnIndex"    # J

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLong(J)J
    .registers 5
    .param p1, "columnIndex"    # J

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getModelList(J)Lio/realm/internal/OsList;
    .registers 5
    .param p1, "columnIndex"    # J

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(J)Ljava/lang/String;
    .registers 5
    .param p1, "columnIndex"    # J

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTable()Lio/realm/internal/Table;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueList(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;
    .registers 6
    .param p1, "columnIndex"    # J
    .param p3, "fieldType"    # Lio/realm/RealmFieldType;

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasColumn(Ljava/lang/String;)Z
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAttached()Z
    .registers 2

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public isNull(J)Z
    .registers 5
    .param p1, "columnIndex"    # J

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNullLink(J)Z
    .registers 5
    .param p1, "columnIndex"    # J

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nullifyLink(J)V
    .registers 5
    .param p1, "columnIndex"    # J

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBinaryByteArray(J[B)V
    .registers 6
    .param p1, "columnIndex"    # J
    .param p3, "data"    # [B

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBoolean(JZ)V
    .registers 6
    .param p1, "columnIndex"    # J
    .param p3, "value"    # Z

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDate(JLjava/util/Date;)V
    .registers 6
    .param p1, "columnIndex"    # J
    .param p3, "date"    # Ljava/util/Date;

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDouble(JD)V
    .registers 7
    .param p1, "columnIndex"    # J
    .param p3, "value"    # D

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFloat(JF)V
    .registers 6
    .param p1, "columnIndex"    # J
    .param p3, "value"    # F

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFrontEnd(Lio/realm/internal/PendingRow$FrontEnd;)V
    .registers 3
    .param p1, "frontEnd"    # Lio/realm/internal/PendingRow$FrontEnd;

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/realm/internal/PendingRow;->frontEndRef:Ljava/lang/ref/WeakReference;

    .line 59
    return-void
.end method

.method public setLink(JJ)V
    .registers 7
    .param p1, "columnIndex"    # J
    .param p3, "value"    # J

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLong(JJ)V
    .registers 7
    .param p1, "columnIndex"    # J
    .param p3, "value"    # J

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNull(J)V
    .registers 5
    .param p1, "columnIndex"    # J

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setString(JLjava/lang/String;)V
    .registers 6
    .param p1, "columnIndex"    # J
    .param p3, "value"    # Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.realm.internal.PendingRow.AnonymousClass1 (io.realm.internal.PendingRow$1)
.class Lio/realm/internal/PendingRow$1;
.super Ljava/lang/Object;
.source "PendingRow.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/internal/PendingRow;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/internal/PendingRow;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/internal/PendingRow;


# direct methods
.method constructor <init>(Lio/realm/internal/PendingRow;)V
    .registers 2
    .param p1, "this$0"    # Lio/realm/internal/PendingRow;

    .line 45
    iput-object p1, p0, Lio/realm/internal/PendingRow$1;->this$0:Lio/realm/internal/PendingRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/internal/PendingRow;)V
    .registers 3
    .param p1, "pendingRow"    # Lio/realm/internal/PendingRow;

    .line 48
    iget-object v0, p0, Lio/realm/internal/PendingRow$1;->this$0:Lio/realm/internal/PendingRow;

    invoke-static {v0}, Lio/realm/internal/PendingRow;->access$000(Lio/realm/internal/PendingRow;)V

    .line 49
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 45
    check-cast p1, Lio/realm/internal/PendingRow;

    invoke-virtual {p0, p1}, Lio/realm/internal/PendingRow$1;->onChange(Lio/realm/internal/PendingRow;)V

    return-void
.end method

###### Class io.realm.internal.PendingRow.FrontEnd (io.realm.internal.PendingRow$FrontEnd)
.class public interface abstract Lio/realm/internal/PendingRow$FrontEnd;
.super Ljava/lang/Object;
.source "PendingRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/PendingRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrontEnd"
.end annotation


# virtual methods
.method public abstract onQueryFinished(Lio/realm/internal/Row;)V
.end method
