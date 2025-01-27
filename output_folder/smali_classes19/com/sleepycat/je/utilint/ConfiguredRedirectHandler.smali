.class public Lcom/sleepycat/je/utilint/ConfiguredRedirectHandler;
.super Ljava/util/logging/Handler;
.source "ConfiguredRedirectHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 34
    return-void
.end method

.method private getEnvSpecificConfiguredHandler()Ljava/util/logging/Handler;
    .locals 2

    .line 45
    sget-object v0, Lcom/sleepycat/je/utilint/LoggerUtils;->envMap:Ljava/util/Map;

    .line 46
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 53
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-nez v0, :cond_0

    .line 54
    const/4 v1, 0x0

    return-object v1

    .line 57
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfiguredHandler()Ljava/util/logging/Handler;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/ConfiguredRedirectHandler;->getEnvSpecificConfiguredHandler()Ljava/util/logging/Handler;

    move-result-object v0

    .line 64
    .local v0, "h":Ljava/util/logging/Handler;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/util/logging/Handler;->close()V

    .line 67
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/ConfiguredRedirectHandler;->getEnvSpecificConfiguredHandler()Ljava/util/logging/Handler;

    move-result-object v0

    .line 72
    .local v0, "h":Ljava/util/logging/Handler;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/util/logging/Handler;->flush()V

    .line 75
    :cond_0
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 38
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/ConfiguredRedirectHandler;->getEnvSpecificConfiguredHandler()Ljava/util/logging/Handler;

    move-result-object v0

    .line 39
    .local v0, "h":Ljava/util/logging/Handler;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v0, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 42
    :cond_0
    return-void
.end method
