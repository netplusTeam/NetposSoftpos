.class public Lcom/sleepycat/je/utilint/FileRedirectHandler;
.super Ljava/util/logging/Handler;
.source "FileRedirectHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public flush()V
    .locals 0

    .line 80
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 38
    sget-object v0, Lcom/sleepycat/je/utilint/LoggerUtils;->envMap:Ljava/util/Map;

    .line 39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 46
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-nez v0, :cond_0

    .line 47
    return-void

    .line 56
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileHandler()Ljava/util/logging/FileHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 57
    return-void

    .line 60
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileHandler()Ljava/util/logging/FileHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/logging/FileHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 61
    return-void
.end method
