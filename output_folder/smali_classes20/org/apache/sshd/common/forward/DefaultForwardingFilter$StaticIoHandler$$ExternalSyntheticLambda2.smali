.class public final synthetic Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/forward/TcpipClientChannel;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/forward/TcpipClientChannel;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda2;->f$0:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    iput-boolean p2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda2;->f$0:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    iget-boolean v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda2;->f$1:Z

    check-cast p1, Lorg/apache/sshd/client/future/OpenFuture;

    invoke-static {v0, v1, p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->lambda$sessionClosed$1(Lorg/apache/sshd/common/forward/TcpipClientChannel;ZLorg/apache/sshd/client/future/OpenFuture;)V

    return-void
.end method
