.class public final Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;
.super Ljava/lang/Object;
.source "AppNotificationDao_Impl.java"

# interfaces
.implements Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfAppCampaignModel:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfAppCampaignModel:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfAppCampaignModel:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 38
    new-instance v0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$1;-><init>(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->__insertionAdapterOfAppCampaignModel:Landroidx/room/EntityInsertionAdapter;

    .line 71
    new-instance v0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$2;-><init>(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->__deletionAdapterOfAppCampaignModel:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 86
    new-instance v0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$3;-><init>(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->__updateAdapterOfAppCampaignModel:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;

    .line 27
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;

    .line 27
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->__insertionAdapterOfAppCampaignModel:Landroidx/room/EntityInsertionAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;

    .line 27
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->__deletionAdapterOfAppCampaignModel:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;

    .line 27
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->__updateAdapterOfAppCampaignModel:Landroidx/room/EntityDeletionOrUpdateAdapter;

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

    .line 306
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteMessage(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)Lio/reactivex/Single;
    .locals 1
    .param p1, "message"    # Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$5;-><init>(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public getAllMessages()Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ">;>;"
        }
    .end annotation

    .line 181
    const-string v0, "SELECT * FROM appNotification ORDER BY id DESC"

    .line 182
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM appNotification ORDER BY id DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 183
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v3

    const-string v4, "appNotification"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$7;

    invoke-direct {v5, p0, v1}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$7;-><init>(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v3, v4, v2, v5}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    return-object v2
.end method

.method public getAllMessagesByHasBeenReadStatus(Z)Landroidx/lifecycle/LiveData;
    .locals 8
    .param p1, "read"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "read"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ">;>;"
        }
    .end annotation

    .line 242
    const-string v0, "SELECT * FROM appNotification WHERE hasBeenRead = ? ORDER BY id DESC"

    .line 243
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM appNotification WHERE hasBeenRead = ? ORDER BY id DESC"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 244
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 246
    .local v2, "_argIndex":I
    move v3, p1

    .line 247
    .local v3, "_tmp":I
    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 248
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v4

    const-string v5, "appNotification"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$8;

    invoke-direct {v7, p0, v1}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$8;-><init>(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v4, v5, v6, v7}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    return-object v4
.end method

.method public insertMessage(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)Lio/reactivex/Single;
    .locals 1
    .param p1, "message"    # Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$4;-><init>(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public markMessageHasRead(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)Lio/reactivex/Single;
    .locals 1
    .param p1, "message"    # Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$6;-><init>(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method
