.class public abstract Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$AllocatorAwareSslEngineWrapperFactory;
.super Ljava/lang/Object;
.source "JdkApplicationProtocolNegotiator.java"

# interfaces
.implements Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AllocatorAwareSslEngineWrapperFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract wrapSslEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)Ljavax/net/ssl/SSLEngine;
.end method

.method public final wrapSslEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)Ljavax/net/ssl/SSLEngine;
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "applicationNegotiator"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;
    .param p3, "isServer"    # Z

    .line 54
    sget-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    invoke-virtual {p0, p1, v0, p2, p3}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$AllocatorAwareSslEngineWrapperFactory;->wrapSslEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method
