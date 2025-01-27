.class public abstract Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;
.super Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;
.source "ServiceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExecutingService"
.end annotation


# instance fields
.field private final dispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "dispatcher"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 1144
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;-><init>(Ljava/lang/String;)V

    .line 1145
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;->dispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 1146
    return-void
.end method

.method public static ensureChannelBlocking(Lcom/sleepycat/je/rep/net/DataChannel;)V
    .locals 2
    .param p0, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 1164
    invoke-interface {p0}, Lcom/sleepycat/je/rep/net/DataChannel;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    return-void

    .line 1165
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected non-blocking channel after dispatching to the service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected cancel()V
    .locals 0

    .line 1158
    return-void
.end method

.method public abstract getRunnable(Lcom/sleepycat/je/rep/net/DataChannel;)Ljava/lang/Runnable;
.end method

.method public bridge synthetic isBusy()Z
    .locals 1

    .line 1139
    invoke-super {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->isBusy()Z

    move-result v0

    return v0
.end method

.method requestDispatch(Lcom/sleepycat/je/rep/net/DataChannel;)V
    .locals 2
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 1152
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;->dispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->access$300(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;->getRunnable(Lcom/sleepycat/je/rep/net/DataChannel;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1153
    return-void
.end method

.method public bridge synthetic setSimulateIOException(Z)V
    .locals 0

    .line 1139
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->setSimulateIOException(Z)V

    return-void
.end method

.method public bridge synthetic simulateIOException()Z
    .locals 1

    .line 1139
    invoke-super {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->simulateIOException()Z

    move-result v0

    return v0
.end method
