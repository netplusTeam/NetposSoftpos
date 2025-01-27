.class public Lorg/jpos/q2/iso/ChannelAdaptor$Sender;
.super Ljava/lang/Object;
.source "ChannelAdaptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/q2/iso/ChannelAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sender"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/q2/iso/ChannelAdaptor;


# direct methods
.method public constructor <init>(Lorg/jpos/q2/iso/ChannelAdaptor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/q2/iso/ChannelAdaptor;

    .line 287
    iput-object p1, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 291
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel-sender-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v3, v3, Lorg/jpos/q2/iso/ChannelAdaptor;->in:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 292
    :goto_0
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v0}, Lorg/jpos/q2/iso/ChannelAdaptor;->running()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    const-wide/16 v0, 0x3e8

    :try_start_0
    iget-object v3, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v3}, Lorg/jpos/q2/iso/ChannelAdaptor;->checkConnection()V

    .line 295
    iget-object v3, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v3}, Lorg/jpos/q2/iso/ChannelAdaptor;->running()Z

    move-result v3

    if-nez v3, :cond_0

    .line 296
    goto/16 :goto_2

    .line 297
    :cond_0
    iget-object v3, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v3, v3, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v4, v4, Lorg/jpos/q2/iso/ChannelAdaptor;->in:Ljava/lang/String;

    iget-object v5, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-wide v5, v5, Lorg/jpos/q2/iso/ChannelAdaptor;->delay:J

    invoke-interface {v3, v4, v5, v6}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 298
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Lorg/jpos/iso/ISOMsg;

    if-eqz v4, :cond_1

    .line 299
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-static {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->access$000(Lorg/jpos/q2/iso/ChannelAdaptor;)Lorg/jpos/iso/ISOChannel;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Lorg/jpos/iso/ISOMsg;

    invoke-interface {v4, v5}, Lorg/jpos/iso/ISOChannel;->send(Lorg/jpos/iso/ISOMsg;)V

    .line 300
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget v5, v4, Lorg/jpos/q2/iso/ChannelAdaptor;->tx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/jpos/q2/iso/ChannelAdaptor;->tx:I

    goto/16 :goto_1

    .line 302
    :cond_1
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-boolean v4, v4, Lorg/jpos/q2/iso/ChannelAdaptor;->keepAlive:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-static {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->access$000(Lorg/jpos/q2/iso/ChannelAdaptor;)Lorg/jpos/iso/ISOChannel;

    move-result-object v4

    invoke-interface {v4}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-static {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->access$000(Lorg/jpos/q2/iso/ChannelAdaptor;)Lorg/jpos/iso/ISOChannel;

    move-result-object v4

    instance-of v4, v4, Lorg/jpos/iso/BaseChannel;

    if-eqz v4, :cond_3

    .line 303
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-static {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->access$000(Lorg/jpos/q2/iso/ChannelAdaptor;)Lorg/jpos/iso/ISOChannel;

    move-result-object v4

    check-cast v4, Lorg/jpos/iso/BaseChannel;

    invoke-virtual {v4}, Lorg/jpos/iso/BaseChannel;->sendKeepAlive()V
    :try_end_0
    .catch Lorg/jpos/iso/ISOFilter$VetoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 313
    .end local v3    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 314
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v6, v6, Lorg/jpos/q2/iso/ChannelAdaptor;->in:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->disconnect()V

    .line 316
    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 307
    :catch_1
    move-exception v3

    .line 308
    .local v3, "e":Lorg/jpos/iso/ISOException;
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v6, v6, Lorg/jpos/q2/iso/ChannelAdaptor;->in:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/jpos/iso/ISOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-boolean v4, v4, Lorg/jpos/q2/iso/ChannelAdaptor;->ignoreISOExceptions:Z

    if-nez v4, :cond_2

    .line 310
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->disconnect()V

    .line 312
    :cond_2
    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    .end local v3    # "e":Lorg/jpos/iso/ISOException;
    goto :goto_1

    .line 305
    :catch_2
    move-exception v0

    .line 306
    .local v0, "e":Lorg/jpos/iso/ISOFilter$VetoException;
    iget-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v1}, Lorg/jpos/q2/iso/ChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v4, v4, Lorg/jpos/q2/iso/ChannelAdaptor;->in:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jpos/iso/ISOFilter$VetoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 317
    .end local v0    # "e":Lorg/jpos/iso/ISOFilter$VetoException;
    :cond_3
    :goto_1
    goto/16 :goto_0

    .line 319
    :cond_4
    :goto_2
    return-void
.end method
