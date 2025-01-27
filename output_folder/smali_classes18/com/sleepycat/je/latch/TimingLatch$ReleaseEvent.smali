.class public Lcom/sleepycat/je/latch/TimingLatch$ReleaseEvent;
.super Lcom/sleepycat/je/utilint/EventTrace;
.source "TimingLatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/latch/TimingLatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReleaseEvent"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private startTime:J

.field final synthetic this$0:Lcom/sleepycat/je/latch/TimingLatch;

.field us:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/latch/TimingLatch;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/latch/TimingLatch;
    .param p2, "time"    # J

    .line 108
    iput-object p1, p0, Lcom/sleepycat/je/latch/TimingLatch$ReleaseEvent;->this$0:Lcom/sleepycat/je/latch/TimingLatch;

    .line 109
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/EventTrace;-><init>()V

    .line 110
    iput-wide p2, p0, Lcom/sleepycat/je/latch/TimingLatch$ReleaseEvent;->startTime:J

    .line 111
    invoke-virtual {p1}, Lcom/sleepycat/je/latch/TimingLatch;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/latch/TimingLatch$ReleaseEvent;->name:Ljava/lang/String;

    .line 112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/latch/TimingLatch$ReleaseEvent;->us:Ljava/lang/Thread;

    .line 113
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReleaseEvent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/latch/TimingLatch$ReleaseEvent;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/latch/TimingLatch$ReleaseEvent;->us:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/sleepycat/je/latch/TimingLatch$ReleaseEvent;->startTime:J

    .line 119
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%,d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
