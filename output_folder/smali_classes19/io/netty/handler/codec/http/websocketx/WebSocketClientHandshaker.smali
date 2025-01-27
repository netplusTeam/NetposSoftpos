.class public abstract Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
.super Ljava/lang/Object;
.source "WebSocketClientHandshaker.java"


# static fields
.field protected static final DEFAULT_FORCE_CLOSE_TIMEOUT_MILLIS:I = 0x2710

.field private static final FORCE_CLOSE_INIT_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTPS_SCHEME_PREFIX:Ljava/lang/String;

.field private static final HTTP_SCHEME_PREFIX:Ljava/lang/String;


# instance fields
.field private final absoluteUpgradeUrl:Z

.field private volatile actualSubprotocol:Ljava/lang/String;

.field protected final customHeaders:Lio/netty/handler/codec/http/HttpHeaders;

.field private final expectedSubprotocol:Ljava/lang/String;

.field private volatile forceCloseComplete:Z

.field private volatile forceCloseInit:I

.field private volatile forceCloseTimeoutMillis:J

.field private volatile handshakeComplete:Z

.field private final maxFramePayloadLength:I

.field private final uri:Ljava/net/URI;

.field private final version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/netty/handler/codec/http/HttpScheme;->HTTP:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->HTTP_SCHEME_PREFIX:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/netty/handler/codec/http/HttpScheme;->HTTPS:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->HTTPS_SCHEME_PREFIX:Ljava/lang/String;

    .line 66
    const-class v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    .line 67
    const-string v1, "forceCloseInit"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->FORCE_CLOSE_INIT_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 66
    return-void
.end method

.method protected constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;I)V
    .locals 8
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p5, "maxFramePayloadLength"    # I

    .line 98
    const-wide/16 v6, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;IJ)V

    .line 99
    return-void
.end method

.method protected constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;IJ)V
    .locals 9
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p5, "maxFramePayloadLength"    # I
    .param p6, "forceCloseTimeoutMillis"    # J

    .line 121
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;IJZ)V

    .line 122
    return-void
.end method

.method protected constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;IJZ)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p5, "maxFramePayloadLength"    # I
    .param p6, "forceCloseTimeoutMillis"    # J
    .param p8, "absoluteUpgradeUrl"    # Z

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->forceCloseTimeoutMillis:J

    .line 147
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->uri:Ljava/net/URI;

    .line 148
    iput-object p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    .line 149
    iput-object p3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->expectedSubprotocol:Ljava/lang/String;

    .line 150
    iput-object p4, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->customHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    .line 151
    iput p5, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->maxFramePayloadLength:I

    .line 152
    iput-wide p6, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->forceCloseTimeoutMillis:J

    .line 153
    iput-boolean p8, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->absoluteUpgradeUrl:Z

    .line 154
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    .line 50
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->FORCE_CLOSE_INIT_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method static synthetic access$102(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .param p1, "x1"    # Z

    .line 50
    iput-boolean p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->forceCloseComplete:Z

    return p1
.end method

.method private applyForceCloseTimeout(Lio/netty/channel/Channel;Lio/netty/channel/ChannelFuture;)V
    .locals 9
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "flushFuture"    # Lio/netty/channel/ChannelFuture;

    .line 524
    iget-wide v6, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->forceCloseTimeoutMillis:J

    .line 525
    .local v6, "forceCloseTimeoutMillis":J
    move-object v3, p0

    .line 526
    .local v3, "handshaker":Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->forceCloseInit:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    new-instance v8, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;Lio/netty/channel/Channel;Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;J)V

    invoke-interface {p2, v8}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 558
    return-void

    .line 527
    :cond_1
    :goto_0
    return-void
.end method

.method private setActualSubprotocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "actualSubprotocol"    # Ljava/lang/String;

    .line 204
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->actualSubprotocol:Ljava/lang/String;

    .line 205
    return-void
.end method

.method private setHandshakeComplete()V
    .locals 1

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->handshakeComplete:Z

    .line 186
    return-void
.end method

.method static websocketHostValue(Ljava/net/URI;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "wsURL"    # Ljava/net/URI;

    .line 575
    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 576
    .local v0, "port":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 577
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 579
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, "scheme":Ljava/lang/String;
    sget-object v3, Lio/netty/handler/codec/http/HttpScheme;->HTTP:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v3}, Lio/netty/handler/codec/http/HttpScheme;->port()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 582
    sget-object v3, Lio/netty/handler/codec/http/HttpScheme;->HTTP:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v3}, Lio/netty/handler/codec/http/HttpScheme;->name()Lio/netty/util/AsciiString;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->WS:Lio/netty/handler/codec/http/websocketx/WebSocketScheme;

    .line 583
    invoke-virtual {v3}, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->name()Lio/netty/util/AsciiString;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 584
    :cond_1
    invoke-static {v1, v0}, Lio/netty/util/NetUtil;->toSocketAddressString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 583
    :cond_2
    :goto_0
    move-object v3, v1

    .line 582
    :goto_1
    return-object v3

    .line 586
    :cond_3
    sget-object v3, Lio/netty/handler/codec/http/HttpScheme;->HTTPS:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v3}, Lio/netty/handler/codec/http/HttpScheme;->port()I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 587
    sget-object v3, Lio/netty/handler/codec/http/HttpScheme;->HTTPS:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v3}, Lio/netty/handler/codec/http/HttpScheme;->name()Lio/netty/util/AsciiString;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->WSS:Lio/netty/handler/codec/http/websocketx/WebSocketScheme;

    .line 588
    invoke-virtual {v3}, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->name()Lio/netty/util/AsciiString;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 589
    :cond_4
    invoke-static {v1, v0}, Lio/netty/util/NetUtil;->toSocketAddressString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 588
    :cond_5
    :goto_2
    move-object v3, v1

    .line 587
    :goto_3
    return-object v3

    .line 594
    :cond_6
    invoke-static {v1, v0}, Lio/netty/util/NetUtil;->toSocketAddressString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static websocketOriginValue(Ljava/net/URI;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "wsURL"    # Ljava/net/URI;

    .line 598
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v1

    .line 602
    .local v1, "port":I
    sget-object v2, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->WSS:Lio/netty/handler/codec/http/websocketx/WebSocketScheme;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->name()Lio/netty/util/AsciiString;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lio/netty/handler/codec/http/HttpScheme;->HTTPS:Lio/netty/handler/codec/http/HttpScheme;

    .line 603
    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpScheme;->name()Lio/netty/util/AsciiString;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_0

    sget-object v2, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->WSS:Lio/netty/handler/codec/http/websocketx/WebSocketScheme;

    .line 604
    invoke-virtual {v2}, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->port()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 609
    :cond_0
    sget-object v2, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->HTTP_SCHEME_PREFIX:Ljava/lang/String;

    .line 610
    .local v2, "schemePrefix":Ljava/lang/String;
    sget-object v3, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->WS:Lio/netty/handler/codec/http/websocketx/WebSocketScheme;

    invoke-virtual {v3}, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->port()I

    move-result v3

    .local v3, "defaultPort":I
    goto :goto_1

    .line 606
    .end local v2    # "schemePrefix":Ljava/lang/String;
    .end local v3    # "defaultPort":I
    :cond_1
    :goto_0
    sget-object v2, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->HTTPS_SCHEME_PREFIX:Ljava/lang/String;

    .line 607
    .restart local v2    # "schemePrefix":Ljava/lang/String;
    sget-object v3, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->WSS:Lio/netty/handler/codec/http/websocketx/WebSocketScheme;

    invoke-virtual {v3}, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->port()I

    move-result v3

    .line 614
    .restart local v3    # "defaultPort":I
    :goto_1
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 616
    .local v4, "host":Ljava/lang/String;
    if-eq v1, v3, :cond_2

    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 619
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4, v1}, Lio/netty/util/NetUtil;->toSocketAddressString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 621
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public actualSubprotocol()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->actualSubprotocol:Ljava/lang/String;

    return-object v0
.end method

.method public close(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "frame"    # Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    .line 502
    const-string v0, "channel"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 503
    invoke-interface {p1}, Lio/netty/channel/Channel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->close(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "frame"    # Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 517
    const-string v0, "channel"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 518
    invoke-interface {p1, p2, p3}, Lio/netty/channel/Channel;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 519
    invoke-direct {p0, p1, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->applyForceCloseTimeout(Lio/netty/channel/Channel;Lio/netty/channel/ChannelFuture;)V

    .line 520
    return-object p3
.end method

.method public expectedSubprotocol()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->expectedSubprotocol:Ljava/lang/String;

    return-object v0
.end method

.method public final finishHandshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpResponse;)V
    .locals 11
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "response"    # Lio/netty/handler/codec/http/FullHttpResponse;

    .line 302
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->verify(Lio/netty/handler/codec/http/FullHttpResponse;)V

    .line 306
    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_PROTOCOL:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "receivedProtocol":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .line 308
    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->expectedSubprotocol:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, ""

    .line 309
    .local v1, "expectedProtocol":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .line 311
    .local v2, "protocolValid":Z
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 313
    const/4 v2, 0x1

    .line 314
    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->expectedSubprotocol:Ljava/lang/String;

    invoke-direct {p0, v3}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->setActualSubprotocol(Ljava/lang/String;)V

    goto :goto_3

    .line 315
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 317
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v7, v3, v6

    .line 318
    .local v7, "protocol":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 319
    const/4 v2, 0x1

    .line 320
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->setActualSubprotocol(Ljava/lang/String;)V

    .line 321
    goto :goto_3

    .line 317
    .end local v7    # "protocol":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 326
    :cond_4
    :goto_3
    if-eqz v2, :cond_a

    .line 332
    invoke-direct {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->setHandshakeComplete()V

    .line 334
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v3

    .line 336
    .local v3, "p":Lio/netty/channel/ChannelPipeline;
    const-class v4, Lio/netty/handler/codec/http/HttpContentDecompressor;

    invoke-interface {v3, v4}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v4

    check-cast v4, Lio/netty/handler/codec/http/HttpContentDecompressor;

    .line 337
    .local v4, "decompressor":Lio/netty/handler/codec/http/HttpContentDecompressor;
    if-eqz v4, :cond_5

    .line 338
    invoke-interface {v3, v4}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 342
    :cond_5
    const-class v5, Lio/netty/handler/codec/http/HttpObjectAggregator;

    invoke-interface {v3, v5}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v5

    check-cast v5, Lio/netty/handler/codec/http/HttpObjectAggregator;

    .line 343
    .local v5, "aggregator":Lio/netty/handler/codec/http/HttpObjectAggregator;
    if-eqz v5, :cond_6

    .line 344
    invoke-interface {v3, v5}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 347
    :cond_6
    const-class v6, Lio/netty/handler/codec/http/HttpResponseDecoder;

    invoke-interface {v3, v6}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v6

    .line 348
    .local v6, "ctx":Lio/netty/channel/ChannelHandlerContext;
    const-string v7, "ws-decoder"

    if-nez v6, :cond_8

    .line 349
    const-class v8, Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-interface {v3, v8}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v6

    .line 350
    if-eqz v6, :cond_7

    .line 354
    invoke-interface {v6}, Lio/netty/channel/ChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v8

    check-cast v8, Lio/netty/handler/codec/http/HttpClientCodec;

    .line 356
    .local v8, "codec":Lio/netty/handler/codec/http/HttpClientCodec;
    invoke-virtual {v8}, Lio/netty/handler/codec/http/HttpClientCodec;->removeOutboundHandler()V

    .line 358
    invoke-interface {v6}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->newWebsocketDecoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;

    move-result-object v10

    invoke-interface {v3, v9, v7, v10}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 363
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v7

    new-instance v9, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$2;

    invoke-direct {v9, p0, v3, v8}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$2;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;Lio/netty/channel/ChannelPipeline;Lio/netty/handler/codec/http/HttpClientCodec;)V

    invoke-interface {v7, v9}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 369
    .end local v8    # "codec":Lio/netty/handler/codec/http/HttpClientCodec;
    goto :goto_4

    .line 351
    :cond_7
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "ChannelPipeline does not contain an HttpRequestEncoder or HttpClientCodec"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 370
    :cond_8
    const-class v8, Lio/netty/handler/codec/http/HttpRequestEncoder;

    invoke-interface {v3, v8}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 372
    const-class v8, Lio/netty/handler/codec/http/HttpRequestEncoder;

    invoke-interface {v3, v8}, Lio/netty/channel/ChannelPipeline;->remove(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    .line 374
    :cond_9
    move-object v8, v6

    .line 375
    .local v8, "context":Lio/netty/channel/ChannelHandlerContext;
    invoke-interface {v8}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->newWebsocketDecoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;

    move-result-object v10

    invoke-interface {v3, v9, v7, v10}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 380
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v7

    new-instance v9, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$3;

    invoke-direct {v9, p0, v3, v8}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$3;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;Lio/netty/channel/ChannelPipeline;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v7, v9}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 387
    .end local v8    # "context":Lio/netty/channel/ChannelHandlerContext;
    :goto_4
    return-void

    .line 327
    .end local v3    # "p":Lio/netty/channel/ChannelPipeline;
    .end local v4    # "decompressor":Lio/netty/handler/codec/http/HttpContentDecompressor;
    .end local v5    # "aggregator":Lio/netty/handler/codec/http/HttpObjectAggregator;
    .end local v6    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    :cond_a
    new-instance v3, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    iget-object v4, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->expectedSubprotocol:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const-string v4, "Invalid subprotocol. Actual: %s. Expected one of: %s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public forceCloseTimeoutMillis()J
    .locals 2

    .line 208
    iget-wide v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->forceCloseTimeoutMillis:J

    return-wide v0
.end method

.method public handshake(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 237
    const-string v0, "channel"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    invoke-interface {p1}, Lio/netty/channel/Channel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->handshake(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final handshake(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 5
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 250
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 251
    .local v0, "pipeline":Lio/netty/channel/ChannelPipeline;
    const-class v1, Lio/netty/handler/codec/http/HttpResponseDecoder;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/HttpResponseDecoder;

    .line 252
    .local v1, "decoder":Lio/netty/handler/codec/http/HttpResponseDecoder;
    if-nez v1, :cond_0

    .line 253
    const-class v2, Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-interface {v0, v2}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http/HttpClientCodec;

    .line 254
    .local v2, "codec":Lio/netty/handler/codec/http/HttpClientCodec;
    if-nez v2, :cond_0

    .line 255
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "ChannelPipeline does not contain an HttpResponseDecoder or HttpClientCodec"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v3}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 257
    return-object p2

    .line 261
    .end local v2    # "codec":Lio/netty/handler/codec/http/HttpClientCodec;
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->newHandshakeRequest()Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v2

    .line 263
    .local v2, "request":Lio/netty/handler/codec/http/FullHttpRequest;
    invoke-interface {p1, v2}, Lio/netty/channel/Channel;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v3

    new-instance v4, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$1;

    invoke-direct {v4, p0, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$1;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v3, v4}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 285
    return-object p2
.end method

.method protected isForceCloseComplete()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->forceCloseComplete:Z

    return v0
.end method

.method public isHandshakeComplete()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->handshakeComplete:Z

    return v0
.end method

.method public maxFramePayloadLength()I
    .locals 1

    .line 174
    iget v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->maxFramePayloadLength:I

    return v0
.end method

.method protected abstract newHandshakeRequest()Lio/netty/handler/codec/http/FullHttpRequest;
.end method

.method protected abstract newWebSocketEncoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameEncoder;
.end method

.method protected abstract newWebsocketDecoder()Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;
.end method

.method public final processHandshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/HttpResponse;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "response"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 400
    invoke-interface {p1}, Lio/netty/channel/Channel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->processHandshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/HttpResponse;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final processHandshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/HttpResponse;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 6
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "response"    # Lio/netty/handler/codec/http/HttpResponse;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 417
    instance-of v0, p2, Lio/netty/handler/codec/http/FullHttpResponse;

    if-eqz v0, :cond_0

    .line 419
    :try_start_0
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->finishHandshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpResponse;)V

    .line 420
    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v0

    .line 422
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 423
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 425
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 426
    .local v0, "p":Lio/netty/channel/ChannelPipeline;
    const-class v1, Lio/netty/handler/codec/http/HttpResponseDecoder;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    .line 427
    .local v1, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-nez v1, :cond_1

    .line 428
    const-class v2, Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-interface {v0, v2}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    .line 429
    if-nez v1, :cond_1

    .line 430
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ChannelPipeline does not contain an HttpResponseDecoder or HttpClientCodec"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object v2

    return-object v2

    .line 438
    :cond_1
    const-string v2, "httpAggregator"

    .line 439
    .local v2, "aggregatorName":Ljava/lang/String;
    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/netty/handler/codec/http/HttpObjectAggregator;

    const/16 v5, 0x2000

    invoke-direct {v4, v5}, Lio/netty/handler/codec/http/HttpObjectAggregator;-><init>(I)V

    invoke-interface {v0, v3, v2, v4}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 440
    new-instance v3, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;

    invoke-direct {v3, p0, p1, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$4;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)V

    const-string v4, "handshaker"

    invoke-interface {v0, v2, v4, v3}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 470
    :try_start_1
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 473
    goto :goto_1

    .line 471
    :catchall_1
    move-exception v3

    .line 472
    .local v3, "cause":Ljava/lang/Throwable;
    invoke-interface {p3, v3}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 475
    .end local v0    # "p":Lio/netty/channel/ChannelPipeline;
    .end local v1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local v2    # "aggregatorName":Ljava/lang/String;
    .end local v3    # "cause":Ljava/lang/Throwable;
    :goto_1
    return-object p3
.end method

.method public setForceCloseTimeoutMillis(J)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .locals 0
    .param p1, "forceCloseTimeoutMillis"    # J

    .line 226
    iput-wide p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->forceCloseTimeoutMillis:J

    .line 227
    return-object p0
.end method

.method protected upgradeUrl(Ljava/net/URI;)Ljava/lang/String;
    .locals 4
    .param p1, "wsURL"    # Ljava/net/URI;

    .line 564
    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->absoluteUpgradeUrl:Z

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 568
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "/"

    :goto_1
    move-object v0, v1

    .line 570
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "query":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    return-object v2
.end method

.method public uri()Ljava/net/URI;
    .locals 1

    .line 160
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->uri:Ljava/net/URI;

    return-object v0
.end method

.method protected abstract verify(Lio/netty/handler/codec/http/FullHttpResponse;)V
.end method

.method public version()Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .locals 1

    .line 167
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-object v0
.end method
