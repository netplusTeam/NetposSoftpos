.class public final synthetic Lorg/apache/sshd/server/session/AbstractServerSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/server/session/AbstractServerSession;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/server/session/AbstractServerSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/server/session/AbstractServerSession$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/server/session/AbstractServerSession;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/server/session/AbstractServerSession$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/server/session/AbstractServerSession;

    check-cast p1, Lorg/apache/sshd/common/io/IoWriteFuture;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/server/session/AbstractServerSession;->lambda$readIdentification$0$org-apache-sshd-server-session-AbstractServerSession(Lorg/apache/sshd/common/io/IoWriteFuture;)V

    return-void
.end method
