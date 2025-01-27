.class public final Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;
.super Ljava/lang/Object;
.source "MqttLocalDao_Impl.java"

# interfaces
.implements Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfMqttEventsLocal:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAllEvents:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 38
    new-instance v0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$1;-><init>(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->__insertionAdapterOfMqttEventsLocal:Landroidx/room/EntityInsertionAdapter;

    .line 64
    new-instance v0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$2;-><init>(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->__preparedStmtOfDeleteAllEvents:Landroidx/room/SharedSQLiteStatement;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    .line 29
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    .line 29
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->__insertionAdapterOfMqttEventsLocal:Landroidx/room/EntityInsertionAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    .line 29
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->__preparedStmtOfDeleteAllEvents:Landroidx/room/SharedSQLiteStatement;

    return-object v0
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllEvents()Lio/reactivex/Completable;
    .locals 1

    .line 92
    new-instance v0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$4;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$4;-><init>(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public getLocalEvents()Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;",
            ">;>;"
        }
    .end annotation

    .line 111
    const-string v0, "SELECT * FROM mqttEvents"

    .line 112
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM mqttEvents"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 113
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    new-instance v2, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$5;

    invoke-direct {v2, p0, v1}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$5;-><init>(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2}, Landroidx/room/RxRoom;->createSingle(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v2

    return-object v2
.end method

.method public getNumberOfFailedTransactions()Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 167
    const-string v0, "SELECT COUNT(*) from mqttEvents"

    .line 168
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT COUNT(*) from mqttEvents"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 169
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    new-instance v2, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$6;

    invoke-direct {v2, p0, v1}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$6;-><init>(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2}, Landroidx/room/RxRoom;->createSingle(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v2

    return-object v2
.end method

.method public insertNewTransaction(Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;)Lio/reactivex/Single;
    .locals 1
    .param p1, "mqttEventsLocal"    # Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mqttEventsLocal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$3;-><init>(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method
