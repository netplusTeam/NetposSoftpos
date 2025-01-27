.class Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$5;
.super Ljava/lang/Object;
.source "MqttLocalDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->getLocalEvents()Lio/reactivex/Single;
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
        "Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;
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

    .line 113
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$5;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

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

    .line 113
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$5;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$5;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->access$000(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 118
    .local v0, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "topic"

    invoke-static {v0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 119
    .local v1, "_cursorIndexOfTopic":I
    const-string v2, "data"

    invoke-static {v0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 120
    .local v2, "_cursorIndexOfData":I
    const-string v3, "cause"

    invoke-static {v0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 121
    .local v3, "_cursorIndexOfCause":I
    const-string v4, "id"

    invoke-static {v0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 122
    .local v4, "_cursorIndexOfId":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 126
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 127
    const/4 v6, 0x0

    .local v6, "_tmpTopic":Ljava/lang/String;
    goto :goto_1

    .line 129
    .end local v6    # "_tmpTopic":Ljava/lang/String;
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 132
    .restart local v6    # "_tmpTopic":Ljava/lang/String;
    :goto_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 133
    const/4 v7, 0x0

    .local v7, "_tmpData":Ljava/lang/String;
    goto :goto_2

    .line 135
    .end local v7    # "_tmpData":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 138
    .restart local v7    # "_tmpData":Ljava/lang/String;
    :goto_2
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 139
    const/4 v8, 0x0

    .local v8, "_tmpCause":Ljava/lang/String;
    goto :goto_3

    .line 141
    .end local v8    # "_tmpCause":Ljava/lang/String;
    :cond_2
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 143
    .restart local v8    # "_tmpCause":Ljava/lang/String;
    :goto_3
    new-instance v9, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;

    invoke-direct {v9, v6, v7, v8}, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v9, "_item":Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 146
    .local v10, "_tmpId":I
    invoke-virtual {v9, v10}, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;->setId(I)V

    .line 147
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    nop

    .end local v6    # "_tmpTopic":Ljava/lang/String;
    .end local v7    # "_tmpData":Ljava/lang/String;
    .end local v8    # "_tmpCause":Ljava/lang/String;
    .end local v9    # "_item":Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    .end local v10    # "_tmpId":I
    goto :goto_0

    .line 149
    :cond_3
    nop

    .line 152
    nop

    .line 154
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 152
    return-object v5

    .line 154
    .end local v1    # "_cursorIndexOfTopic":I
    .end local v2    # "_cursorIndexOfData":I
    .end local v3    # "_cursorIndexOfCause":I
    .end local v4    # "_cursorIndexOfId":I
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 155
    throw v1
.end method

.method protected finalize()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 161
    return-void
.end method
