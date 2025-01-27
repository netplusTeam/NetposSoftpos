.class public final synthetic Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/netty/channel/ChannelFactory;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newChannel()Lio/netty/channel/Channel;
    .locals 1

    invoke-static {}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->$r8$lambda$Vsx8-5aKZJgk81sYm310N7J4yic()Lio/netty/channel/socket/nio/NioSocketChannel;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    return-object v0
.end method
