.class public final Lio/netty/handler/codec/http/ClientCookieEncoder;
.super Ljava/lang/Object;
.source "ClientCookieEncoder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static encode(Lio/netty/handler/codec/http/Cookie;)Ljava/lang/String;
    .locals 1
    .param p0, "cookie"    # Lio/netty/handler/codec/http/Cookie;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    sget-object v0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->LAX:Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Lio/netty/handler/codec/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lio/netty/handler/codec/http/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    .local p0, "cookies":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/handler/codec/http/Cookie;>;"
    sget-object v0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->LAX:Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    sget-object v0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->LAX:Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;

    invoke-virtual {v0, p0, p1}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs encode([Lio/netty/handler/codec/http/Cookie;)Ljava/lang/String;
    .locals 1
    .param p0, "cookies"    # [Lio/netty/handler/codec/http/Cookie;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    sget-object v0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->LAX:Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode([Lio/netty/handler/codec/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
