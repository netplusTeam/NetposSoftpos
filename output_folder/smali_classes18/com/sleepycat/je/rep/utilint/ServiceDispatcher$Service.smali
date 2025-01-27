.class abstract Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;
.super Ljava/lang/Object;
.source "ServiceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Service"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field private simulateIOException:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 956
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->simulateIOException:Z

    .line 960
    if-eqz p1, :cond_0

    .line 964
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->name:Ljava/lang/String;

    .line 965
    return-void

    .line 961
    :cond_0
    nop

    .line 962
    const-string v0, "Service name was null"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method abstract cancel()V
.end method

.method public isBusy()Z
    .locals 1

    .line 979
    const/4 v0, 0x0

    return v0
.end method

.method abstract requestDispatch(Lcom/sleepycat/je/rep/net/DataChannel;)V
.end method

.method public setSimulateIOException(Z)V
    .locals 0
    .param p1, "simulateIOException"    # Z

    .line 990
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->simulateIOException:Z

    .line 991
    return-void
.end method

.method public simulateIOException()Z
    .locals 1

    .line 986
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->simulateIOException:Z

    return v0
.end method
