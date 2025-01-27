.class public interface abstract Lorg/apache/sshd/common/Closeable;
.super Ljava/lang/Object;
.source "Closeable.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# static fields
.field public static final CLOSE_WAIT_TIMEOUT:Ljava/lang/String; = "sshd-close-wait-time"

.field public static final DEFAULT_CLOSE_WAIT_TIMEOUT:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/sshd/common/Closeable;->DEFAULT_CLOSE_WAIT_TIMEOUT:J

    return-void
.end method

.method public static close(Lorg/apache/sshd/common/Closeable;)V
    .locals 7
    .param p0, "closeable"    # Lorg/apache/sshd/common/Closeable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    if-nez p0, :cond_0

    .line 114
    return-void

    .line 117
    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/common/Closeable;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Lorg/apache/sshd/common/Closeable;->isClosing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/Closeable;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    move-result-object v0

    .line 119
    .local v0, "future":Lorg/apache/sshd/common/future/CloseFuture;
    instance-of v1, p0, Lorg/apache/sshd/common/PropertyResolver;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lorg/apache/sshd/common/PropertyResolver;

    .line 120
    invoke-static {v1}, Lorg/apache/sshd/common/Closeable;->getMaxCloseWaitTime(Lorg/apache/sshd/common/PropertyResolver;)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    sget-wide v1, Lorg/apache/sshd/common/Closeable;->DEFAULT_CLOSE_WAIT_TIMEOUT:J

    .line 122
    .local v1, "maxWait":J
    :goto_0
    invoke-interface {v0, v1, v2}, Lorg/apache/sshd/common/future/CloseFuture;->await(J)Z

    move-result v3

    .line 123
    .local v3, "successful":Z
    if-eqz v3, :cond_2

    goto :goto_1

    .line 124
    :cond_2
    new-instance v4, Ljava/net/SocketTimeoutException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to receive closure confirmation within "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " millis"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 127
    .end local v0    # "future":Lorg/apache/sshd/common/future/CloseFuture;
    .end local v1    # "maxWait":J
    .end local v3    # "successful":Z
    :cond_3
    :goto_1
    return-void
.end method

.method public static getMaxCloseWaitTime(Lorg/apache/sshd/common/PropertyResolver;)J
    .locals 3
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 107
    sget-wide v0, Lorg/apache/sshd/common/Closeable;->DEFAULT_CLOSE_WAIT_TIMEOUT:J

    if-nez p0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    const-string v2, "sshd-close-wait-time"

    invoke-interface {p0, v2, v0, v1}, Lorg/apache/sshd/common/PropertyResolver;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v0

    .line 107
    :goto_0
    return-wide v0
.end method


# virtual methods
.method public abstract addCloseFutureListener(Lorg/apache/sshd/common/future/SshFutureListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/future/SshFutureListener<",
            "Lorg/apache/sshd/common/future/CloseFuture;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract close(Z)Lorg/apache/sshd/common/future/CloseFuture;
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-static {p0}, Lorg/apache/sshd/common/Closeable;->close(Lorg/apache/sshd/common/Closeable;)V

    .line 104
    return-void
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isClosing()Z
.end method

.method public isOpen()Z
    .locals 1

    .line 98
    invoke-interface {p0}, Lorg/apache/sshd/common/Closeable;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/apache/sshd/common/Closeable;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract removeCloseFutureListener(Lorg/apache/sshd/common/future/SshFutureListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/future/SshFutureListener<",
            "Lorg/apache/sshd/common/future/CloseFuture;",
            ">;)V"
        }
    .end annotation
.end method
