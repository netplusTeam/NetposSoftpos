.class public abstract Lio/netty/handler/codec/http/cookie/CookieDecoder;
.super Ljava/lang/Object;
.source "CookieDecoder.java"


# instance fields
.field private final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private final strict:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 1
    .param p1, "strict"    # Z

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 37
    iput-boolean p1, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->strict:Z

    .line 38
    return-void
.end method


# virtual methods
.method protected initCookie(Ljava/lang/String;IIII)Lio/netty/handler/codec/http/cookie/DefaultCookie;
    .locals 9
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "nameBegin"    # I
    .param p3, "nameEnd"    # I
    .param p4, "valueBegin"    # I
    .param p5, "valueEnd"    # I

    .line 41
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_8

    if-ne p2, p3, :cond_0

    goto/16 :goto_1

    .line 46
    :cond_0
    if-ne p4, v0, :cond_1

    .line 47
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Skipping cookie with null value"

    invoke-interface {v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 48
    return-object v1

    .line 51
    :cond_1
    invoke-static {p1, p4, p5}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 52
    .local v0, "wrappedValue":Ljava/lang/CharSequence;
    invoke-static {v0}, Lio/netty/handler/codec/http/cookie/CookieUtil;->unwrapValue(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 53
    .local v2, "unwrappedValue":Ljava/lang/CharSequence;
    if-nez v2, :cond_2

    .line 54
    iget-object v3, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Skipping cookie because starting quotes are not properly balanced in \'{}\'"

    invoke-interface {v3, v4, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    return-object v1

    .line 59
    :cond_2
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "name":Ljava/lang/String;
    iget-boolean v4, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->strict:Z

    if-eqz v4, :cond_4

    invoke-static {v3}, Lio/netty/handler/codec/http/cookie/CookieUtil;->firstInvalidCookieNameOctet(Ljava/lang/CharSequence;)I

    move-result v4

    move v5, v4

    .local v5, "invalidOctetPos":I
    if-ltz v4, :cond_4

    .line 63
    iget-object v4, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 64
    iget-object v4, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    .line 64
    const-string v7, "Skipping cookie because name \'{}\' contains invalid char \'{}\'"

    invoke-interface {v4, v7, v3, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    :cond_3
    return-object v1

    .line 70
    .end local v5    # "invalidOctetPos":I
    :cond_4
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v5, p5, p4

    if-eq v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    .line 72
    .local v4, "wrap":Z
    :goto_0
    iget-boolean v5, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->strict:Z

    if-eqz v5, :cond_7

    invoke-static {v2}, Lio/netty/handler/codec/http/cookie/CookieUtil;->firstInvalidCookieValueOctet(Ljava/lang/CharSequence;)I

    move-result v5

    move v6, v5

    .local v6, "invalidOctetPos":I
    if-ltz v5, :cond_7

    .line 73
    iget-object v5, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 74
    iget-object v5, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 75
    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    .line 74
    const-string v8, "Skipping cookie because value \'{}\' contains invalid char \'{}\'"

    invoke-interface {v5, v8, v2, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    :cond_6
    return-object v1

    .line 80
    .end local v6    # "invalidOctetPos":I
    :cond_7
    new-instance v1, Lio/netty/handler/codec/http/cookie/DefaultCookie;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lio/netty/handler/codec/http/cookie/DefaultCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v1, "cookie":Lio/netty/handler/codec/http/cookie/DefaultCookie;
    invoke-virtual {v1, v4}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->setWrap(Z)V

    .line 82
    return-object v1

    .line 42
    .end local v0    # "wrappedValue":Ljava/lang/CharSequence;
    .end local v1    # "cookie":Lio/netty/handler/codec/http/cookie/DefaultCookie;
    .end local v2    # "unwrappedValue":Ljava/lang/CharSequence;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "wrap":Z
    :cond_8
    :goto_1
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Skipping cookie with null name"

    invoke-interface {v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 43
    return-object v1
.end method
