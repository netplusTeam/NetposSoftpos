.class Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$3;
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

    .line 86
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$3;->this$0:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V
    .locals 5
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

    .line 94
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 95
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 99
    :goto_0
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 100
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 104
    :goto_1
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getBody()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 105
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 107
    :cond_2
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 110
    :goto_2
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getHasBeenRead()Z

    move-result v0

    .line 111
    .local v0, "_tmp":I
    const/4 v1, 0x4

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 112
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getDate()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    if-nez v1, :cond_3

    .line 113
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 115
    :cond_3
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 117
    :goto_3
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getId()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    if-nez v1, :cond_4

    .line 118
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 120
    :cond_4
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 122
    :goto_4
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

    .line 86
    check-cast p2, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    invoke-virtual {p0, p1, p2}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "UPDATE OR ABORT `appNotification` SET `id` = ?,`title` = ?,`body` = ?,`hasBeenRead` = ?,`date` = ? WHERE `id` = ?"

    return-object v0
.end method
