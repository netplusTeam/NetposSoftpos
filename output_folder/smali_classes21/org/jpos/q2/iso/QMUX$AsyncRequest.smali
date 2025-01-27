.class public Lorg/jpos/q2/iso/QMUX$AsyncRequest;
.super Ljava/lang/Object;
.source "QMUX.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/q2/iso/QMUX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncRequest"
.end annotation


# instance fields
.field chrono:Lorg/jpos/util/Chronometer;

.field future:Ljava/util/concurrent/ScheduledFuture;

.field handBack:Ljava/lang/Object;

.field rl:Lorg/jpos/iso/ISOResponseListener;

.field final synthetic this$0:Lorg/jpos/q2/iso/QMUX;


# direct methods
.method public constructor <init>(Lorg/jpos/q2/iso/QMUX;Lorg/jpos/iso/ISOResponseListener;Ljava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Lorg/jpos/q2/iso/QMUX;
    .param p2, "rl"    # Lorg/jpos/iso/ISOResponseListener;
    .param p3, "handBack"    # Ljava/lang/Object;

    .line 518
    iput-object p1, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->this$0:Lorg/jpos/q2/iso/QMUX;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput-object p2, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->rl:Lorg/jpos/iso/ISOResponseListener;

    .line 521
    iput-object p3, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->handBack:Ljava/lang/Object;

    .line 522
    new-instance v0, Lorg/jpos/util/Chronometer;

    invoke-direct {v0}, Lorg/jpos/util/Chronometer;-><init>()V

    iput-object v0, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->chrono:Lorg/jpos/util/Chronometer;

    .line 523
    return-void
.end method


# virtual methods
.method public responseReceived(Lorg/jpos/iso/ISOMsg;)V
    .locals 4
    .param p1, "response"    # Lorg/jpos/iso/ISOMsg;

    .line 528
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    :cond_0
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->this$0:Lorg/jpos/q2/iso/QMUX;

    monitor-enter v0

    .line 530
    :try_start_0
    iget-object v1, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->this$0:Lorg/jpos/q2/iso/QMUX;

    invoke-static {v1}, Lorg/jpos/q2/iso/QMUX;->access$008(Lorg/jpos/q2/iso/QMUX;)I

    .line 531
    iget-object v1, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->this$0:Lorg/jpos/q2/iso/QMUX;

    invoke-static {v1}, Lorg/jpos/q2/iso/QMUX;->access$110(Lorg/jpos/q2/iso/QMUX;)I

    .line 532
    iget-object v1, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->this$0:Lorg/jpos/q2/iso/QMUX;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/jpos/q2/iso/QMUX;->access$202(Lorg/jpos/q2/iso/QMUX;J)J

    .line 533
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->chrono:Lorg/jpos/util/Chronometer;

    invoke-virtual {v0}, Lorg/jpos/util/Chronometer;->elapsed()J

    move-result-wide v0

    .line 535
    .local v0, "elapsed":J
    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->this$0:Lorg/jpos/q2/iso/QMUX;

    invoke-static {v2}, Lorg/jpos/q2/iso/QMUX;->access$300(Lorg/jpos/q2/iso/QMUX;)Lorg/jpos/util/Metrics;

    move-result-object v2

    const-string v3, "all"

    invoke-virtual {v2, v3, v0, v1}, Lorg/jpos/util/Metrics;->record(Ljava/lang/String;J)V

    .line 536
    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->this$0:Lorg/jpos/q2/iso/QMUX;

    invoke-static {v2}, Lorg/jpos/q2/iso/QMUX;->access$300(Lorg/jpos/q2/iso/QMUX;)Lorg/jpos/util/Metrics;

    move-result-object v2

    const-string v3, "ok"

    invoke-virtual {v2, v3, v0, v1}, Lorg/jpos/util/Metrics;->record(Ljava/lang/String;J)V

    .line 537
    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->rl:Lorg/jpos/iso/ISOResponseListener;

    iget-object v3, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->handBack:Ljava/lang/Object;

    invoke-interface {v2, p1, v3}, Lorg/jpos/iso/ISOResponseListener;->responseReceived(Lorg/jpos/iso/ISOMsg;Ljava/lang/Object;)V

    .line 539
    .end local v0    # "elapsed":J
    :cond_1
    return-void

    .line 533
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 4

    .line 541
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->this$0:Lorg/jpos/q2/iso/QMUX;

    monitor-enter v0

    .line 542
    :try_start_0
    iget-object v1, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->this$0:Lorg/jpos/q2/iso/QMUX;

    invoke-static {v1}, Lorg/jpos/q2/iso/QMUX;->access$110(Lorg/jpos/q2/iso/QMUX;)I

    .line 543
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->this$0:Lorg/jpos/q2/iso/QMUX;

    invoke-static {v0}, Lorg/jpos/q2/iso/QMUX;->access$300(Lorg/jpos/q2/iso/QMUX;)Lorg/jpos/util/Metrics;

    move-result-object v0

    const-string v1, "all"

    iget-object v2, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->chrono:Lorg/jpos/util/Chronometer;

    invoke-virtual {v2}, Lorg/jpos/util/Chronometer;->elapsed()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/jpos/util/Metrics;->record(Ljava/lang/String;J)V

    .line 545
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->rl:Lorg/jpos/iso/ISOResponseListener;

    iget-object v1, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->handBack:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/jpos/iso/ISOResponseListener;->expired(Ljava/lang/Object;)V

    .line 546
    return-void

    .line 543
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setFuture(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0
    .param p1, "future"    # Ljava/util/concurrent/ScheduledFuture;

    .line 525
    iput-object p1, p0, Lorg/jpos/q2/iso/QMUX$AsyncRequest;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 526
    return-void
.end method
