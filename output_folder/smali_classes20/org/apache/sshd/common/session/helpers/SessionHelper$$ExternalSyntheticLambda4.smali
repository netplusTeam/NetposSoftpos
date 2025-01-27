.class public final synthetic Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda4;->f$0:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda4;->f$0:Ljava/util/concurrent/ScheduledFuture;

    check-cast p1, Lorg/apache/sshd/common/io/IoWriteFuture;

    invoke-static {v0, p1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->lambda$writePacket$1(Ljava/util/concurrent/ScheduledFuture;Lorg/apache/sshd/common/io/IoWriteFuture;)V

    return-void
.end method
