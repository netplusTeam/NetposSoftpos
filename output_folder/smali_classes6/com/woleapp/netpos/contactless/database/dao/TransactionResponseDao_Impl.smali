.class public final Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;
.super Ljava/lang/Object;
.source "TransactionResponseDao_Impl.java"

# interfaces
.implements Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfTransactionResponse:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfTransactionResponse:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation
.end field


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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 41
    new-instance v0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$1;-><init>(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->__insertionAdapterOfTransactionResponse:Landroidx/room/EntityInsertionAdapter;

    .line 195
    new-instance v0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$2;-><init>(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->__updateAdapterOfTransactionResponse:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 354
    return-void
.end method

.method private __PosMode_enumToString(Lcom/danbamitale/epmslib/entities/PosMode;)Ljava/lang/String;
    .locals 3
    .param p1, "_value"    # Lcom/danbamitale/epmslib/entities/PosMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_value"
        }
    .end annotation

    .line 1478
    if-nez p1, :cond_0

    .line 1479
    const/4 v0, 0x0

    return-object v0

    .line 1480
    :cond_0
    sget-object v0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$9;->$SwitchMap$com$danbamitale$epmslib$entities$PosMode:[I

    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/PosMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1484
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t convert enum to string, unknown enum value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1483
    :pswitch_0
    const-string v0, "ISW"

    return-object v0

    .line 1482
    :pswitch_1
    const-string v0, "POSVAS"

    return-object v0

    .line 1481
    :pswitch_2
    const-string v0, "EPMS"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private __PosMode_stringToEnum(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/PosMode;
    .locals 3
    .param p1, "_value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_value"
        }
    .end annotation

    .line 1489
    if-nez p1, :cond_0

    .line 1490
    const/4 v0, 0x0

    return-object v0

    .line 1491
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "EPMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "ISW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "POSVAS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t convert value to enum, unknown value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1494
    :pswitch_0
    sget-object v0, Lcom/danbamitale/epmslib/entities/PosMode;->ISW:Lcom/danbamitale/epmslib/entities/PosMode;

    return-object v0

    .line 1493
    :pswitch_1
    sget-object v0, Lcom/danbamitale/epmslib/entities/PosMode;->POSVAS:Lcom/danbamitale/epmslib/entities/PosMode;

    return-object v0

    .line 1492
    :pswitch_2
    sget-object v0, Lcom/danbamitale/epmslib/entities/PosMode;->EPMS:Lcom/danbamitale/epmslib/entities/PosMode;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72fc07ac -> :sswitch_2
        0x11c6d -> :sswitch_1
        0x209391 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;Lcom/danbamitale/epmslib/entities/PosMode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;
    .param p1, "x1"    # Lcom/danbamitale/epmslib/entities/PosMode;

    .line 32
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->__PosMode_enumToString(Lcom/danbamitale/epmslib/entities/PosMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

    .line 32
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

    .line 32
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->__insertionAdapterOfTransactionResponse:Landroidx/room/EntityInsertionAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

    .line 32
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->__updateAdapterOfTransactionResponse:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/PosMode;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->__PosMode_stringToEnum(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/PosMode;

    move-result-object v0

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

    .line 1474
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEndOfDayTransaction(JJLjava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 7
    .param p1, "beginningOfDay"    # J
    .param p3, "endOfDay"    # J
    .param p5, "terminalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "beginningOfDay",
            "endOfDay",
            "terminalId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;>;"
        }
    .end annotation

    .line 664
    const-string v0, "SELECT * FROM transactionresponse WHERE transactionTimeInMillis >= ? and transactionTimeInMillis <= ? and terminalId=? ORDER BY transactionTimeInMillis DESC"

    .line 665
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM transactionresponse WHERE transactionTimeInMillis >= ? and transactionTimeInMillis <= ? and terminalId=? ORDER BY transactionTimeInMillis DESC"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 666
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 667
    .local v2, "_argIndex":I
    invoke-virtual {v1, v2, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 668
    const/4 v2, 0x2

    .line 669
    invoke-virtual {v1, v2, p3, p4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 670
    const/4 v2, 0x3

    .line 671
    if-nez p5, :cond_0

    .line 672
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 674
    :cond_0
    invoke-virtual {v1, v2, p5}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 676
    :goto_0
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v3

    const-string v4, "transactionresponse"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$6;

    invoke-direct {v6, p0, v1}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$6;-><init>(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v3, v4, v5, v6}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    return-object v3
.end method

.method public getRefundableTransactions()Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;>;"
        }
    .end annotation

    .line 1211
    const-string v0, "SELECT * FROM transactionresponse WHERE transactionType LIKE \'%PURCHASE%\' AND responseCode=\'00\' ORDER BY id DESC"

    .line 1212
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM transactionresponse WHERE transactionType LIKE \'%PURCHASE%\' AND responseCode=\'00\' ORDER BY id DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1213
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v3

    const-string v4, "transactionresponse"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$8;

    invoke-direct {v5, p0, v1}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$8;-><init>(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v3, v4, v2, v5}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    return-object v2
.end method

.method public getTransactionByTransactionType(Lcom/danbamitale/epmslib/entities/TransactionType;)Landroidx/lifecycle/LiveData;
    .locals 8
    .param p1, "transactionType"    # Lcom/danbamitale/epmslib/entities/TransactionType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "transactionType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/danbamitale/epmslib/entities/TransactionType;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;>;"
        }
    .end annotation

    .line 939
    const-string v0, "SELECT * FROM transactionresponse WHERE transactionType=? ORDER BY id DESC"

    .line 940
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM transactionresponse WHERE transactionType=? ORDER BY id DESC"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 941
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 943
    .local v2, "_argIndex":I
    invoke-static {p1}, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters;->convertTransactionResponseEnumToString(Lcom/danbamitale/epmslib/entities/TransactionType;)Ljava/lang/String;

    move-result-object v3

    .line 944
    .local v3, "_tmp":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 945
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 947
    :cond_0
    invoke-virtual {v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 949
    :goto_0
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v4

    const-string v5, "transactionresponse"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$7;

    invoke-direct {v7, p0, v1}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$7;-><init>(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v4, v5, v6, v7}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    return-object v4
.end method

.method public getTransactions(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 7
    .param p1, "terminalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "terminalId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;>;"
        }
    .end annotation

    .line 393
    const-string v0, "SELECT * FROM transactionresponse WHERE terminalId=? ORDER BY id DESC"

    .line 394
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM transactionresponse WHERE terminalId=? ORDER BY id DESC"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 395
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 396
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 397
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 401
    :goto_0
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v3

    const-string v4, "transactionresponse"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$5;

    invoke-direct {v6, p0, v1}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$5;-><init>(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v3, v4, v5, v6}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    return-object v3
.end method

.method public insertNewTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/Single;
    .locals 1
    .param p1, "transactionResponse"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "transactionResponse"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 358
    new-instance v0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$3;-><init>(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;Lcom/danbamitale/epmslib/entities/TransactionResponse;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public updateTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/Single;
    .locals 1
    .param p1, "transactionResponse"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "transactionResponse"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 375
    new-instance v0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl$4;-><init>(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;Lcom/danbamitale/epmslib/entities/TransactionResponse;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method
