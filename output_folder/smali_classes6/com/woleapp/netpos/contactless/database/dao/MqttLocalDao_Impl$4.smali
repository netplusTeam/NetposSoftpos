.class Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$4;
.super Ljava/lang/Object;
.source "MqttLocalDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->deleteAllEvents()Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$4;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

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

    .line 92
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$4;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->access$200(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 96
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$4;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->access$000(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 98
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 99
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$4;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->access$000(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    const/4 v1, 0x0

    .line 102
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$4;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->access$000(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 103
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$4;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->access$200(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 100
    return-object v1

    .line 102
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$4;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->access$000(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 103
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$4;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->access$200(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 104
    throw v1
.end method
