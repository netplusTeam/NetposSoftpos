.class public final synthetic Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

.field public final synthetic f$1:Lorg/apache/sshd/common/util/buffer/Buffer;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/server/forward/TcpipServerChannel;Lorg/apache/sshd/common/util/buffer/Buffer;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda2;->f$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

    iput-object p2, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda2;->f$1:Lorg/apache/sshd/common/util/buffer/Buffer;

    iput-wide p3, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda2;->f$2:J

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda2;->f$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

    iget-object v1, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda2;->f$1:Lorg/apache/sshd/common/util/buffer/Buffer;

    iget-wide v2, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$$ExternalSyntheticLambda2;->f$2:J

    check-cast p1, Lorg/apache/sshd/common/io/IoWriteFuture;

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->lambda$doWriteData$2$org-apache-sshd-server-forward-TcpipServerChannel(Lorg/apache/sshd/common/util/buffer/Buffer;JLorg/apache/sshd/common/io/IoWriteFuture;)V

    return-void
.end method
