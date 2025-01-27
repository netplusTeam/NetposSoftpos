.class Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$7;
.super Ljava/lang/Object;
.source "AppNotificationDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->getAllMessages()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$7;->this$0:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$7;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$7;->this$0:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->access$000(Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 188
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 189
    .local v0, "_cursorIndexOfId":I
    const-string v4, "title"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 190
    .local v4, "_cursorIndexOfTitle":I
    const-string v5, "body"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 191
    .local v5, "_cursorIndexOfBody":I
    const-string v6, "hasBeenRead"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 192
    .local v6, "_cursorIndexOfHasBeenRead":I
    const-string v7, "date"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 193
    .local v7, "_cursorIndexOfDate":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/woleapp/netpos/contactless/model/AppCampaignModel;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 197
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 198
    const/4 v9, 0x0

    .local v9, "_tmpId":Ljava/lang/Long;
    goto :goto_1

    .line 200
    .end local v9    # "_tmpId":Ljava/lang/Long;
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 203
    .restart local v9    # "_tmpId":Ljava/lang/Long;
    :goto_1
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 204
    const/4 v10, 0x0

    move-object/from16 v16, v10

    .local v10, "_tmpTitle":Ljava/lang/String;
    goto :goto_2

    .line 206
    .end local v10    # "_tmpTitle":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    .line 209
    .local v16, "_tmpTitle":Ljava/lang/String;
    :goto_2
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 210
    const/4 v10, 0x0

    move-object/from16 v17, v10

    .local v10, "_tmpBody":Ljava/lang/String;
    goto :goto_3

    .line 212
    .end local v10    # "_tmpBody":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v10

    .line 216
    .local v17, "_tmpBody":Ljava/lang/String;
    :goto_3
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v18, v10

    .line 217
    .local v18, "_tmp":I
    if-eqz v18, :cond_3

    const/4 v10, 0x1

    move v14, v10

    goto :goto_4

    :cond_3
    move v14, v3

    .line 219
    .local v14, "_tmpHasBeenRead":Z
    :goto_4
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 220
    const/4 v10, 0x0

    move-object/from16 v19, v10

    .local v10, "_tmpDate":Ljava/lang/String;
    goto :goto_5

    .line 222
    .end local v10    # "_tmpDate":Ljava/lang/String;
    :cond_4
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v19, v10

    .line 224
    .local v19, "_tmpDate":Ljava/lang/String;
    :goto_5
    new-instance v20, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    move-object/from16 v10, v20

    move-object v11, v9

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v15, v19

    invoke-direct/range {v10 .. v15}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v10, v20

    .line 225
    .local v10, "_item":Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    nop

    .end local v9    # "_tmpId":Ljava/lang/Long;
    .end local v10    # "_item":Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    .end local v14    # "_tmpHasBeenRead":Z
    .end local v16    # "_tmpTitle":Ljava/lang/String;
    .end local v17    # "_tmpBody":Ljava/lang/String;
    .end local v18    # "_tmp":I
    .end local v19    # "_tmpDate":Ljava/lang/String;
    goto :goto_0

    .line 227
    :cond_5
    nop

    .line 229
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 227
    return-object v8

    .line 229
    .end local v0    # "_cursorIndexOfId":I
    .end local v4    # "_cursorIndexOfTitle":I
    .end local v5    # "_cursorIndexOfBody":I
    .end local v6    # "_cursorIndexOfHasBeenRead":I
    .end local v7    # "_cursorIndexOfDate":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/woleapp/netpos/contactless/model/AppCampaignModel;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 230
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl$7;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 236
    return-void
.end method
