.class public interface abstract Lorg/apache/sshd/common/channel/ChannelListener;
.super Ljava/lang/Object;
.source "ChannelListener.java"

# interfaces
.implements Lorg/apache/sshd/common/util/SshdEventListener;


# static fields
.field public static final EMPTY:Lorg/apache/sshd/common/channel/ChannelListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/apache/sshd/common/channel/ChannelListener$1;

    invoke-direct {v0}, Lorg/apache/sshd/common/channel/ChannelListener$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/channel/ChannelListener;->EMPTY:Lorg/apache/sshd/common/channel/ChannelListener;

    return-void
.end method

.method public static validateListener(Lorg/apache/sshd/common/channel/ChannelListener;)Lorg/apache/sshd/common/channel/ChannelListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Lorg/apache/sshd/common/channel/ChannelListener;",
            ">(T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .line 106
    .local p0, "listener":Lorg/apache/sshd/common/channel/ChannelListener;, "TL;"
    const-class v0, Lorg/apache/sshd/common/channel/ChannelListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/SshdEventListener;->validateListener(Lorg/apache/sshd/common/util/SshdEventListener;Ljava/lang/String;)Lorg/apache/sshd/common/util/SshdEventListener;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/channel/ChannelListener;

    return-object v0
.end method


# virtual methods
.method public channelClosed(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "reason"    # Ljava/lang/Throwable;

    .line 103
    return-void
.end method

.method public channelInitialized(Lorg/apache/sshd/common/channel/Channel;)V
    .locals 0
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;

    .line 51
    return-void
.end method

.method public channelOpenFailure(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "reason"    # Ljava/lang/Throwable;

    .line 74
    return-void
.end method

.method public channelOpenSuccess(Lorg/apache/sshd/common/channel/Channel;)V
    .locals 0
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;

    .line 62
    return-void
.end method

.method public channelStateChanged(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "hint"    # Ljava/lang/String;

    .line 87
    return-void
.end method
