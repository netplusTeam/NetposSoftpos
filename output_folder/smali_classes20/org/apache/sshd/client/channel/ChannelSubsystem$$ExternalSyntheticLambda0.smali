.class public final synthetic Lorg/apache/sshd/client/channel/ChannelSubsystem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/client/channel/ChannelSubsystem$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelSubsystem$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    check-cast p1, Lorg/apache/sshd/common/future/CloseFuture;

    invoke-static {v0, p1}, Lorg/apache/sshd/client/channel/ChannelSubsystem;->lambda$onClose$0(Ljava/lang/Runnable;Lorg/apache/sshd/common/future/CloseFuture;)V

    return-void
.end method
