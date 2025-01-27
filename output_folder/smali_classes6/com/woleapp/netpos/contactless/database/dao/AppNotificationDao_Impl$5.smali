.class Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$5;
.super Ljava/lang/Object;
.source "AppNotificationDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->deleteMessage(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;

.field final synthetic val$message:Lcom/woleapp/netpos/contactless/model/AppCampaignModel;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$message"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$5;->this$0:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$5;->val$message:Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "_total":I
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$5;->this$0:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->access$000(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$5;->this$0:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->access$200(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$5;->val$message:Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    invoke-virtual {v1, v2}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$5;->this$0:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->access$000(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$5;->this$0:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->access$000(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 153
    return-object v1

    .line 155
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$5;->this$0:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->access$000(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 156
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$5;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
