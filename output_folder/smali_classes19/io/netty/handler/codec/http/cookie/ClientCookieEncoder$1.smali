.class final Lio/netty/handler/codec/http/cookie/ClientCookieEncoder$1;
.super Ljava/lang/Object;
.source "ClientCookieEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/netty/handler/codec/http/cookie/Cookie;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lio/netty/handler/codec/http/cookie/Cookie;Lio/netty/handler/codec/http/cookie/Cookie;)I
    .locals 5
    .param p1, "c1"    # Lio/netty/handler/codec/http/cookie/Cookie;
    .param p2, "c2"    # Lio/netty/handler/codec/http/cookie/Cookie;

    .line 98
    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->path()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "path1":Ljava/lang/String;
    invoke-interface {p2}, Lio/netty/handler/codec/http/cookie/Cookie;->path()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "path2":Ljava/lang/String;
    const v2, 0x7fffffff

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 106
    .local v3, "len1":I
    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 110
    .local v2, "len2":I
    :goto_1
    sub-int v4, v2, v3

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 95
    check-cast p1, Lio/netty/handler/codec/http/cookie/Cookie;

    check-cast p2, Lio/netty/handler/codec/http/cookie/Cookie;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder$1;->compare(Lio/netty/handler/codec/http/cookie/Cookie;Lio/netty/handler/codec/http/cookie/Cookie;)I

    move-result p1

    return p1
.end method
