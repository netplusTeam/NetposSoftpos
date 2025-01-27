.class public Lcom/sleepycat/je/latch/TimingLatch$AcquireCompleteEvent;
.super Lcom/sleepycat/je/utilint/EventTrace;
.source "TimingLatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/latch/TimingLatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AcquireCompleteEvent"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private startTime:J

.field final synthetic this$0:Lcom/sleepycat/je/latch/TimingLatch;

.field us:Ljava/lang/Thread;

.field private waitTime:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/latch/TimingLatch;JJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/latch/TimingLatch;
    .param p2, "startTime"    # J
    .param p4, "waitTime"    # J

    .line 85
    iput-object p1, p0, Lcom/sleepycat/je/latch/TimingLatch$AcquireCompleteEvent;->this$0:Lcom/sleepycat/je/latch/TimingLatch;

    .line 86
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/EventTrace;-><init>()V

    .line 87
    iput-wide p2, p0, Lcom/sleepycat/je/latch/TimingLatch$AcquireCompleteEvent;->startTime:J

    .line 88
    iput-wide p4, p0, Lcom/sleepycat/je/latch/TimingLatch$AcquireCompleteEvent;->waitTime:J

    .line 89
    invoke-virtual {p1}, Lcom/sleepycat/je/latch/TimingLatch;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/latch/TimingLatch$AcquireCompleteEvent;->name:Ljava/lang/String;

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/latch/TimingLatch$AcquireCompleteEvent;->us:Ljava/lang/Thread;

    .line 91
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AcquireCompleteEvent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/latch/TimingLatch$AcquireCompleteEvent;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/latch/TimingLatch$AcquireCompleteEvent;->us:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/sleepycat/je/latch/TimingLatch$AcquireCompleteEvent;->startTime:J

    .line 97
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%,d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    const-string v3, " Took: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/sleepycat/je/latch/TimingLatch$AcquireCompleteEvent;->waitTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
