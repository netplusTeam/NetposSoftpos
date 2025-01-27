.class Lcom/sleepycat/je/latch/OwnerInfo;
.super Ljava/lang/Object;
.source "OwnerInfo.java"


# instance fields
.field private final acquireStack:Ljava/lang/Throwable;

.field private final acquireTime:J

.field private final thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/latch/LatchContext;)V
    .locals 3
    .param p1, "context"    # Lcom/sleepycat/je/latch/LatchContext;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/latch/OwnerInfo;->thread:Ljava/lang/Thread;

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/latch/OwnerInfo;->acquireTime:J

    .line 27
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latch Acquired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 28
    invoke-interface {p1}, Lcom/sleepycat/je/latch/LatchContext;->getLatchName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/latch/OwnerInfo;->acquireStack:Ljava/lang/Throwable;

    .line 29
    return-void
.end method


# virtual methods
.method toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 32
    const-string v0, " captureThread: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v0, p0, Lcom/sleepycat/je/latch/OwnerInfo;->thread:Ljava/lang/Thread;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    const-string v0, " acquireTime: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-wide v0, p0, Lcom/sleepycat/je/latch/OwnerInfo;->acquireTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    iget-object v0, p0, Lcom/sleepycat/je/latch/OwnerInfo;->acquireStack:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v0, p0, Lcom/sleepycat/je/latch/OwnerInfo;->acquireStack:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 40
    :cond_0
    const-string v0, " -no stack-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :goto_0
    return-void
.end method
