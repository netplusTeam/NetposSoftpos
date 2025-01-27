.class public Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;
.super Ljava/lang/Object;
.source "OneShotChannelAdaptorMK2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Worker"
.end annotation


# instance fields
.field id:I

.field req:Lorg/jpos/iso/ISOMsg;

.field final synthetic this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;


# direct methods
.method public constructor <init>(Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;Lorg/jpos/iso/ISOMsg;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;
    .param p2, "req"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "id"    # I

    .line 479
    iput-object p1, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-object p2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->req:Lorg/jpos/iso/ISOMsg;

    .line 481
    iput p3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->id:I

    .line 482
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 486
    const-string v0, "channel."

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel-worker-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 487
    const/4 v1, 0x0

    .line 491
    .local v1, "channel":Lorg/jpos/iso/ISOChannel;
    :try_start_0
    iget-object v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    iget-object v4, v2, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->channelElement:Lorg/jdom2/Element;

    iget-object v5, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v5}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->access$400(Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)Lorg/jpos/iso/ISOChannel;

    move-result-object v2

    move-object v1, v2

    .line 492
    iget-object v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v2}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jpos/iso/ISOChannel;->setName(Ljava/lang/String;)V

    .line 497
    :cond_0
    const/4 v2, 0x0

    .line 498
    .local v2, "handBack":Lorg/jpos/iso/ISOMsg;
    iget-object v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    iget-object v4, v4, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->handbackFields:[I

    array-length v4, v4

    if-lez v4, :cond_1

    .line 500
    iget-object v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->req:Lorg/jpos/iso/ISOMsg;

    iget-object v5, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    iget-object v5, v5, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->handbackFields:[I

    invoke-virtual {v4, v5}, Lorg/jpos/iso/ISOMsg;->clone([I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/iso/ISOMsg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v2, v4

    .line 504
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lorg/jpos/iso/ISOChannel;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    goto :goto_0

    .line 506
    :catchall_0
    move-exception v4

    .line 508
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2
    iget-object v5, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-static {v5}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->access$300(Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;)V

    .line 510
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-interface {v1}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 512
    iget-object v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-static {v4}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->access$200(Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;)V

    .line 513
    iget-object v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->req:Lorg/jpos/iso/ISOMsg;

    invoke-interface {v1, v4}, Lorg/jpos/iso/ISOChannel;->send(Lorg/jpos/iso/ISOMsg;)V

    .line 514
    invoke-interface {v1}, Lorg/jpos/iso/ISOChannel;->receive()Lorg/jpos/iso/ISOMsg;

    move-result-object v4

    .line 515
    .local v4, "rsp":Lorg/jpos/iso/ISOMsg;
    invoke-interface {v1}, Lorg/jpos/iso/ISOChannel;->disconnect()V

    .line 516
    if-eqz v2, :cond_2

    .line 518
    invoke-virtual {v4, v2}, Lorg/jpos/iso/ISOMsg;->merge(Lorg/jpos/iso/ISOMsg;)V

    .line 520
    :cond_2
    iget-object v5, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    iget-object v5, v5, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->sp:Lorg/jpos/space/Space;

    iget-object v6, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    iget-object v6, v6, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->out:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 531
    .end local v2    # "handBack":Lorg/jpos/iso/ISOMsg;
    .end local v4    # "rsp":Lorg/jpos/iso/ISOMsg;
    :cond_3
    if-eqz v1, :cond_4

    .line 533
    :try_start_3
    invoke-interface {v1}, Lorg/jpos/iso/ISOChannel;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 542
    :catchall_1
    move-exception v2

    goto :goto_1

    .line 536
    :catch_0
    move-exception v2

    .line 538
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 542
    .end local v2    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v3}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 543
    throw v2

    .line 542
    :cond_4
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5

    .line 529
    :catchall_2
    move-exception v2

    goto/16 :goto_6

    .line 523
    :catch_1
    move-exception v2

    .line 525
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 531
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_5

    .line 533
    :try_start_6
    invoke-interface {v1}, Lorg/jpos/iso/ISOChannel;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    .line 542
    :catchall_3
    move-exception v2

    goto :goto_3

    .line 536
    :catch_2
    move-exception v2

    .line 538
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_7
    iget-object v4, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 542
    .end local v2    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v3}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 543
    throw v2

    .line 542
    :cond_5
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v2}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 543
    nop

    .line 544
    nop

    .line 545
    return-void

    .line 531
    :goto_6
    if-eqz v1, :cond_6

    .line 533
    :try_start_8
    invoke-interface {v1}, Lorg/jpos/iso/ISOChannel;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_8

    .line 542
    :catchall_4
    move-exception v2

    goto :goto_7

    .line 536
    :catch_3
    move-exception v4

    .line 538
    .local v4, "e":Ljava/lang/Exception;
    :try_start_9
    iget-object v5, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v5}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getLog()Lorg/jpos/util/Log;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->id:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 542
    .end local v4    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_9

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v3}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 543
    throw v2

    .line 542
    :cond_6
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->this$0:Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;

    invoke-virtual {v3}, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lorg/jpos/q2/iso/OneShotChannelAdaptorMK2$Worker;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 543
    nop

    .line 544
    throw v2
.end method
