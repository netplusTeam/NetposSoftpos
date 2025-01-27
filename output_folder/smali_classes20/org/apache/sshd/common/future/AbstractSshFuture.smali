.class public abstract Lorg/apache/sshd/common/future/AbstractSshFuture;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractSshFuture.java"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/sshd/common/future/SshFuture;",
        ">",
        "Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;",
        "Lorg/apache/sshd/common/future/SshFuture<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static final CANCELED:Ljava/lang/Object;


# instance fields
.field protected final debugEnabled:Z

.field private final id:Ljava/lang/Object;

.field protected final traceEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/future/AbstractSshFuture;->CANCELED:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;

    .line 48
    .local p0, "this":Lorg/apache/sshd/common/future/AbstractSshFuture;, "Lorg/apache/sshd/common/future/AbstractSshFuture<TT;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/sshd/common/future/AbstractSshFuture;->id:Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lorg/apache/sshd/common/future/AbstractSshFuture;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/sshd/common/future/AbstractSshFuture;->debugEnabled:Z

    .line 51
    iget-object v0, p0, Lorg/apache/sshd/common/future/AbstractSshFuture;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/sshd/common/future/AbstractSshFuture;->traceEnabled:Z

    .line 52
    return-void
.end method

.method static synthetic lambda$awaitUninterruptibly$0(Ljava/io/InterruptedIOException;Ljava/lang/String;)Ljava/lang/InternalError;
    .locals 1
    .param p0, "e"    # Ljava/io/InterruptedIOException;
    .param p1, "msg"    # Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0, p1, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic lambda$verifyResult$1(Ljava/lang/Throwable;Ljava/lang/String;)Lorg/apache/sshd/common/SshException;
    .locals 1
    .param p0, "cause"    # Ljava/lang/Throwable;
    .param p1, "msg"    # Ljava/lang/String;

    .line 137
    new-instance v0, Lorg/apache/sshd/common/SshException;

    invoke-direct {v0, p1, p0}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method protected asListener(Ljava/lang/Object;)Lorg/apache/sshd/common/future/SshFutureListener;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/sshd/common/future/SshFutureListener<",
            "TT;>;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/apache/sshd/common/future/AbstractSshFuture;, "Lorg/apache/sshd/common/future/AbstractSshFuture<TT;>;"
    move-object v0, p1

    check-cast v0, Lorg/apache/sshd/common/future/SshFutureListener;

    return-object v0
.end method

.method protected asT()Lorg/apache/sshd/common/future/SshFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lorg/apache/sshd/common/future/AbstractSshFuture;, "Lorg/apache/sshd/common/future/AbstractSshFuture<TT;>;"
    return-object p0
.end method

.method public await(J)Z
    .locals 2
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/apache/sshd/common/future/AbstractSshFuture;, "Lorg/apache/sshd/common/future/AbstractSshFuture<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sshd/common/future/AbstractSshFuture;->await0(JZ)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract await0(JZ)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method public awaitUninterruptibly(J)Z
    .locals 6
    .param p1, "timeoutMillis"    # J

    .line 67
    .local p0, "this":Lorg/apache/sshd/common/future/AbstractSshFuture;, "Lorg/apache/sshd/common/future/AbstractSshFuture<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/sshd/common/future/AbstractSshFuture;->await0(JZ)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 68
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/io/InterruptedIOException;
    new-instance v3, Lorg/apache/sshd/common/future/AbstractSshFuture$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lorg/apache/sshd/common/future/AbstractSshFuture$$ExternalSyntheticLambda3;-><init>(Ljava/io/InterruptedIOException;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 72
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 69
    const-string v0, "Unexpected interrupted exception wile awaitUninterruptibly %d msec: %s"

    invoke-virtual {p0, v3, v0, v4}, Lorg/apache/sshd/common/future/AbstractSshFuture;->formatExceptionMessage(Ljava/util/function/Function;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/InternalError;

    throw v0
.end method

.method protected varargs formatExceptionMessage(Ljava/util/function/Function;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 3
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/lang/String;",
            "+TE;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lorg/apache/sshd/common/future/AbstractSshFuture;, "Lorg/apache/sshd/common/future/AbstractSshFuture<TT;>;"
    .local p1, "exceptionCreator":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/String;+TE;>;"
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "messagePayload":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/future/AbstractSshFuture;->getId()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "excMessage":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    return-object v2
.end method

.method public getId()Ljava/lang/Object;
    .locals 1

    .line 56
    .local p0, "this":Lorg/apache/sshd/common/future/AbstractSshFuture;, "Lorg/apache/sshd/common/future/AbstractSshFuture<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/future/AbstractSshFuture;->id:Ljava/lang/Object;

    return-object v0
.end method

.method protected notifyListener(Lorg/apache/sshd/common/future/SshFutureListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/future/SshFutureListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 167
    .local p0, "this":Lorg/apache/sshd/common/future/AbstractSshFuture;, "Lorg/apache/sshd/common/future/AbstractSshFuture<TT;>;"
    .local p1, "l":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/future/AbstractSshFuture;->asT()Lorg/apache/sshd/common/future/SshFuture;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/sshd/common/future/SshFutureListener;->operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/sshd/common/future/AbstractSshFuture;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 169
    const-string v3, "notifyListener({}) failed ({}) to invoke {}: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-boolean v1, p0, Lorg/apache/sshd/common/future/AbstractSshFuture;->debugEnabled:Z

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lorg/apache/sshd/common/future/AbstractSshFuture;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyListener("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] invocation failure details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 201
    .local p0, "this":Lorg/apache/sshd/common/future/AbstractSshFuture;, "Lorg/apache/sshd/common/future/AbstractSshFuture<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/future/AbstractSshFuture;->getId()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected verifyResult(Ljava/lang/Class;J)Ljava/lang/Object;
    .locals 9
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TR;>;J)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/sshd/common/future/AbstractSshFuture;, "Lorg/apache/sshd/common/future/AbstractSshFuture<TT;>;"
    .local p1, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<+TR;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, v0}, Lorg/apache/sshd/common/future/AbstractSshFuture;->await0(JZ)Ljava/lang/Object;

    move-result-object v1

    .line 112
    .local v1, "value":Ljava/lang/Object;
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 119
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 120
    .local v3, "actualType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 124
    :cond_0
    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 125
    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v4}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    .line 126
    .local v4, "t":Ljava/lang/Throwable;
    if-eq v4, v1, :cond_1

    .line 127
    move-object v1, v4

    .line 128
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 131
    :cond_1
    const-class v5, Ljava/io/IOException;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 132
    move-object v0, v1

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 135
    :cond_2
    invoke-static {v4}, Lorg/apache/sshd/common/util/GenericUtils;->resolveExceptionCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    .line 136
    .local v5, "cause":Ljava/lang/Throwable;
    new-instance v6, Lorg/apache/sshd/common/future/AbstractSshFuture$$ExternalSyntheticLambda1;

    invoke-direct {v6, v5}, Lorg/apache/sshd/common/future/AbstractSshFuture$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Throwable;)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 139
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    .line 136
    const-string v0, "Failed (%s) to execute: %s"

    invoke-virtual {p0, v6, v0, v7}, Lorg/apache/sshd/common/future/AbstractSshFuture;->formatExceptionMessage(Ljava/util/function/Function;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/SshException;

    throw v0

    .line 141
    .end local v4    # "t":Ljava/lang/Throwable;
    .end local v5    # "cause":Ljava/lang/Throwable;
    :cond_3
    new-instance v4, Lorg/apache/sshd/common/future/AbstractSshFuture$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lorg/apache/sshd/common/future/AbstractSshFuture$$ExternalSyntheticLambda2;-><init>()V

    new-array v0, v0, [Ljava/lang/Object;

    .line 142
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    .line 141
    const-string v2, "Unknown result type: %s"

    invoke-virtual {p0, v4, v2, v0}, Lorg/apache/sshd/common/future/AbstractSshFuture;->formatExceptionMessage(Ljava/util/function/Function;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/StreamCorruptedException;

    throw v0

    .line 113
    .end local v3    # "actualType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    new-instance v3, Lorg/apache/sshd/common/future/AbstractSshFuture$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/apache/sshd/common/future/AbstractSshFuture$$ExternalSyntheticLambda0;-><init>()V

    new-array v0, v0, [Ljava/lang/Object;

    .line 116
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v2

    .line 113
    const-string v2, "Failed to get operation result within specified timeout: %s"

    invoke-virtual {p0, v3, v2, v0}, Lorg/apache/sshd/common/future/AbstractSshFuture;->formatExceptionMessage(Ljava/util/function/Function;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/SshException;

    throw v0
.end method
