.class final Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;
.super Ljava/lang/Object;
.source "GlobalTrafficShapingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/traffic/GlobalTrafficShapingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToSend"
.end annotation


# instance fields
.field final promise:Lio/netty/channel/ChannelPromise;

.field final relativeTimeAction:J

.field final size:J

.field final toSend:Ljava/lang/Object;


# direct methods
.method private constructor <init>(JLjava/lang/Object;JLio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "delay"    # J
    .param p3, "toSend"    # Ljava/lang/Object;
    .param p4, "size"    # J
    .param p6, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-wide p1, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->relativeTimeAction:J

    .line 324
    iput-object p3, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    .line 325
    iput-wide p4, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->size:J

    .line 326
    iput-object p6, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->promise:Lio/netty/channel/ChannelPromise;

    .line 327
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/Object;JLio/netty/channel/ChannelPromise;Lio/netty/handler/traffic/GlobalTrafficShapingHandler$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/lang/Object;
    .param p4, "x2"    # J
    .param p6, "x3"    # Lio/netty/channel/ChannelPromise;
    .param p7, "x4"    # Lio/netty/handler/traffic/GlobalTrafficShapingHandler$1;

    .line 316
    invoke-direct/range {p0 .. p6}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;-><init>(JLjava/lang/Object;JLio/netty/channel/ChannelPromise;)V

    return-void
.end method
