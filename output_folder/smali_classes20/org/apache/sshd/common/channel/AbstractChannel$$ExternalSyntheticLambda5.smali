.class public final synthetic Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/channel/AbstractChannel;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/channel/AbstractChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda5;->f$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda5;->f$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    check-cast p1, Lorg/apache/sshd/common/future/CloseFuture;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/channel/AbstractChannel;->lambda$getInnerCloseable$5$org-apache-sshd-common-channel-AbstractChannel(Lorg/apache/sshd/common/future/CloseFuture;)V

    return-void
.end method
