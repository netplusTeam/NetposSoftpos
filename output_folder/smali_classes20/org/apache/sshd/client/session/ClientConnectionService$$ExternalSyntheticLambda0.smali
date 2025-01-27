.class public final synthetic Lorg/apache/sshd/client/session/ClientConnectionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/client/session/ClientConnectionService;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/client/session/ClientConnectionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/client/session/ClientConnectionService$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/client/session/ClientConnectionService;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientConnectionService$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/client/session/ClientConnectionService;

    check-cast p1, Lorg/apache/sshd/common/io/IoWriteFuture;

    invoke-static {v0, p1}, Lorg/apache/sshd/client/session/ClientConnectionService;->$r8$lambda$U4Y9DzpI2a50xWicHLCE2WCqFfg(Lorg/apache/sshd/client/session/ClientConnectionService;Lorg/apache/sshd/common/io/IoWriteFuture;)V

    return-void
.end method
