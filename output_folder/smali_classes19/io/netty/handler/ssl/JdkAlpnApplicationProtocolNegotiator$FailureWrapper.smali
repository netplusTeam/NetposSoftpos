.class final Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$FailureWrapper;
.super Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$AllocatorAwareSslEngineWrapperFactory;
.source "JdkAlpnApplicationProtocolNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FailureWrapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$AllocatorAwareSslEngineWrapperFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$1;

    .line 118
    invoke-direct {p0}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator$FailureWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public wrapSslEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)Ljavax/net/ssl/SSLEngine;
    .locals 2
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p3, "applicationNegotiator"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;
    .param p4, "isServer"    # Z

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ALPN unsupported. Is your classpath configured correctly? For Conscrypt, add the appropriate Conscrypt JAR to classpath and set the security provider. For Jetty-ALPN, see http://www.eclipse.org/jetty/documentation/current/alpn-chapter.html#alpn-starting"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
