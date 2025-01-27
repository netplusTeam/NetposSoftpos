.class public Lcom/sleepycat/je/utilint/ConsoleRedirectHandler;
.super Ljava/util/logging/ConsoleHandler;
.source "ConsoleRedirectHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/util/logging/ConsoleHandler;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 37
    sget-object v0, Lcom/sleepycat/je/utilint/LoggerUtils;->envMap:Ljava/util/Map;

    .line 38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 47
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-nez v0, :cond_0

    .line 48
    invoke-super {p0, p1}, Ljava/util/logging/ConsoleHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 49
    return-void

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConsoleHandler()Ljava/util/logging/ConsoleHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 53
    invoke-super {p0, p1}, Ljava/util/logging/ConsoleHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 54
    return-void

    .line 57
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConsoleHandler()Ljava/util/logging/ConsoleHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/logging/ConsoleHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 58
    return-void
.end method
