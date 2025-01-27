.class public abstract Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;
.super Lorg/apache/sshd/common/util/closeable/AbstractCloseable;
.source "AbstractInnerCloseable.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 29
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "discriminator"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method static synthetic access$001(Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;

    .line 27
    invoke-super {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->doCloseImmediately()V

    return-void
.end method


# virtual methods
.method protected final doCloseGracefully()Lorg/apache/sshd/common/future/CloseFuture;
    .locals 2

    .line 40
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;->getInnerCloseable()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    .line 41
    .local v0, "innerCloser":Lorg/apache/sshd/common/Closeable;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/Closeable;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    move-result-object v1

    return-object v1
.end method

.method protected final doCloseImmediately()V
    .locals 3

    .line 47
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;->getInnerCloseable()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    .line 48
    .local v0, "innerCloser":Lorg/apache/sshd/common/Closeable;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/Closeable;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;)V

    invoke-interface {v1, v2}, Lorg/apache/sshd/common/future/CloseFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 49
    return-void
.end method

.method protected abstract getInnerCloseable()Lorg/apache/sshd/common/Closeable;
.end method

.method synthetic lambda$doCloseImmediately$0$org-apache-sshd-common-util-closeable-AbstractInnerCloseable(Lorg/apache/sshd/common/future/CloseFuture;)V
    .locals 0
    .param p1, "future"    # Lorg/apache/sshd/common/future/CloseFuture;

    .line 48
    invoke-static {p0}, Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;->access$001(Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;)V

    return-void
.end method
