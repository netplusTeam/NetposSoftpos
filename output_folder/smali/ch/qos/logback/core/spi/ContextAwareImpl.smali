.class public Lch/qos/logback/core/spi/ContextAwareImpl;
.super Ljava/lang/Object;
.source "ContextAwareImpl.java"

# interfaces
.implements Lch/qos/logback/core/spi/ContextAware;


# instance fields
.field protected context:Lch/qos/logback/core/Context;

.field private noContextWarning:I

.field final origin:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/Context;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Lch/qos/logback/core/Context;
    .param p2, "origin"    # Ljava/lang/Object;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/spi/ContextAwareImpl;->noContextWarning:I

    .line 36
    iput-object p1, p0, Lch/qos/logback/core/spi/ContextAwareImpl;->context:Lch/qos/logback/core/Context;

    .line 37
    iput-object p2, p0, Lch/qos/logback/core/spi/ContextAwareImpl;->origin:Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public addError(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 94
    new-instance v0, Lch/qos/logback/core/status/ErrorStatus;

    invoke-virtual {p0}, Lch/qos/logback/core/spi/ContextAwareImpl;->getOrigin()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareImpl;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 95
    return-void
.end method

.method public addError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 98
    new-instance v0, Lch/qos/logback/core/status/ErrorStatus;

    invoke-virtual {p0}, Lch/qos/logback/core/spi/ContextAwareImpl;->getOrigin()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareImpl;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 99
    return-void
.end method

.method public addInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 78
    new-instance v0, Lch/qos/logback/core/status/InfoStatus;

    invoke-virtual {p0}, Lch/qos/logback/core/spi/ContextAwareImpl;->getOrigin()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lch/qos/logback/core/status/InfoStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareImpl;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 79
    return-void
.end method

.method public addInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 82
    new-instance v0, Lch/qos/logback/core/status/InfoStatus;

    invoke-virtual {p0}, Lch/qos/logback/core/spi/ContextAwareImpl;->getOrigin()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lch/qos/logback/core/status/InfoStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareImpl;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 83
    return-void
.end method

.method public addStatus(Lch/qos/logback/core/status/Status;)V
    .locals 3
    .param p1, "status"    # Lch/qos/logback/core/status/Status;

    .line 65
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareImpl;->context:Lch/qos/logback/core/Context;

    if-nez v0, :cond_1

    .line 66
    iget v0, p0, Lch/qos/logback/core/spi/ContextAwareImpl;->noContextWarning:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lch/qos/logback/core/spi/ContextAwareImpl;->noContextWarning:I

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOGBACK: No context given for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void

    .line 71
    :cond_1
    invoke-interface {v0}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    .line 72
    .local v0, "sm":Lch/qos/logback/core/status/StatusManager;
    if-eqz v0, :cond_2

    .line 73
    invoke-interface {v0, p1}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    .line 75
    :cond_2
    return-void
.end method

.method public addWarn(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 86
    new-instance v0, Lch/qos/logback/core/status/WarnStatus;

    invoke-virtual {p0}, Lch/qos/logback/core/spi/ContextAwareImpl;->getOrigin()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareImpl;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 87
    return-void
.end method

.method public addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 90
    new-instance v0, Lch/qos/logback/core/status/WarnStatus;

    invoke-virtual {p0}, Lch/qos/logback/core/spi/ContextAwareImpl;->getOrigin()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareImpl;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 91
    return-void
.end method

.method public getContext()Lch/qos/logback/core/Context;
    .locals 1

    .line 54
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareImpl;->context:Lch/qos/logback/core/Context;

    return-object v0
.end method

.method protected getOrigin()Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareImpl;->origin:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatusManager()Lch/qos/logback/core/status/StatusManager;
    .locals 1

    .line 58
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareImpl;->context:Lch/qos/logback/core/Context;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    invoke-interface {v0}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    return-object v0
.end method

.method public setContext(Lch/qos/logback/core/Context;)V
    .locals 2
    .param p1, "context"    # Lch/qos/logback/core/Context;

    .line 46
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareImpl;->context:Lch/qos/logback/core/Context;

    if-nez v0, :cond_0

    .line 47
    iput-object p1, p0, Lch/qos/logback/core/spi/ContextAwareImpl;->context:Lch/qos/logback/core/Context;

    goto :goto_0

    .line 48
    :cond_0
    if-ne v0, p1, :cond_1

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context has been already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
