.class public final synthetic Lorg/apache/sshd/server/forward/TcpipServerChannel$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/server/forward/TcpipServerChannel$2;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/server/forward/TcpipServerChannel$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$2$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/server/forward/TcpipServerChannel$2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$2$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/server/forward/TcpipServerChannel$2;

    invoke-virtual {v0}, Lorg/apache/sshd/server/forward/TcpipServerChannel$2;->lambda$doCloseGracefully$0$org-apache-sshd-server-forward-TcpipServerChannel$2()Lorg/apache/sshd/common/future/CloseFuture;

    move-result-object v0

    return-object v0
.end method
