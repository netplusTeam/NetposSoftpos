.class public final synthetic Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

.field public final synthetic f$1:Lorg/apache/sshd/client/future/OpenFuture;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/server/forward/TcpipServerChannel;Lorg/apache/sshd/client/future/OpenFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

    iput-object p2, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda1;->f$1:Lorg/apache/sshd/client/future/OpenFuture;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

    iget-object v1, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda1;->f$1:Lorg/apache/sshd/client/future/OpenFuture;

    check-cast p1, Lorg/apache/sshd/common/io/IoConnectFuture;

    invoke-virtual {v0, v1, p1}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->lambda$doInit$0$org-apache-sshd-server-forward-TcpipServerChannel(Lorg/apache/sshd/client/future/OpenFuture;Lorg/apache/sshd/common/io/IoConnectFuture;)V

    return-void
.end method
