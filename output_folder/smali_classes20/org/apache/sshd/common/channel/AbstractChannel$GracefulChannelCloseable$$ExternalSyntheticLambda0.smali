.class public final synthetic Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;

.field public final synthetic f$1:Lorg/apache/sshd/common/channel/Channel;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;Lorg/apache/sshd/common/channel/Channel;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;

    iput-object p2, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable$$ExternalSyntheticLambda0;->f$1:Lorg/apache/sshd/common/channel/Channel;

    iput-boolean p3, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;

    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable$$ExternalSyntheticLambda0;->f$1:Lorg/apache/sshd/common/channel/Channel;

    iget-boolean v2, p0, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable$$ExternalSyntheticLambda0;->f$2:Z

    check-cast p1, Lorg/apache/sshd/common/io/IoWriteFuture;

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/sshd/common/channel/AbstractChannel$GracefulChannelCloseable;->lambda$close$0$org-apache-sshd-common-channel-AbstractChannel$GracefulChannelCloseable(Lorg/apache/sshd/common/channel/Channel;ZLorg/apache/sshd/common/io/IoWriteFuture;)V

    return-void
.end method
