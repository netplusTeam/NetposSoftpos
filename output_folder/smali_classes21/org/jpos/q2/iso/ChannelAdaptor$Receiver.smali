.class public Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;
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
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/q2/iso/ChannelAdaptor;


# direct methods
.method public constructor <init>(Lorg/jpos/q2/iso/ChannelAdaptor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/q2/iso/ChannelAdaptor;

    .line 323
    iput-object p1, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 327
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel-receiver-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v3, v3, Lorg/jpos/q2/iso/ChannelAdaptor;->out:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 328
    :goto_0
    iget-object v0, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v0}, Lorg/jpos/q2/iso/ChannelAdaptor;->running()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 330
    const-wide/16 v0, 0x3e8

    :try_start_0
    iget-object v3, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v3, v3, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v4, v4, Lorg/jpos/q2/iso/ChannelAdaptor;->ready:Ljava/lang/String;

    const-wide/16 v5, 0x1388

    invoke-interface {v3, v4, v5, v6}, Lorg/jpos/space/Space;->rd(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 331
    .local v3, "r":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 332
    goto :goto_0

    .line 333
    :cond_0
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-static {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->access$000(Lorg/jpos/q2/iso/ChannelAdaptor;)Lorg/jpos/iso/ISOChannel;

    move-result-object v4

    invoke-interface {v4}, Lorg/jpos/iso/ISOChannel;->receive()Lorg/jpos/iso/ISOMsg;

    move-result-object v4

    .line 334
    .local v4, "m":Lorg/jpos/iso/ISOMsg;
    iget-object v5, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget v6, v5, Lorg/jpos/q2/iso/ChannelAdaptor;->rx:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/jpos/q2/iso/ChannelAdaptor;->rx:I

    .line 335
    iget-object v5, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lorg/jpos/q2/iso/ChannelAdaptor;->lastTxn:J

    .line 336
    iget-object v5, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-wide v5, v5, Lorg/jpos/q2/iso/ChannelAdaptor;->timeout:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 337
    iget-object v5, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v5, v5, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v6, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v6, v6, Lorg/jpos/q2/iso/ChannelAdaptor;->out:Ljava/lang/String;

    iget-object v7, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-wide v7, v7, Lorg/jpos/q2/iso/ChannelAdaptor;->timeout:J

    invoke-interface {v5, v6, v4, v7, v8}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_2

    .line 339
    :cond_1
    iget-object v5, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v5, v5, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v6, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v6, v6, Lorg/jpos/q2/iso/ChannelAdaptor;->out:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOFilter$VetoException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 360
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "m":Lorg/jpos/iso/ISOMsg;
    :catch_0
    move-exception v3

    .line 361
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->running()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 362
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v6, v6, Lorg/jpos/q2/iso/ChannelAdaptor;->out:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v4, v4, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v5, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v5, v5, Lorg/jpos/q2/iso/ChannelAdaptor;->reconnect:Ljava/lang/String;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-wide v7, v7, Lorg/jpos/q2/iso/ChannelAdaptor;->delay:J

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 364
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->disconnect()V

    .line 365
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v4, v4, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v5, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v5, v5, Lorg/jpos/q2/iso/ChannelAdaptor;->in:Ljava/lang/String;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 366
    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    goto/16 :goto_2

    .line 352
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    .line 353
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->running()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 354
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v6, v6, Lorg/jpos/q2/iso/ChannelAdaptor;->out:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Read timeout / EOF - reconnecting"

    invoke-virtual {v4, v5, v6}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 355
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v4, v4, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v5, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v5, v5, Lorg/jpos/q2/iso/ChannelAdaptor;->reconnect:Ljava/lang/String;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-wide v7, v7, Lorg/jpos/q2/iso/ChannelAdaptor;->delay:J

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 356
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->disconnect()V

    .line 357
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v4, v4, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v5, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v5, v5, Lorg/jpos/q2/iso/ChannelAdaptor;->in:Ljava/lang/String;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    goto/16 :goto_2

    .line 342
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 343
    .local v3, "e":Lorg/jpos/iso/ISOException;
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->running()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 344
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v6, v6, Lorg/jpos/q2/iso/ChannelAdaptor;->out:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 345
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-boolean v4, v4, Lorg/jpos/q2/iso/ChannelAdaptor;->ignoreISOExceptions:Z

    if-nez v4, :cond_2

    .line 346
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v4, v4, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v5, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v5, v5, Lorg/jpos/q2/iso/ChannelAdaptor;->reconnect:Ljava/lang/String;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-wide v7, v7, Lorg/jpos/q2/iso/ChannelAdaptor;->delay:J

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 347
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/ChannelAdaptor;->disconnect()V

    .line 348
    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v4, v4, Lorg/jpos/q2/iso/ChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v5, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v5, v5, Lorg/jpos/q2/iso/ChannelAdaptor;->in:Ljava/lang/String;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    :cond_2
    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    goto :goto_2

    .line 340
    .end local v3    # "e":Lorg/jpos/iso/ISOException;
    :catch_4
    move-exception v0

    .line 341
    .local v0, "e":Lorg/jpos/iso/ISOFilter$VetoException;
    iget-object v1, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    invoke-virtual {v1}, Lorg/jpos/q2/iso/ChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jpos/q2/iso/ChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/ChannelAdaptor;

    iget-object v4, v4, Lorg/jpos/q2/iso/ChannelAdaptor;->out:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-veto-exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jpos/iso/ISOFilter$VetoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 368
    .end local v0    # "e":Lorg/jpos/iso/ISOFilter$VetoException;
    :cond_3
    :goto_2
    goto/16 :goto_0

    .line 370
    :cond_4
    return-void
.end method
