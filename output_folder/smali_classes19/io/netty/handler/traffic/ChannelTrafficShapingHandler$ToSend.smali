.class final Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;
.super Ljava/lang/Object;
.source "ChannelTrafficShapingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/traffic/ChannelTrafficShapingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToSend"
.end annotation


# instance fields
.field final promise:Lio/netty/channel/ChannelPromise;

.field final relativeTimeAction:J

.field final toSend:Ljava/lang/Object;


# direct methods
.method private constructor <init>(JLjava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "delay"    # J
    .param p3, "toSend"    # Ljava/lang/Object;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-wide p1, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;->relativeTimeAction:J

    .line 172
    iput-object p3, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    .line 173
    iput-object p4, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;->promise:Lio/netty/channel/ChannelPromise;

    .line 174
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/Object;Lio/netty/channel/ChannelPromise;Lio/netty/handler/traffic/ChannelTrafficShapingHandler$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/lang/Object;
    .param p4, "x2"    # Lio/netty/channel/ChannelPromise;
    .param p5, "x3"    # Lio/netty/handler/traffic/ChannelTrafficShapingHandler$1;

    .line 165
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;-><init>(JLjava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method
