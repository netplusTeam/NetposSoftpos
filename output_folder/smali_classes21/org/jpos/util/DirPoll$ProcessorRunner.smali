.class public Lorg/jpos/util/DirPoll$ProcessorRunner;
.super Ljava/lang/Object;
.source "DirPoll.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/util/DirPoll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessorRunner"
.end annotation


# instance fields
.field logEvent:Lorg/jpos/util/LogEvent;

.field request:Ljava/io/File;

.field final synthetic this$0:Lorg/jpos/util/DirPoll;


# direct methods
.method public constructor <init>(Lorg/jpos/util/DirPoll;Ljava/io/File;)V
    .locals 1
    .param p1, "this$0"    # Lorg/jpos/util/DirPoll;
    .param p2, "request"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    iput-object p1, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    invoke-static {p1}, Lorg/jpos/util/DirPoll;->access$000(Lorg/jpos/util/DirPoll;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/jpos/util/DirPoll;->access$100(Lorg/jpos/util/DirPoll;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->request:Ljava/io/File;

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->logEvent:Lorg/jpos/util/LogEvent;

    .line 423
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 425
    new-instance v0, Lorg/jpos/util/LogEvent;

    iget-object v1, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    const-string v2, "dirpoll"

    iget-object v3, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->request:Ljava/io/File;

    .line 427
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    iget-object v1, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    invoke-static {v1}, Lorg/jpos/util/DirPoll;->access$200(Lorg/jpos/util/DirPoll;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 433
    iget-object v1, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    invoke-static {v1}, Lorg/jpos/util/DirPoll;->access$200(Lorg/jpos/util/DirPoll;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/jpos/util/DirPoll$Processor;

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    invoke-static {v1}, Lorg/jpos/util/DirPoll;->access$200(Lorg/jpos/util/DirPoll;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/util/DirPoll$Processor;

    iget-object v2, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->request:Ljava/io/File;

    .line 435
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    iget-object v4, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->request:Ljava/io/File;

    invoke-static {v3, v4}, Lorg/jpos/util/DirPoll;->access$300(Lorg/jpos/util/DirPoll;Ljava/io/File;)[B

    move-result-object v3

    .line 434
    invoke-interface {v1, v2, v3}, Lorg/jpos/util/DirPoll$Processor;->process(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 437
    .local v1, "resp":[B
    if-eqz v1, :cond_1

    .line 438
    iget-object v2, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    iget-object v3, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->request:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/jpos/util/DirPoll;->access$400(Lorg/jpos/util/DirPoll;Ljava/lang/String;[B)V

    goto :goto_0

    .line 439
    .end local v1    # "resp":[B
    :cond_0
    iget-object v1, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    invoke-static {v1}, Lorg/jpos/util/DirPoll;->access$200(Lorg/jpos/util/DirPoll;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/jpos/util/DirPoll$FileProcessor;

    if-eqz v1, :cond_1

    .line 440
    iget-object v1, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    invoke-static {v1}, Lorg/jpos/util/DirPoll;->access$200(Lorg/jpos/util/DirPoll;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/util/DirPoll$FileProcessor;

    iget-object v2, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->request:Ljava/io/File;

    invoke-interface {v1, v2}, Lorg/jpos/util/DirPoll$FileProcessor;->process(Ljava/io/File;)V

    goto :goto_1

    .line 439
    :cond_1
    :goto_0
    nop

    .line 442
    :goto_1
    iget-object v1, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    invoke-static {v1}, Lorg/jpos/util/DirPoll;->access$500(Lorg/jpos/util/DirPoll;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 443
    iget-object v1, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    iget-object v2, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->request:Ljava/io/File;

    invoke-static {v1}, Lorg/jpos/util/DirPoll;->access$600(Lorg/jpos/util/DirPoll;)Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/jpos/util/DirPoll;->access$700(Lorg/jpos/util/DirPoll;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 444
    .local v1, "archivedFile":Ljava/io/File;
    iget-object v2, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    invoke-static {v2}, Lorg/jpos/util/DirPoll;->access$800(Lorg/jpos/util/DirPoll;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 445
    iget-object v2, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    invoke-static {v2, v1}, Lorg/jpos/util/DirPoll;->access$900(Lorg/jpos/util/DirPoll;Ljava/io/File;)V

    .line 447
    .end local v1    # "archivedFile":Ljava/io/File;
    :cond_2
    goto :goto_2

    .line 448
    :cond_3
    iget-object v1, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->request:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 476
    :goto_2
    iget-object v1, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->logEvent:Lorg/jpos/util/LogEvent;

    if-eqz v1, :cond_8

    .line 477
    goto/16 :goto_6

    .line 449
    :cond_4
    :try_start_1
    new-instance v1, Lorg/jpos/util/DirPoll$DirPollException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: can\'t unlink request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->request:Ljava/io/File;

    .line 450
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/util/DirPoll$DirPollException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    throw v1

    .line 431
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    :cond_5
    new-instance v1, Lorg/jpos/util/DirPoll$DirPollException;

    const-string v2, "null processor - nothing to do"

    invoke-direct {v1, v2}, Lorg/jpos/util/DirPoll$DirPollException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    :catchall_0
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    iput-object v0, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->logEvent:Lorg/jpos/util/LogEvent;

    .line 455
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 457
    :try_start_3
    instance-of v2, v1, Lorg/jpos/util/DirPoll$DirPollException;

    if-eqz v2, :cond_7

    move-object v2, v1

    check-cast v2, Lorg/jpos/util/DirPoll$DirPollException;

    invoke-virtual {v2}, Lorg/jpos/util/DirPoll$DirPollException;->isRetry()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 458
    iget-object v2, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    invoke-static {v2}, Lorg/jpos/util/DirPoll;->access$1000(Lorg/jpos/util/DirPoll;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 459
    :try_start_4
    iget-object v3, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    invoke-static {v3}, Lorg/jpos/util/DirPoll;->access$1100(Lorg/jpos/util/DirPoll;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v3, :cond_6

    .line 461
    :try_start_5
    iget-object v3, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    invoke-static {v3}, Lorg/jpos/util/DirPoll;->access$1000(Lorg/jpos/util/DirPoll;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    invoke-static {v4}, Lorg/jpos/util/DirPoll;->access$1200(Lorg/jpos/util/DirPoll;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 463
    goto :goto_3

    .line 462
    :catch_0
    move-exception v3

    .line 465
    :cond_6
    :goto_3
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 466
    :try_start_7
    const-string v2, "retrying"

    invoke-virtual {v0, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 467
    iget-object v2, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    iget-object v3, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->request:Ljava/io/File;

    invoke-static {v2}, Lorg/jpos/util/DirPoll;->access$1300(Lorg/jpos/util/DirPoll;)Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/jpos/util/DirPoll;->access$100(Lorg/jpos/util/DirPoll;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    .line 465
    :catchall_1
    move-exception v3

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local v1    # "e":Ljava/lang/Throwable;
    :try_start_9
    throw v3

    .line 469
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v1    # "e":Ljava/lang/Throwable;
    :cond_7
    iget-object v2, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    iget-object v3, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->request:Ljava/io/File;

    invoke-static {v2}, Lorg/jpos/util/DirPoll;->access$1400(Lorg/jpos/util/DirPoll;)Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/jpos/util/DirPoll;->access$700(Lorg/jpos/util/DirPoll;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 474
    :goto_4
    goto :goto_5

    .line 471
    :catch_1
    move-exception v2

    .line 472
    .local v2, "_e":Ljava/io/IOException;
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t move to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->this$0:Lorg/jpos/util/DirPoll;

    invoke-static {v4}, Lorg/jpos/util/DirPoll;->access$1400(Lorg/jpos/util/DirPoll;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 473
    invoke-virtual {v0, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 476
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "_e":Ljava/io/IOException;
    :goto_5
    iget-object v1, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->logEvent:Lorg/jpos/util/LogEvent;

    if-eqz v1, :cond_8

    .line 477
    :goto_6
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 479
    :cond_8
    return-void

    .line 476
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lorg/jpos/util/DirPoll$ProcessorRunner;->logEvent:Lorg/jpos/util/LogEvent;

    if-eqz v2, :cond_9

    .line 477
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 478
    :cond_9
    throw v1
.end method
