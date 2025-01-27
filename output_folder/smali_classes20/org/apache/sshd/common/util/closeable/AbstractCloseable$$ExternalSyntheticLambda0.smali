.class public final synthetic Lorg/apache/sshd/common/util/closeable/AbstractCloseable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/util/closeable/AbstractCloseable;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/util/closeable/AbstractCloseable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/util/closeable/AbstractCloseable;

    iput-boolean p2, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/util/closeable/AbstractCloseable;

    iget-boolean v1, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Lorg/apache/sshd/common/future/CloseFuture;

    invoke-virtual {v0, v1, p1}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->lambda$close$0$org-apache-sshd-common-util-closeable-AbstractCloseable(ZLorg/apache/sshd/common/future/CloseFuture;)V

    return-void
.end method
