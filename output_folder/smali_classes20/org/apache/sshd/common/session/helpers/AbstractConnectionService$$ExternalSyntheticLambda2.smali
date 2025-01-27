.class public final synthetic Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;

.field public final synthetic f$1:Lorg/apache/sshd/common/channel/Channel;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Lorg/apache/sshd/common/session/Session;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;Lorg/apache/sshd/common/channel/Channel;ZIILorg/apache/sshd/common/session/Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda2;->f$0:Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;

    iput-object p2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda2;->f$1:Lorg/apache/sshd/common/channel/Channel;

    iput-boolean p3, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda2;->f$2:Z

    iput p4, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda2;->f$3:I

    iput p5, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda2;->f$4:I

    iput-object p6, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda2;->f$5:Lorg/apache/sshd/common/session/Session;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda2;->f$0:Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;

    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda2;->f$1:Lorg/apache/sshd/common/channel/Channel;

    iget-boolean v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda2;->f$2:Z

    iget v3, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda2;->f$3:I

    iget v4, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda2;->f$4:I

    iget-object v5, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$$ExternalSyntheticLambda2;->f$5:Lorg/apache/sshd/common/session/Session;

    move-object v6, p1

    check-cast v6, Lorg/apache/sshd/client/future/OpenFuture;

    invoke-virtual/range {v0 .. v6}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->lambda$channelOpen$0$org-apache-sshd-common-session-helpers-AbstractConnectionService(Lorg/apache/sshd/common/channel/Channel;ZIILorg/apache/sshd/common/session/Session;Lorg/apache/sshd/client/future/OpenFuture;)V

    return-void
.end method
