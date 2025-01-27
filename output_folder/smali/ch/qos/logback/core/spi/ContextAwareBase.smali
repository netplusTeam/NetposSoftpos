.class public Lch/qos/logback/core/spi/ContextAwareBase;
.super Ljava/lang/Object;
.source "ContextAwareBase.java"

# interfaces
.implements Lch/qos/logback/core/spi/ContextAware;


# instance fields
.field protected context:Lch/qos/logback/core/Context;

.field final declaredOrigin:Ljava/lang/Object;

.field private noContextWarning:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->noContextWarning:I

    .line 35
    iput-object p0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->declaredOrigin:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public constructor <init>(Lch/qos/logback/core/spi/ContextAware;)V
    .locals 1
    .param p1, "declaredOrigin"    # Lch/qos/logback/core/spi/ContextAware;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->noContextWarning:I

    .line 39
    iput-object p1, p0, Lch/qos/logback/core/spi/ContextAwareBase;->declaredOrigin:Ljava/lang/Object;

    .line 40
    return-void
.end method


# virtual methods
.method public addError(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 101
    new-instance v0, Lch/qos/logback/core/status/ErrorStatus;

    invoke-virtual {p0}, Lch/qos/logback/core/spi/ContextAwareBase;->getDeclaredOrigin()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 102
    return-void
.end method

.method public addError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 105
    new-instance v0, Lch/qos/logback/core/status/ErrorStatus;

    invoke-virtual {p0}, Lch/qos/logback/core/spi/ContextAwareBase;->getDeclaredOrigin()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 106
    return-void
.end method

.method public addInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 85
    new-instance v0, Lch/qos/logback/core/status/InfoStatus;

    invoke-virtual {p0}, Lch/qos/logback/core/spi/ContextAwareBase;->getDeclaredOrigin()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lch/qos/logback/core/status/InfoStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 86
    return-void
.end method

.method public addInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 89
    new-instance v0, Lch/qos/logback/core/status/InfoStatus;

    invoke-virtual {p0}, Lch/qos/logback/core/spi/ContextAwareBase;->getDeclaredOrigin()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lch/qos/logback/core/status/InfoStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 90
    return-void
.end method

.method public addStatus(Lch/qos/logback/core/status/Status;)V
    .locals 3
    .param p1, "status"    # Lch/qos/logback/core/status/Status;

    .line 72
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    if-nez v0, :cond_1

    .line 73
    iget v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->noContextWarning:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lch/qos/logback/core/spi/ContextAwareBase;->noContextWarning:I

    if-nez v0, :cond_0

    .line 74
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

    .line 76
    :cond_0
    return-void

    .line 78
    :cond_1
    invoke-interface {v0}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    .line 79
    .local v0, "sm":Lch/qos/logback/core/status/StatusManager;
    if-eqz v0, :cond_2

    .line 80
    invoke-interface {v0, p1}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    .line 82
    :cond_2
    return-void
.end method

.method public addWarn(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 93
    new-instance v0, Lch/qos/logback/core/status/WarnStatus;

    invoke-virtual {p0}, Lch/qos/logback/core/spi/ContextAwareBase;->getDeclaredOrigin()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 94
    return-void
.end method

.method public addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 97
    new-instance v0, Lch/qos/logback/core/status/WarnStatus;

    invoke-virtual {p0}, Lch/qos/logback/core/spi/ContextAwareBase;->getDeclaredOrigin()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 98
    return-void
.end method

.method public getContext()Lch/qos/logback/core/Context;
    .locals 1

    .line 51
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    return-object v0
.end method

.method protected getDeclaredOrigin()Ljava/lang/Object;
    .locals 1

    .line 68
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->declaredOrigin:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatusManager()Lch/qos/logback/core/status/StatusManager;
    .locals 1

    .line 55
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_0
    invoke-interface {v0}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    return-object v0
.end method

.method public setContext(Lch/qos/logback/core/Context;)V
    .locals 2
    .param p1, "context"    # Lch/qos/logback/core/Context;

    .line 43
    iget-object v0, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    if-nez v0, :cond_0

    .line 44
    iput-object p1, p0, Lch/qos/logback/core/spi/ContextAwareBase;->context:Lch/qos/logback/core/Context;

    goto :goto_0

    .line 45
    :cond_0
    if-ne v0, p1, :cond_1

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context has been already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
