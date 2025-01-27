.class public final Lio/netty/handler/codec/http/websocketx/WebSocketScheme;
.super Ljava/lang/Object;
.source "WebSocketScheme.java"


# static fields
.field public static final WS:Lio/netty/handler/codec/http/websocketx/WebSocketScheme;

.field public static final WSS:Lio/netty/handler/codec/http/websocketx/WebSocketScheme;


# instance fields
.field private final name:Lio/netty/util/AsciiString;

.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;

    const/16 v1, 0x50

    const-string v2, "ws"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->WS:Lio/netty/handler/codec/http/websocketx/WebSocketScheme;

    .line 33
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;

    const/16 v1, 0x1bb

    const-string v2, "wss"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->WSS:Lio/netty/handler/codec/http/websocketx/WebSocketScheme;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->port:I

    .line 40
    invoke-static {p2}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->name:Lio/netty/util/AsciiString;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 53
    instance-of v0, p1, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 54
    return v1

    .line 56
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;

    .line 57
    .local v0, "other":Lio/netty/handler/codec/http/websocketx/WebSocketScheme;
    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->port()I

    move-result v2

    iget v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->port:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->name()Lio/netty/util/AsciiString;

    move-result-object v2

    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->name:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v3}, Lio/netty/util/AsciiString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 62
    iget v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->port:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->name:Lio/netty/util/AsciiString;

    invoke-virtual {v1}, Lio/netty/util/AsciiString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public name()Lio/netty/util/AsciiString;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->name:Lio/netty/util/AsciiString;

    return-object v0
.end method

.method public port()I
    .locals 1

    .line 48
    iget v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->port:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketScheme;->name:Lio/netty/util/AsciiString;

    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
