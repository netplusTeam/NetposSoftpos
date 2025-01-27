.class Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable$1;
.super Ljava/util/TimerTask;
.source "ChannelSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;


# direct methods
.method constructor <init>(Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;)V
    .locals 0
    .param p1, "this$1"    # Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;

    .line 184
    iput-object p1, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable$1;->this$1:Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable$1;->this$1:Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;

    iget-object v0, v0, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;->this$0:Lorg/apache/sshd/server/channel/ChannelSession;

    iget-object v0, v0, Lorg/apache/sshd/server/channel/ChannelSession;->commandExitFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/sshd/common/future/CloseFuture;->setClosed()V

    .line 188
    return-void
.end method
