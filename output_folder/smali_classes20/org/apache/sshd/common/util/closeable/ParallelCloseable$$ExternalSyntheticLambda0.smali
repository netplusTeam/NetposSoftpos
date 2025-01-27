.class public final synthetic Lorg/apache/sshd/common/util/closeable/ParallelCloseable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/util/closeable/ParallelCloseable;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/util/closeable/ParallelCloseable;Ljava/util/concurrent/atomic/AtomicInteger;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/util/closeable/ParallelCloseable$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/util/closeable/ParallelCloseable;

    iput-object p2, p0, Lorg/apache/sshd/common/util/closeable/ParallelCloseable$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean p3, p0, Lorg/apache/sshd/common/util/closeable/ParallelCloseable$$ExternalSyntheticLambda0;->f$2:Z

    iput-boolean p4, p0, Lorg/apache/sshd/common/util/closeable/ParallelCloseable$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/ParallelCloseable$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/util/closeable/ParallelCloseable;

    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/ParallelCloseable$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-boolean v2, p0, Lorg/apache/sshd/common/util/closeable/ParallelCloseable$$ExternalSyntheticLambda0;->f$2:Z

    iget-boolean v3, p0, Lorg/apache/sshd/common/util/closeable/ParallelCloseable$$ExternalSyntheticLambda0;->f$3:Z

    check-cast p1, Lorg/apache/sshd/common/future/CloseFuture;

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/apache/sshd/common/util/closeable/ParallelCloseable;->lambda$doClose$0$org-apache-sshd-common-util-closeable-ParallelCloseable(Ljava/util/concurrent/atomic/AtomicInteger;ZZLorg/apache/sshd/common/future/CloseFuture;)V

    return-void
.end method
