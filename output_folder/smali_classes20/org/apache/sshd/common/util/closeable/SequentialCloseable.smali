.class public Lorg/apache/sshd/common/util/closeable/SequentialCloseable;
.super Lorg/apache/sshd/common/util/closeable/SimpleCloseable;
.source "SequentialCloseable.java"


# instance fields
.field private final closeables:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/sshd/common/Closeable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Iterable;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/sshd/common/Closeable;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p3, "closeables":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/sshd/common/Closeable;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/common/util/closeable/SimpleCloseable;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable;->closeables:Ljava/lang/Iterable;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lorg/apache/sshd/common/util/closeable/SequentialCloseable;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/util/closeable/SequentialCloseable;

    .line 34
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/sshd/common/util/closeable/SequentialCloseable;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/util/closeable/SequentialCloseable;

    .line 34
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/sshd/common/util/closeable/SequentialCloseable;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/util/closeable/SequentialCloseable;

    .line 34
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/sshd/common/util/closeable/SequentialCloseable;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/util/closeable/SequentialCloseable;

    .line 34
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable;->log:Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method protected doClose(Z)V
    .locals 3
    .param p1, "immediately"    # Z

    .line 44
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable;->closeables:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 45
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/sshd/common/Closeable;>;"
    new-instance v1, Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;-><init>(Lorg/apache/sshd/common/util/closeable/SequentialCloseable;Ljava/util/Iterator;Z)V

    .line 69
    .local v1, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/future/CloseFuture;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/apache/sshd/common/future/SshFutureListener;->operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V

    .line 70
    return-void
.end method
