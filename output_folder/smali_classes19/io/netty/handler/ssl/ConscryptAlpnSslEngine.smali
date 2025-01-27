.class abstract Lio/netty/handler/ssl/ConscryptAlpnSslEngine;
.super Lio/netty/handler/ssl/JdkSslEngine;
.source "ConscryptAlpnSslEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAdapter;,
        Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAllocatorAdapter;,
        Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;,
        Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;
    }
.end annotation


# static fields
.field private static final USE_BUFFER_ALLOCATOR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-string v0, "io.netty.handler.ssl.conscrypt.useBufferAllocator"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;->USE_BUFFER_ALLOCATOR:Z

    return-void
.end method

.method private constructor <init>(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Ljava/util/List;)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Lio/netty/buffer/ByteBufAllocator;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/JdkSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;)V

    .line 69
    sget-boolean v0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;->USE_BUFFER_ALLOCATOR:Z

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAllocatorAdapter;

    invoke-direct {v0, p2}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$BufferAllocatorAdapter;-><init>(Lio/netty/buffer/ByteBufAllocator;)V

    invoke-static {p1, v0}, Lorg/conscrypt/Conscrypt;->setBufferAllocator(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/BufferAllocator;)V

    .line 74
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/conscrypt/Conscrypt;->setApplicationProtocols(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Ljava/util/List;Lio/netty/handler/ssl/ConscryptAlpnSslEngine$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "x1"    # Lio/netty/buffer/ByteBufAllocator;
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Lio/netty/handler/ssl/ConscryptAlpnSslEngine$1;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Ljava/util/List;)V

    return-void
.end method

.method static newClientEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)Lio/netty/handler/ssl/ConscryptAlpnSslEngine;
    .locals 1
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "applicationNegotiator"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    .line 49
    new-instance v0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ClientEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)V

    return-object v0
.end method

.method static newServerEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)Lio/netty/handler/ssl/ConscryptAlpnSslEngine;
    .locals 1
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "applicationNegotiator"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    .line 54
    new-instance v0, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine$ServerEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)V

    return-object v0
.end method


# virtual methods
.method final calculateOutNetBufSize(II)I
    .locals 6
    .param p1, "plaintextBytes"    # I
    .param p2, "numBuffers"    # I

    .line 87
    invoke-virtual {p0}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;->getWrappedEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/Conscrypt;->maxSealOverhead(Ljavax/net/ssl/SSLEngine;)I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    .line 89
    .local v0, "maxOverhead":J
    int-to-long v2, p1

    add-long/2addr v2, v0

    const-wide/32 v4, 0x7fffffff

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    return v2
.end method

.method final unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "dests"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;->getWrappedEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/conscrypt/Conscrypt;->unwrap(Ljavax/net/ssl/SSLEngine;[Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method
