.class Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;
.super Ljava/lang/Object;
.source "OneShotChannelAdaptorMK2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckChannelTask"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;


# direct methods
.method private constructor <init>(Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;
    .param p2, "x1"    # Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$1;

    .line 210
    invoke-direct {p0, p1}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;-><init>(Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;)V

    return-void
.end method

.method private isChannelConnectable(Z)Z
    .locals 6
    .param p1, "showExceptions"    # Z

    .line 247
    const-string v0, "channel."

    const/4 v1, 0x0

    .line 249
    .local v1, "res":Z
    const/4 v2, 0x0

    .line 252
    .local v2, "channel":Lorg/jpos/iso/ISOChannel;
    :try_start_0
    iget-object v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    iget-object v4, v3, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->channelElement:Lorg/jdom2/Element;

    iget-object v5, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v5}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->access$400(Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)Lorg/jpos/iso/ISOChannel;

    move-result-object v3

    move-object v2, v3

    .line 253
    nop

    instance-of v3, v2, Lorg/jpos/iso/BaseChannel;

    if-eqz v3, :cond_0

    .line 255
    move-object v3, v2

    check-cast v3, Lorg/jpos/iso/BaseChannel;

    .line 256
    .local v3, "bc":Lorg/jpos/iso/BaseChannel;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lorg/jpos/iso/BaseChannel;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 258
    .end local v3    # "bc":Lorg/jpos/iso/BaseChannel;
    :cond_0
    invoke-interface {v2}, Lorg/jpos/iso/ISOChannel;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    const/4 v1, 0x1

    .line 270
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 274
    :try_start_1
    invoke-interface {v2}, Lorg/jpos/iso/ISOChannel;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    goto :goto_0

    .line 276
    :catch_0
    move-exception v3

    .line 278
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 280
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2}, Lorg/jpos/iso/ISOChannel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    goto :goto_6

    .line 270
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 261
    :catch_1
    move-exception v3

    .line 263
    .local v3, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_2

    .line 265
    :try_start_2
    iget-object v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 270
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 274
    :try_start_3
    invoke-interface {v2}, Lorg/jpos/iso/ISOChannel;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 279
    goto :goto_3

    .line 276
    :catch_2
    move-exception v4

    .line 278
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v5}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getLog()Lorg/jpos/util/Log;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 280
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2}, Lorg/jpos/iso/ISOChannel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 282
    :cond_1
    throw v3

    .line 270
    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 274
    :try_start_4
    invoke-interface {v2}, Lorg/jpos/iso/ISOChannel;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 279
    goto :goto_5

    .line 276
    :catch_3
    move-exception v3

    .line 278
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 280
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 284
    :cond_3
    :goto_6
    return v1
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 217
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    iget-object v0, v0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    iget-object v1, v1, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->ready:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 218
    .local v0, "lastOnline":Ljava/util/Date;
    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v1}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;)Lorg/jpos/util/LogEvent;

    move-result-object v1

    .line 219
    .local v1, "ev":Lorg/jpos/util/LogEvent;
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;->isChannelConnectable(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    if-nez v0, :cond_0

    .line 223
    const-string v2, "Channel is now online"

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 224
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 225
    iget-object v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-static {v2}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->access$100(Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;)V

    .line 227
    :cond_0
    iget-object v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-static {v2}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->access$200(Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-static {v2}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->access$300(Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;)V

    .line 232
    if-eqz v0, :cond_2

    .line 234
    const-string v2, "Channel is now offline"

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 235
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .end local v0    # "lastOnline":Ljava/util/Date;
    .end local v1    # "ev":Lorg/jpos/util/LogEvent;
    :cond_2
    :goto_0
    goto :goto_1

    .line 239
    :catchall_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v1}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$CheckChannelTask;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v2}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
