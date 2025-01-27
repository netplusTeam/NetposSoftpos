.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslSniHostnameMatcher;
.super Ljava/lang/Object;
.source "ReferenceCountedOpenSslServerContext.java"

# interfaces
.implements Lio/netty/internal/tcnative/SniHostNameMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OpenSslSniHostnameMatcher"
.end annotation


# instance fields
.field private final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;)V
    .locals 0
    .param p1, "engineMap"    # Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslSniHostnameMatcher;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 266
    return-void
.end method


# virtual methods
.method public match(JLjava/lang/String;)Z
    .locals 4
    .param p1, "ssl"    # J
    .param p3, "hostname"    # Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslSniHostnameMatcher;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/ssl/OpenSslEngineMap;->get(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object v0

    .line 271
    .local v0, "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    if-eqz v0, :cond_0

    .line 273
    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->checkSniHostnameMatch([B)Z

    move-result v1

    return v1

    .line 275
    :cond_0
    invoke-static {}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "No ReferenceCountedOpenSslEngine found for SSL pointer: {}"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    const/4 v1, 0x0

    return v1
.end method
