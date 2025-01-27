.class public final synthetic Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# instance fields
.field public final synthetic f$0:Ljava/util/TimerTask;


# direct methods
.method public synthetic constructor <init>(Ljava/util/TimerTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable$$ExternalSyntheticLambda0;->f$0:Ljava/util/TimerTask;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable$$ExternalSyntheticLambda0;->f$0:Ljava/util/TimerTask;

    check-cast p1, Lorg/apache/sshd/common/future/CloseFuture;

    invoke-static {v0, p1}, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->lambda$close$0(Ljava/util/TimerTask;Lorg/apache/sshd/common/future/CloseFuture;)V

    return-void
.end method
