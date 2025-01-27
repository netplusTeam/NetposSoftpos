.class Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$3;
.super Ljava/lang/Object;
.source "MqttLocalDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->insertNewTransaction(Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

.field final synthetic val$mqttEventsLocal:Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$mqttEventsLocal"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$3;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$3;->val$mqttEventsLocal:Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$3;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->access$000(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$3;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->access$100(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)Landroidx/room/EntityInsertionAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$3;->val$mqttEventsLocal:Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;

    invoke-virtual {v0, v1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 81
    .local v0, "_result":J
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$3;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->access$000(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$3;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    invoke-static {v3}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->access$000(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 82
    return-object v2

    .line 84
    .end local v0    # "_result":J
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$3;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->access$000(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 85
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$3;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
