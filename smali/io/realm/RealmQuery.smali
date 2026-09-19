###### Class io.realm.RealmQuery (io.realm.RealmQuery)
.class public Lio/realm/RealmQuery;
.super Ljava/lang/Object;
.source "RealmQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ASYNC_QUERY_WRONG_THREAD_MESSAGE:Ljava/lang/String; = "Async query cannot be created on current thread."

.field private static final EMPTY_VALUES:Ljava/lang/String; = "Non-empty \'values\' must be provided."

.field private static final TYPE_MISMATCH:Ljava/lang/String; = "Field \'%s\': type mismatch - %s expected."


# instance fields
.field private className:Ljava/lang/String;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private distinctDescriptor:Lio/realm/internal/SortDescriptor;

.field private final forValues:Z

.field private final osList:Lio/realm/internal/OsList;

.field private final query:Lio/realm/internal/TableQuery;

.field private final realm:Lio/realm/BaseRealm;

.field private final schema:Lio/realm/RealmObjectSchema;

.field private sortDescriptor:Lio/realm/internal/SortDescriptor;

.field private final table:Lio/realm/internal/Table;


# direct methods
.method private constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V
    .registers 5
    .param p1, "realm"    # Lio/realm/BaseRealm;
    .param p2, "osList"    # Lio/realm/internal/OsList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 173
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 175
    iput-object p3, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    .line 176
    invoke-static {p3}, Lio/realm/RealmQuery;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    .line 177
    iget-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    if-eqz v0, :cond_1d

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 180
    iput-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 181
    iput-object v0, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    .line 182
    iput-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    goto :goto_37

    .line 185
    :cond_1d
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, p3}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 186
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 187
    iput-object p2, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    .line 188
    invoke-virtual {p2}, Lio/realm/internal/OsList;->getQuery()Lio/realm/internal/TableQuery;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    .line 190
    :goto_37
    return-void
.end method

.method private constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/String;)V
    .registers 5
    .param p1, "realm"    # Lio/realm/BaseRealm;
    .param p2, "osList"    # Lio/realm/internal/OsList;
    .param p3, "className"    # Ljava/lang/String;

    .line 212
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 214
    iput-object p3, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    .line 216
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, p3}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 217
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 218
    invoke-virtual {p2}, Lio/realm/internal/OsList;->getQuery()Lio/realm/internal/TableQuery;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    .line 219
    iput-object p2, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    .line 220
    return-void
.end method

.method private constructor <init>(Lio/realm/BaseRealm;Ljava/lang/String;)V
    .registers 4
    .param p1, "realm"    # Lio/realm/BaseRealm;
    .param p2, "className"    # Ljava/lang/String;

    .line 192
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 194
    iput-object p2, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    .line 196
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 197
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 198
    iget-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->where()Lio/realm/internal/TableQuery;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    .line 200
    return-void
.end method

.method private constructor <init>(Lio/realm/Realm;Ljava/lang/Class;)V
    .registers 5
    .param p1, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 135
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 137
    iput-object p2, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    .line 138
    invoke-static {p2}, Lio/realm/RealmQuery;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    .line 139
    iget-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 141
    iput-object v1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 142
    iput-object v1, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 143
    iput-object v1, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    .line 144
    iput-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    goto :goto_39

    .line 147
    :cond_1d
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 148
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 149
    iput-object v1, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    .line 150
    iget-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->where()Lio/realm/internal/TableQuery;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    .line 152
    :goto_39
    return-void
.end method

.method private constructor <init>(Lio/realm/RealmResults;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 154
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    .local p1, "queryResults":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iget-object v0, p1, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    iput-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 156
    iput-object p2, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    .line 157
    invoke-static {p2}, Lio/realm/RealmQuery;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    .line 158
    iget-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 160
    iput-object v1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 161
    iput-object v1, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 162
    iput-object v1, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    .line 163
    iput-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    goto :goto_3d

    .line 166
    :cond_1f
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 167
    invoke-virtual {p1}, Lio/realm/RealmResults;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 168
    iput-object v1, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    .line 169
    invoke-virtual {p1}, Lio/realm/RealmResults;->getOsResults()Lio/realm/internal/OsResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->where()Lio/realm/internal/TableQuery;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    .line 171
    :goto_3d
    return-void
.end method

.method private constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;)V
    .registers 4
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/DynamicRealmObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 202
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    .local p1, "queryResults":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lio/realm/DynamicRealmObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iget-object v0, p1, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    iput-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 204
    iput-object p2, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    .line 206
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 207
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 208
    invoke-virtual {p1}, Lio/realm/RealmResults;->getOsResults()Lio/realm/internal/OsResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->where()Lio/realm/internal/TableQuery;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    .line 210
    return-void
.end method

.method private beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1509
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->group()Lio/realm/internal/TableQuery;

    .line 1510
    return-object p0
.end method

.method static createDynamicQuery(Lio/realm/DynamicRealm;Ljava/lang/String;)Lio/realm/RealmQuery;
    .registers 3
    .param p0, "realm"    # Lio/realm/DynamicRealm;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/DynamicRealm;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Lio/realm/RealmQuery;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmQuery;-><init>(Lio/realm/BaseRealm;Ljava/lang/String;)V

    return-object v0
.end method

.method static createQuery(Lio/realm/Realm;Ljava/lang/Class;)Lio/realm/RealmQuery;
    .registers 3
    .param p0, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 86
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Lio/realm/RealmQuery;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmQuery;-><init>(Lio/realm/Realm;Ljava/lang/Class;)V

    return-object v0
.end method

.method static createQueryFromList(Lio/realm/RealmList;)Lio/realm/RealmQuery;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/RealmList<",
            "TE;>;)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 126
    .local p0, "list":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    iget-object v0, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_12

    .line 127
    new-instance v0, Lio/realm/RealmQuery;

    iget-object v1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {p0}, Lio/realm/RealmList;->getOsList()Lio/realm/internal/OsList;

    move-result-object v2

    iget-object v3, p0, Lio/realm/RealmList;->className:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lio/realm/RealmQuery;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/String;)V

    goto :goto_1f

    .line 128
    :cond_12
    new-instance v0, Lio/realm/RealmQuery;

    iget-object v1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {p0}, Lio/realm/RealmList;->getOsList()Lio/realm/internal/OsList;

    move-result-object v2

    iget-object v3, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lio/realm/RealmQuery;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    .line 126
    :goto_1f
    return-object v0
.end method

.method static createQueryFromResult(Lio/realm/RealmResults;)Lio/realm/RealmQuery;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/RealmResults<",
            "TE;>;)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 111
    .local p0, "queryResults":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    iget-object v0, p0, Lio/realm/RealmResults;->classSpec:Ljava/lang/Class;

    if-nez v0, :cond_c

    .line 112
    new-instance v0, Lio/realm/RealmQuery;

    iget-object v1, p0, Lio/realm/RealmResults;->className:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lio/realm/RealmQuery;-><init>(Lio/realm/RealmResults;Ljava/lang/String;)V

    goto :goto_13

    .line 113
    :cond_c
    new-instance v0, Lio/realm/RealmQuery;

    iget-object v1, p0, Lio/realm/RealmResults;->classSpec:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lio/realm/RealmQuery;-><init>(Lio/realm/RealmResults;Ljava/lang/Class;)V

    .line 111
    :goto_13
    return-object v0
.end method

.method private createRealmResults(Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;ZLio/realm/internal/sync/SubscriptionAction;)Lio/realm/RealmResults;
    .registers 10
    .param p1, "query"    # Lio/realm/internal/TableQuery;
    .param p2, "sortDescriptor"    # Lio/realm/internal/SortDescriptor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "distinctDescriptor"    # Lio/realm/internal/SortDescriptor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "loadResults"    # Z
    .param p5, "subscriptionAction"    # Lio/realm/internal/sync/SubscriptionAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/TableQuery;",
            "Lio/realm/internal/SortDescriptor;",
            "Lio/realm/internal/SortDescriptor;",
            "Z",
            "Lio/realm/internal/sync/SubscriptionAction;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 2042
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    invoke-virtual {p5}, Lio/realm/internal/sync/SubscriptionAction;->shouldCreateSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2043
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p5}, Lio/realm/internal/sync/SubscriptionAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, p3, v1}, Lio/realm/internal/SubscriptionAwareOsResults;->createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;Ljava/lang/String;)Lio/realm/internal/SubscriptionAwareOsResults;

    move-result-object v0

    goto :goto_1b

    .line 2045
    :cond_13
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v0, p1, p2, p3}, Lio/realm/internal/OsResults;->createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;)Lio/realm/internal/OsResults;

    move-result-object v0

    .line 2048
    .local v0, "osResults":Lio/realm/internal/OsResults;
    :goto_1b
    invoke-direct {p0}, Lio/realm/RealmQuery;->isDynamicQuery()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2049
    new-instance v1, Lio/realm/RealmResults;

    iget-object v2, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v3, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/String;)V

    goto :goto_34

    .line 2051
    :cond_2b
    new-instance v1, Lio/realm/RealmResults;

    iget-object v2, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v3, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    invoke-direct {v1, v2, v0, v3}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;)V

    .line 2053
    .local v1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    :goto_34
    if-eqz p4, :cond_39

    .line 2054
    invoke-virtual {v1}, Lio/realm/RealmResults;->load()Z

    .line 2057
    :cond_39
    return-object v1
.end method

.method private endGroupWithoutThreadValidation()Lio/realm/RealmQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1526
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->endGroup()Lio/realm/internal/TableQuery;

    .line 1527
    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 491
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 492
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    if-nez p2, :cond_1e

    .line 493
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_2f

    .line 495
    :cond_1e
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lio/realm/internal/TableQuery;->equalTo([J[JZ)Lio/realm/internal/TableQuery;

    .line 497
    :goto_2f
    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Byte;)Lio/realm/RealmQuery;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Byte;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 328
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    if-nez p2, :cond_1e

    .line 329
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_30

    .line 331
    :cond_1e
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/TableQuery;->equalTo([J[JJ)Lio/realm/internal/TableQuery;

    .line 333
    :goto_30
    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Double;)Lio/realm/RealmQuery;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 443
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 444
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    if-nez p2, :cond_1e

    .line 445
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_2f

    .line 447
    :cond_1e
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/TableQuery;->equalTo([J[JD)Lio/realm/internal/TableQuery;

    .line 449
    :goto_2f
    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Float;)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 467
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 468
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    if-nez p2, :cond_1e

    .line 469
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_2f

    .line 471
    :cond_1e
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lio/realm/internal/TableQuery;->equalTo([J[JF)Lio/realm/internal/TableQuery;

    .line 473
    :goto_2f
    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 395
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 396
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    if-nez p2, :cond_1e

    .line 397
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_30

    .line 399
    :cond_1e
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/TableQuery;->equalTo([J[JJ)Lio/realm/internal/TableQuery;

    .line 401
    :goto_30
    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 419
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 420
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    if-nez p2, :cond_1e

    .line 421
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_2f

    .line 423
    :cond_1e
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/TableQuery;->equalTo([J[JJ)Lio/realm/internal/TableQuery;

    .line 425
    :goto_2f
    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Short;)Lio/realm/RealmQuery;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Short;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 371
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 372
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    if-nez p2, :cond_1e

    .line 373
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_30

    .line 375
    :cond_1e
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/TableQuery;->equalTo([J[JJ)Lio/realm/internal/TableQuery;

    .line 377
    :goto_30
    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "casing"    # Lio/realm/Case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 307
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 308
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lio/realm/internal/TableQuery;->equalTo([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;

    .line 309
    return-object p0
.end method

.method private equalToWithoutThreadValidation(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 515
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 516
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/TableQuery;->equalTo([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;

    .line 517
    return-object p0
.end method

.method private getSchemaConnector()Lio/realm/SchemaConnector;
    .registers 3

    .line 2074
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    new-instance v0, Lio/realm/SchemaConnector;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/SchemaConnector;-><init>(Lio/realm/RealmSchema;)V

    return-object v0
.end method

.method private getSourceRowIndexForFirstObject()J
    .registers 4

    .line 2061
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->sortDescriptor:Lio/realm/internal/SortDescriptor;

    if-nez v0, :cond_10

    iget-object v0, p0, Lio/realm/RealmQuery;->distinctDescriptor:Lio/realm/internal/SortDescriptor;

    if-eqz v0, :cond_9

    goto :goto_10

    .line 2069
    :cond_9
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->find()J

    move-result-wide v0

    return-wide v0

    .line 2062
    :cond_10
    :goto_10
    invoke-virtual {p0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->first(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 2063
    .local v0, "obj":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_2a

    .line 2064
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 2066
    :cond_2a
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private static isClassForRealmModel(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 132
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lio/realm/RealmModel;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private isDynamicQuery()Z
    .registers 2

    .line 1958
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private orWithoutThreadValidation()Lio/realm/RealmQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1542
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->or()Lio/realm/internal/TableQuery;

    .line 1543
    return-object p0
.end method


# virtual methods
.method public alwaysFalse()Lio/realm/RealmQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1952
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1953
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->alwaysFalse()V

    .line 1954
    return-object p0
.end method

.method public alwaysTrue()Lio/realm/RealmQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1943
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1944
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->alwaysTrue()V

    .line 1945
    return-object p0
.end method

.method public and()Lio/realm/RealmQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1553
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1554
    return-object p0
.end method

.method public average(Ljava/lang/String;)D
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 1640
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1642
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 1643
    .local v0, "columnIndex":J
    sget-object v2, Lio/realm/RealmQuery$1;->$SwitchMap$io$realm$RealmFieldType:[I

    iget-object v3, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4a

    .line 1651
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, "int, float or double"

    aput-object v6, v4, v5

    const-string v5, "Field \'%s\': type mismatch - %s expected."

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1647
    :pswitch_35
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/TableQuery;->averageDouble(J)D

    move-result-wide v2

    return-wide v2

    .line 1649
    :pswitch_3c
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/TableQuery;->averageFloat(J)D

    move-result-wide v2

    return-wide v2

    .line 1645
    :pswitch_43
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/TableQuery;->averageInt(J)D

    move-result-wide v2

    return-wide v2

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_43
        :pswitch_3c
        :pswitch_35
    .end packed-switch
.end method

.method public beginGroup()Lio/realm/RealmQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1503
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1505
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public beginsWith(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1409
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->beginsWith(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public beginsWith(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "casing"    # Lio/realm/Case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1422
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1424
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1425
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lio/realm/internal/TableQuery;->beginsWith([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;

    .line 1426
    return-object p0
.end method

.method public between(Ljava/lang/String;DD)Lio/realm/RealmQuery;
    .registers 13
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "from"    # D
    .param p4, "to"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1329
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1331
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1332
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/TableQuery;->between([JDD)Lio/realm/internal/TableQuery;

    .line 1333
    return-object p0
.end method

.method public between(Ljava/lang/String;FF)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "from"    # F
    .param p3, "to"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1346
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1348
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1349
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lio/realm/internal/TableQuery;->between([JFF)Lio/realm/internal/TableQuery;

    .line 1350
    return-object p0
.end method

.method public between(Ljava/lang/String;II)Lio/realm/RealmQuery;
    .registers 11
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1295
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1297
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1298
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/TableQuery;->between([JJJ)Lio/realm/internal/TableQuery;

    .line 1299
    return-object p0
.end method

.method public between(Ljava/lang/String;JJ)Lio/realm/RealmQuery;
    .registers 13
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "from"    # J
    .param p4, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1312
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1314
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1315
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/TableQuery;->between([JJJ)Lio/realm/internal/TableQuery;

    .line 1316
    return-object p0
.end method

.method public between(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/util/Date;
    .param p3, "to"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1363
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1365
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1366
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lio/realm/internal/TableQuery;->between([JLjava/util/Date;Ljava/util/Date;)Lio/realm/internal/TableQuery;

    .line 1367
    return-object p0
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1380
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "casing"    # Lio/realm/Case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1393
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1395
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1396
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lio/realm/internal/TableQuery;->contains([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;

    .line 1397
    return-object p0
.end method

.method public count()J
    .registers 3

    .line 1751
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1753
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public distinct(Ljava/lang/String;)Lio/realm/RealmQuery;
    .registers 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1907
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lio/realm/RealmQuery;->distinct(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public varargs distinct(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/RealmQuery;
    .registers 7
    .param p1, "firstFieldName"    # Ljava/lang/String;
    .param p2, "remainingFieldNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1924
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1925
    iget-object v0, p0, Lio/realm/RealmQuery;->distinctDescriptor:Lio/realm/internal/SortDescriptor;

    if-nez v0, :cond_32

    .line 1928
    array-length v0, p2

    if-nez v0, :cond_19

    .line 1929
    invoke-direct {p0}, Lio/realm/RealmQuery;->getSchemaConnector()Lio/realm/SchemaConnector;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-static {v0, v1, p1}, Lio/realm/internal/SortDescriptor;->getInstanceForDistinct(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;Ljava/lang/String;)Lio/realm/internal/SortDescriptor;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->distinctDescriptor:Lio/realm/internal/SortDescriptor;

    goto :goto_31

    .line 1931
    :cond_19
    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 1932
    .local v0, "fieldNames":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 1933
    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1934
    invoke-direct {p0}, Lio/realm/RealmQuery;->getSchemaConnector()Lio/realm/SchemaConnector;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-static {v1, v2, v0}, Lio/realm/internal/SortDescriptor;->getInstanceForDistinct(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;[Ljava/lang/String;)Lio/realm/internal/SortDescriptor;

    move-result-object v1

    iput-object v1, p0, Lio/realm/RealmQuery;->distinctDescriptor:Lio/realm/internal/SortDescriptor;

    .line 1936
    .end local v0    # "fieldNames":[Ljava/lang/String;
    :goto_31
    return-object p0

    .line 1926
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Distinct fields have already been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endGroup()Lio/realm/RealmQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1520
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1522
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public endsWith(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1438
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->endsWith(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public endsWith(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "casing"    # Lio/realm/Case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1451
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1453
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1454
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lio/realm/internal/TableQuery;->endsWith([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;

    .line 1455
    return-object p0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 485
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 487
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Byte;)Lio/realm/RealmQuery;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Byte;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 321
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 323
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Byte;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Double;)Lio/realm/RealmQuery;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 437
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 439
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Double;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Float;)Lio/realm/RealmQuery;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 461
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 463
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Float;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 389
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 391
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 413
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 415
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Short;)Lio/realm/RealmQuery;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Short;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 367
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Short;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 288
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "casing"    # Lio/realm/Case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 301
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 303
    invoke-direct {p0, p1, p2, p3}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 509
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 511
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;[B)Lio/realm/RealmQuery;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 345
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 347
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 348
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    if-nez p2, :cond_23

    .line 349
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_30

    .line 351
    :cond_23
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/TableQuery;->equalTo([J[J[B)Lio/realm/internal/TableQuery;

    .line 353
    :goto_30
    return-object p0
.end method

.method public findAll()Lio/realm/RealmResults;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 1765
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1766
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v3, p0, Lio/realm/RealmQuery;->sortDescriptor:Lio/realm/internal/SortDescriptor;

    iget-object v4, p0, Lio/realm/RealmQuery;->distinctDescriptor:Lio/realm/internal/SortDescriptor;

    sget-object v6, Lio/realm/internal/sync/SubscriptionAction;->NO_SUBSCRIPTION:Lio/realm/internal/sync/SubscriptionAction;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/realm/RealmQuery;->createRealmResults(Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;ZLio/realm/internal/sync/SubscriptionAction;)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public findAllAsync()Lio/realm/RealmResults;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 1783
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1785
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "Async query cannot be created on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 1789
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isPartial()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    if-nez v0, :cond_21

    .line 1790
    sget-object v0, Lio/realm/internal/sync/SubscriptionAction;->ANONYMOUS_SUBSCRIPTION:Lio/realm/internal/sync/SubscriptionAction;

    goto :goto_23

    .line 1792
    :cond_21
    sget-object v0, Lio/realm/internal/sync/SubscriptionAction;->NO_SUBSCRIPTION:Lio/realm/internal/sync/SubscriptionAction;

    .local v6, "subscriptionAction":Lio/realm/internal/sync/SubscriptionAction;
    :goto_23
    move-object v6, v0

    .line 1794
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v3, p0, Lio/realm/RealmQuery;->sortDescriptor:Lio/realm/internal/SortDescriptor;

    iget-object v4, p0, Lio/realm/RealmQuery;->distinctDescriptor:Lio/realm/internal/SortDescriptor;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/realm/RealmQuery;->createRealmResults(Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;ZLio/realm/internal/sync/SubscriptionAction;)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public findAllAsync(Ljava/lang/String;)Lio/realm/RealmResults;
    .registers 10
    .param p1, "subscriptionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 1810
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1811
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfPartialRealm()V

    .line 1812
    iget-object v0, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    if-nez v0, :cond_38

    .line 1815
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1819
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "Async query cannot be created on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 1820
    iget-object v3, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v4, p0, Lio/realm/RealmQuery;->sortDescriptor:Lio/realm/internal/SortDescriptor;

    iget-object v5, p0, Lio/realm/RealmQuery;->distinctDescriptor:Lio/realm/internal/SortDescriptor;

    const/4 v6, 0x0

    invoke-static {p1}, Lio/realm/internal/sync/SubscriptionAction;->create(Ljava/lang/String;)Lio/realm/internal/sync/SubscriptionAction;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lio/realm/RealmQuery;->createRealmResults(Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;ZLio/realm/internal/sync/SubscriptionAction;)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0

    .line 1816
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-empty \'subscriptionName\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1813
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create subscriptions for queries based on a \'RealmList\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findFirst()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1969
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1971
    iget-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1973
    return-object v1

    .line 1976
    :cond_b
    invoke-direct {p0}, Lio/realm/RealmQuery;->getSourceRowIndexForFirstObject()J

    move-result-wide v2

    .line 1978
    .local v2, "tableRowIndex":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_16

    goto :goto_20

    :cond_16
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    iget-object v4, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v2, v3}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;

    move-result-object v1

    :goto_20
    return-object v1
.end method

.method public findFirstAsync()Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1992
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1994
    iget-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    if-nez v0, :cond_7f

    .line 1998
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "Async query cannot be created on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 2000
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2003
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;)Lio/realm/internal/OsResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->firstUncheckedRow()Lio/realm/internal/UncheckedRow;

    move-result-object v0

    goto :goto_3c

    .line 2011
    :cond_2b
    new-instance v0, Lio/realm/internal/PendingRow;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v3, p0, Lio/realm/RealmQuery;->sortDescriptor:Lio/realm/internal/SortDescriptor;

    invoke-direct {p0}, Lio/realm/RealmQuery;->isDynamicQuery()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/realm/internal/PendingRow;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Z)V

    .line 2014
    .local v0, "row":Lio/realm/internal/Row;
    :goto_3c
    invoke-direct {p0}, Lio/realm/RealmQuery;->isDynamicQuery()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2016
    new-instance v1, Lio/realm/DynamicRealmObject;

    iget-object v2, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-direct {v1, v2, v0}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Row;)V

    goto :goto_6d

    .line 2019
    :cond_4a
    iget-object v8, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    .line 2021
    .local v8, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    iget-object v3, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 2022
    invoke-virtual {v2}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    invoke-virtual {v2, v8}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v5

    const/4 v6, 0x0

    .line 2023
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 2021
    move-object v2, v8

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/RealmProxyMediator;->newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    .line 2026
    .end local v8    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    .local v1, "result":Ljava/lang/Object;, "TE;"
    :goto_6d
    instance-of v2, v0, Lio/realm/internal/PendingRow;

    if-eqz v2, :cond_7e

    .line 2027
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    .line 2028
    .local v2, "proxy":Lio/realm/internal/RealmObjectProxy;
    move-object v3, v0

    check-cast v3, Lio/realm/internal/PendingRow;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/realm/internal/PendingRow;->setFrontEnd(Lio/realm/internal/PendingRow$FrontEnd;)V

    .line 2031
    .end local v2    # "proxy":Lio/realm/internal/RealmObjectProxy;
    :cond_7e
    return-object v1

    .line 1995
    .end local v0    # "row":Lio/realm/internal/Row;
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :cond_7f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "findFirstAsync() available only when type parameter \'E\' is implementing RealmModel."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greaterThan(Ljava/lang/String;D)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1006
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1008
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1009
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lio/realm/internal/TableQuery;->greaterThan([J[JD)Lio/realm/internal/TableQuery;

    .line 1010
    return-object p0
.end method

.method public greaterThan(Ljava/lang/String;F)Lio/realm/RealmQuery;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1022
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1024
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1025
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/TableQuery;->greaterThan([J[JF)Lio/realm/internal/TableQuery;

    .line 1026
    return-object p0
.end method

.method public greaterThan(Ljava/lang/String;I)Lio/realm/RealmQuery;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 974
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 976
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 977
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/TableQuery;->greaterThan([J[JJ)Lio/realm/internal/TableQuery;

    .line 978
    return-object p0
.end method

.method public greaterThan(Ljava/lang/String;J)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 990
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 992
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 993
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lio/realm/internal/TableQuery;->greaterThan([J[JJ)Lio/realm/internal/TableQuery;

    .line 994
    return-object p0
.end method

.method public greaterThan(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1038
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1040
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1041
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/TableQuery;->greaterThan([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;

    .line 1042
    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;D)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1086
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1088
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1089
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lio/realm/internal/TableQuery;->greaterThanOrEqual([J[JD)Lio/realm/internal/TableQuery;

    .line 1090
    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;F)Lio/realm/RealmQuery;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1102
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1104
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1105
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/TableQuery;->greaterThanOrEqual([J[JF)Lio/realm/internal/TableQuery;

    .line 1106
    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;I)Lio/realm/RealmQuery;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1054
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1056
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1057
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/TableQuery;->greaterThanOrEqual([J[JJ)Lio/realm/internal/TableQuery;

    .line 1058
    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;J)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1070
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1072
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1073
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lio/realm/internal/TableQuery;->greaterThanOrEqual([J[JJ)Lio/realm/internal/TableQuery;

    .line 1074
    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1118
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1120
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1121
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/TableQuery;->greaterThanOrEqual([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;

    .line 1122
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Boolean;)Lio/realm/RealmQuery;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 714
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 717
    if-eqz p2, :cond_2a

    array-length v0, p2

    if-nez v0, :cond_b

    goto :goto_2a

    .line 721
    :cond_b
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    .line 722
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_16
    array-length v1, p2

    if-ge v0, v1, :cond_25

    .line 723
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 725
    .end local v0    # "i":I
    :cond_25
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0

    .line 718
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    .line 719
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Byte;)Lio/realm/RealmQuery;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Byte;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Byte;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 567
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 569
    if-eqz p2, :cond_2a

    array-length v0, p2

    if-nez v0, :cond_b

    goto :goto_2a

    .line 573
    :cond_b
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Byte;)Lio/realm/RealmQuery;

    .line 574
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_16
    array-length v1, p2

    if-ge v0, v1, :cond_25

    .line 575
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Byte;)Lio/realm/RealmQuery;

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 577
    .end local v0    # "i":I
    :cond_25
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0

    .line 570
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    .line 571
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Double;)Lio/realm/RealmQuery;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Double;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Double;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 665
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 667
    if-eqz p2, :cond_2a

    array-length v0, p2

    if-nez v0, :cond_b

    goto :goto_2a

    .line 671
    :cond_b
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Double;)Lio/realm/RealmQuery;

    .line 672
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_16
    array-length v1, p2

    if-ge v0, v1, :cond_25

    .line 673
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Double;)Lio/realm/RealmQuery;

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 675
    .end local v0    # "i":I
    :cond_25
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0

    .line 668
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    .line 669
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Float;)Lio/realm/RealmQuery;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Float;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 689
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 691
    if-eqz p2, :cond_2a

    array-length v0, p2

    if-nez v0, :cond_b

    goto :goto_2a

    .line 695
    :cond_b
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Float;)Lio/realm/RealmQuery;

    .line 696
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_16
    array-length v1, p2

    if-ge v0, v1, :cond_25

    .line 697
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Float;)Lio/realm/RealmQuery;

    .line 696
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 699
    .end local v0    # "i":I
    :cond_25
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0

    .line 692
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    .line 693
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 615
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 617
    if-eqz p2, :cond_2a

    array-length v0, p2

    if-nez v0, :cond_b

    goto :goto_2a

    .line 621
    :cond_b
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    .line 622
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_16
    array-length v1, p2

    if-ge v0, v1, :cond_25

    .line 623
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 625
    .end local v0    # "i":I
    :cond_25
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0

    .line 618
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    .line 619
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Long;)Lio/realm/RealmQuery;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Long;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 640
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 642
    if-eqz p2, :cond_2a

    array-length v0, p2

    if-nez v0, :cond_b

    goto :goto_2a

    .line 646
    :cond_b
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    .line 647
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_16
    array-length v1, p2

    if-ge v0, v1, :cond_25

    .line 648
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 650
    .end local v0    # "i":I
    :cond_25
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0

    .line 643
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    .line 644
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Short;)Lio/realm/RealmQuery;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Short;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Short;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 591
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 593
    if-eqz p2, :cond_2a

    array-length v0, p2

    if-nez v0, :cond_b

    goto :goto_2a

    .line 597
    :cond_b
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Short;)Lio/realm/RealmQuery;

    .line 598
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_16
    array-length v1, p2

    if-ge v0, v1, :cond_25

    .line 599
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/Short;)Lio/realm/RealmQuery;

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 601
    .end local v0    # "i":I
    :cond_25
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0

    .line 594
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    .line 595
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/RealmQuery;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 530
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->in(Ljava/lang/String;[Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "casing"    # Lio/realm/Case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 544
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 546
    if-eqz p2, :cond_2a

    array-length v0, p2

    if-nez v0, :cond_b

    goto :goto_2a

    .line 550
    :cond_b
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1, p3}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    .line 551
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_16
    array-length v1, p2

    if-ge v0, v1, :cond_25

    .line 552
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2, p3}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 554
    .end local v0    # "i":I
    :cond_25
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0

    .line 547
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    .line 548
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/util/Date;)Lio/realm/RealmQuery;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 739
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 741
    if-eqz p2, :cond_2a

    array-length v0, p2

    if-nez v0, :cond_b

    goto :goto_2a

    .line 745
    :cond_b
    invoke-direct {p0}, Lio/realm/RealmQuery;->beginGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p1, v1}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;

    .line 746
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_16
    array-length v1, p2

    if-ge v0, v1, :cond_25

    .line 747
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-direct {v1, p1, v2}, Lio/realm/RealmQuery;->equalToWithoutThreadValidation(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 749
    .end local v0    # "i":I
    :cond_25
    invoke-direct {p0}, Lio/realm/RealmQuery;->endGroupWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0

    .line 742
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    .line 743
    return-object p0
.end method

.method public isEmpty(Ljava/lang/String;)Lio/realm/RealmQuery;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1578
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1580
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x4

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1581
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isEmpty([J[J)Lio/realm/internal/TableQuery;

    .line 1583
    return-object p0
.end method

.method public isNotEmpty(Ljava/lang/String;)Lio/realm/RealmQuery;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1595
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1597
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x4

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1598
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNotEmpty([J[J)Lio/realm/internal/TableQuery;

    .line 1600
    return-object p0
.end method

.method public isNotNull(Ljava/lang/String;)Lio/realm/RealmQuery;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 270
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 272
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/RealmFieldType;

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 275
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    .line 276
    return-object p0
.end method

.method public isNull(Ljava/lang/String;)Lio/realm/RealmQuery;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 252
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 254
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/RealmFieldType;

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 257
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNull([J[J)Lio/realm/internal/TableQuery;

    .line 258
    return-object p0
.end method

.method public isValid()Z
    .registers 3

    .line 229
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_28

    .line 233
    :cond_e
    iget-object v0, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    if-eqz v0, :cond_19

    .line 234
    iget-object v0, p0, Lio/realm/RealmQuery;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->isValid()Z

    move-result v0

    return v0

    .line 236
    :cond_19
    iget-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->isValid()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v1, 0x1

    nop

    :cond_27
    return v1

    .line 230
    :cond_28
    :goto_28
    return v1
.end method

.method public lessThan(Ljava/lang/String;D)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1166
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1168
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1169
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lio/realm/internal/TableQuery;->lessThan([J[JD)Lio/realm/internal/TableQuery;

    .line 1170
    return-object p0
.end method

.method public lessThan(Ljava/lang/String;F)Lio/realm/RealmQuery;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1182
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1184
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1185
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/TableQuery;->lessThan([J[JF)Lio/realm/internal/TableQuery;

    .line 1186
    return-object p0
.end method

.method public lessThan(Ljava/lang/String;I)Lio/realm/RealmQuery;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1134
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1136
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1137
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/TableQuery;->lessThan([J[JJ)Lio/realm/internal/TableQuery;

    .line 1138
    return-object p0
.end method

.method public lessThan(Ljava/lang/String;J)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1150
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1152
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1153
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lio/realm/internal/TableQuery;->lessThan([J[JJ)Lio/realm/internal/TableQuery;

    .line 1154
    return-object p0
.end method

.method public lessThan(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1198
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1200
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1201
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/TableQuery;->lessThan([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;

    .line 1202
    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;D)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1246
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1248
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1249
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lio/realm/internal/TableQuery;->lessThanOrEqual([J[JD)Lio/realm/internal/TableQuery;

    .line 1250
    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;F)Lio/realm/RealmQuery;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1262
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1264
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1265
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/TableQuery;->lessThanOrEqual([J[JF)Lio/realm/internal/TableQuery;

    .line 1266
    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;I)Lio/realm/RealmQuery;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1214
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1216
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1217
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/TableQuery;->lessThanOrEqual([J[JJ)Lio/realm/internal/TableQuery;

    .line 1218
    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;J)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1230
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1232
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1233
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lio/realm/internal/TableQuery;->lessThanOrEqual([J[JJ)Lio/realm/internal/TableQuery;

    .line 1234
    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1278
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1280
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1281
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/TableQuery;->lessThanOrEqual([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;

    .line 1282
    return-object p0
.end method

.method public like(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1471
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->like(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public like(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "casing"    # Lio/realm/Case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1488
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1490
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 1491
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lio/realm/internal/TableQuery;->like([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;

    .line 1492
    return-object p0
.end method

.method public max(Ljava/lang/String;)Ljava/lang/Number;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1711
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1713
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 1714
    .local v0, "columnIndex":J
    sget-object v2, Lio/realm/RealmQuery$1;->$SwitchMap$io$realm$RealmFieldType:[I

    iget-object v3, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4a

    .line 1722
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, "int, float or double"

    aput-object v6, v4, v5

    const-string v5, "Field \'%s\': type mismatch - %s expected."

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1720
    :pswitch_35
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/TableQuery;->maximumDouble(J)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 1718
    :pswitch_3c
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/TableQuery;->maximumFloat(J)Ljava/lang/Float;

    move-result-object v2

    return-object v2

    .line 1716
    :pswitch_43
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/TableQuery;->maximumInt(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_43
        :pswitch_3c
        :pswitch_35
    .end packed-switch
.end method

.method public maximumDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1738
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1740
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 1741
    .local v0, "columnIndex":J
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/TableQuery;->maximumDate(J)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public min(Ljava/lang/String;)Ljava/lang/Number;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1667
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1669
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 1670
    .local v0, "columnIndex":J
    sget-object v2, Lio/realm/RealmQuery$1;->$SwitchMap$io$realm$RealmFieldType:[I

    iget-object v3, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4a

    .line 1678
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, "int, float or double"

    aput-object v6, v4, v5

    const-string v5, "Field \'%s\': type mismatch - %s expected."

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1676
    :pswitch_35
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/TableQuery;->minimumDouble(J)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 1674
    :pswitch_3c
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/TableQuery;->minimumFloat(J)Ljava/lang/Float;

    move-result-object v2

    return-object v2

    .line 1672
    :pswitch_43
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/TableQuery;->minimumInt(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_43
        :pswitch_3c
        :pswitch_35
    .end packed-switch
.end method

.method public minimumDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1694
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1696
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 1697
    .local v0, "columnIndex":J
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/TableQuery;->minimumDate(J)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public not()Lio/realm/RealmQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1563
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1565
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->not()Lio/realm/internal/TableQuery;

    .line 1566
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 934
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 936
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v2, v1, [Lio/realm/RealmFieldType;

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v2}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 937
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    if-nez p2, :cond_23

    .line 938
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_35

    .line 940
    :cond_23
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v3

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    xor-int/2addr v1, v5

    invoke-virtual {v2, v3, v4, v1}, Lio/realm/internal/TableQuery;->equalTo([J[JZ)Lio/realm/internal/TableQuery;

    .line 942
    :goto_35
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Byte;)Lio/realm/RealmQuery;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Byte;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 794
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 796
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 797
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    if-nez p2, :cond_23

    .line 798
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_35

    .line 800
    :cond_23
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/TableQuery;->notEqualTo([J[JJ)Lio/realm/internal/TableQuery;

    .line 802
    :goto_35
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Double;)Lio/realm/RealmQuery;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 894
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 896
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 897
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    if-nez p2, :cond_23

    .line 898
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_34

    .line 900
    :cond_23
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/TableQuery;->notEqualTo([J[JD)Lio/realm/internal/TableQuery;

    .line 902
    :goto_34
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Float;)Lio/realm/RealmQuery;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 914
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 916
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 917
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    if-nez p2, :cond_23

    .line 918
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_34

    .line 920
    :cond_23
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lio/realm/internal/TableQuery;->notEqualTo([J[JF)Lio/realm/internal/TableQuery;

    .line 922
    :goto_34
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 854
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 856
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 857
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    if-nez p2, :cond_23

    .line 858
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_35

    .line 860
    :cond_23
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/TableQuery;->notEqualTo([J[JJ)Lio/realm/internal/TableQuery;

    .line 862
    :goto_35
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 874
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 876
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 877
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    if-nez p2, :cond_23

    .line 878
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_34

    .line 880
    :cond_23
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/TableQuery;->notEqualTo([J[JJ)Lio/realm/internal/TableQuery;

    .line 882
    :goto_34
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Short;)Lio/realm/RealmQuery;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Short;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 834
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 836
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 837
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    if-nez p2, :cond_23

    .line 838
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_35

    .line 840
    :cond_23
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/TableQuery;->notEqualTo([J[JJ)Lio/realm/internal/TableQuery;

    .line 842
    :goto_35
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 762
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->notEqualTo(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "casing"    # Lio/realm/Case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 775
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 777
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v2, v1, [Lio/realm/RealmFieldType;

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v2}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 778
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->length()I

    move-result v2

    if-le v2, v1, :cond_28

    invoke-virtual {p3}, Lio/realm/Case;->getValue()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_28

    .line 779
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Link queries cannot be case insensitive - coming soon."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 781
    :cond_28
    :goto_28
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lio/realm/internal/TableQuery;->notEqualTo([J[JLjava/lang/String;Lio/realm/Case;)Lio/realm/internal/TableQuery;

    .line 782
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 954
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 956
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 957
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    if-nez p2, :cond_23

    .line 958
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_30

    .line 960
    :cond_23
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/TableQuery;->notEqualTo([J[JLjava/util/Date;)Lio/realm/internal/TableQuery;

    .line 962
    :goto_30
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;[B)Lio/realm/RealmQuery;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 814
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 816
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    .line 817
    .local v0, "fd":Lio/realm/internal/fields/FieldDescriptor;
    if-nez p2, :cond_23

    .line 818
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/TableQuery;->isNotNull([J[J)Lio/realm/internal/TableQuery;

    goto :goto_30

    .line 820
    :cond_23
    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getColumnIndices()[J

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/internal/fields/FieldDescriptor;->getNativeTablePointers()[J

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/TableQuery;->notEqualTo([J[J[B)Lio/realm/internal/TableQuery;

    .line 822
    :goto_30
    return-object p0
.end method

.method public or()Lio/realm/RealmQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1536
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1538
    invoke-direct {p0}, Lio/realm/RealmQuery;->orWithoutThreadValidation()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public sort(Ljava/lang/String;)Lio/realm/RealmQuery;
    .registers 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1834
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1835
    sget-object v0, Lio/realm/Sort;->ASCENDING:Lio/realm/Sort;

    invoke-virtual {p0, p1, v0}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "sortOrder"    # Lio/realm/Sort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1850
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1851
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array v0, v0, [Lio/realm/Sort;

    aput-object p2, v0, v2

    invoke-virtual {p0, v1, v0}, Lio/realm/RealmQuery;->sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public sort(Ljava/lang/String;Lio/realm/Sort;Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;
    .registers 9
    .param p1, "fieldName1"    # Ljava/lang/String;
    .param p2, "sortOrder1"    # Lio/realm/Sort;
    .param p3, "fieldName2"    # Ljava/lang/String;
    .param p4, "sortOrder2"    # Lio/realm/Sort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1869
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1870
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p3, v1, v3

    new-array v0, v0, [Lio/realm/Sort;

    aput-object p2, v0, v2

    aput-object p4, v0, v3

    invoke-virtual {p0, v1, v0}, Lio/realm/RealmQuery;->sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmQuery;
    .registers 5
    .param p1, "fieldNames"    # [Ljava/lang/String;
    .param p2, "sortOrders"    # [Lio/realm/Sort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1886
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1887
    iget-object v0, p0, Lio/realm/RealmQuery;->sortDescriptor:Lio/realm/internal/SortDescriptor;

    if-nez v0, :cond_1a

    .line 1890
    invoke-direct {p0}, Lio/realm/RealmQuery;->getSchemaConnector()Lio/realm/SchemaConnector;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v1}, Lio/realm/internal/TableQuery;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/SortDescriptor;->getInstanceForSort(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;[Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/internal/SortDescriptor;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmQuery;->sortDescriptor:Lio/realm/internal/SortDescriptor;

    .line 1891
    return-object p0

    .line 1888
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A sorting order was already defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sum(Ljava/lang/String;)Ljava/lang/Number;
    .registers 9
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 1613
    .local p0, "this":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1615
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 1616
    .local v0, "columnIndex":J
    sget-object v2, Lio/realm/RealmQuery$1;->$SwitchMap$io$realm$RealmFieldType:[I

    iget-object v3, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_56

    .line 1624
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, "int, float or double"

    aput-object v6, v4, v5

    const-string v5, "Field \'%s\': type mismatch - %s expected."

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1622
    :pswitch_35
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/TableQuery;->sumDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 1620
    :pswitch_40
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/TableQuery;->sumFloat(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 1618
    :pswitch_4b
    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/TableQuery;->sumInt(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_40
        :pswitch_35
    .end packed-switch
.end method

###### Class io.realm.RealmQuery.AnonymousClass1 (io.realm.RealmQuery$1)
.class synthetic Lio/realm/RealmQuery$1;
.super Ljava/lang/Object;
.source "RealmQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$realm$RealmFieldType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1616
    invoke-static {}, Lio/realm/RealmFieldType;->values()[Lio/realm/RealmFieldType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/realm/RealmQuery$1;->$SwitchMap$io$realm$RealmFieldType:[I

    :try_start_9
    sget-object v0, Lio/realm/RealmQuery$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lio/realm/RealmQuery$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Lio/realm/RealmQuery$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    return-void
.end method
