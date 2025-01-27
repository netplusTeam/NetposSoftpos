.class Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "AppNotificationDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;
    .param p2, "database"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$2;->this$0:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V
    .locals 4
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 79
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 80
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 84
    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 71
    check-cast p2, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    invoke-virtual {p0, p1, p2}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "DELETE FROM `appNotification` WHERE `id` = ?"

    return-object v0
.end method
