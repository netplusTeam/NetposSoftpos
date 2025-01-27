.class Lorg/apache/sshd/client/channel/ChannelSession$1;
.super Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;
.source "ChannelSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/client/channel/ChannelSession;->doOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/client/channel/ChannelSession;


# direct methods
.method constructor <init>(Lorg/apache/sshd/client/channel/ChannelSession;Lorg/apache/sshd/common/channel/Channel;B)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/client/channel/ChannelSession;
    .param p2, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p3, "cmd"    # B

    .line 70
    iput-object p1, p0, Lorg/apache/sshd/client/channel/ChannelSession$1;->this$0:Lorg/apache/sshd/client/channel/ChannelSession;

    invoke-direct {p0, p2, p3}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;-><init>(Lorg/apache/sshd/common/channel/Channel;B)V

    return-void
.end method


# virtual methods
.method protected doCloseGracefully()Lorg/apache/sshd/common/future/CloseFuture;
    .locals 2

    .line 75
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelSession$1;->this$0:Lorg/apache/sshd/client/channel/ChannelSession;

    invoke-static {v0}, Lorg/apache/sshd/client/channel/ChannelSession;->access$000(Lorg/apache/sshd/client/channel/ChannelSession;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelSession$1;->this$0:Lorg/apache/sshd/client/channel/ChannelSession;

    invoke-virtual {v1}, Lorg/apache/sshd/client/channel/ChannelSession;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    .line 78
    .local v1, "session":Lorg/apache/sshd/common/session/Session;
    invoke-interface {v1, v0}, Lorg/apache/sshd/common/session/Session;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "session":Lorg/apache/sshd/common/session/Session;
    :goto_0
    invoke-super {p0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->doCloseGracefully()Lorg/apache/sshd/common/future/CloseFuture;

    move-result-object v0

    return-object v0
.end method
