.class public final Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;
.super Lio/netty/handler/codec/http/cookie/CookieDecoder;
.source "ClientCookieDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;
    }
.end annotation


# static fields
.field public static final LAX:Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;

.field public static final STRICT:Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;-><init>(Z)V

    sput-object v0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;->STRICT:Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;

    .line 44
    new-instance v0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;-><init>(Z)V

    sput-object v0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;->LAX:Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "strict"    # Z

    .line 47
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/cookie/CookieDecoder;-><init>(Z)V

    .line 48
    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Lio/netty/handler/codec/http/cookie/Cookie;
    .locals 14
    .param p1, "header"    # Ljava/lang/String;

    .line 56
    const-string v0, "header"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 58
    .local v0, "headerLen":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 59
    return-object v1

    .line 62
    :cond_0
    const/4 v2, 0x0

    .line 64
    .local v2, "cookieBuilder":Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;
    const/4 v3, 0x0

    .line 68
    .local v3, "i":I
    :goto_0
    if-ne v3, v0, :cond_1

    .line 69
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 72
    .local v4, "c":C
    const/16 v5, 0x2c

    if-ne v4, v5, :cond_3

    .line 75
    nop

    .line 144
    .end local v3    # "i":I
    .end local v4    # "c":C
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie()Lio/netty/handler/codec/http/cookie/Cookie;

    move-result-object v1

    :cond_2
    return-object v1

    .line 77
    .restart local v3    # "i":I
    .restart local v4    # "c":C
    :cond_3
    const/16 v6, 0x9

    if-eq v4, v6, :cond_d

    const/16 v6, 0xa

    if-eq v4, v6, :cond_d

    const/16 v6, 0xb

    if-eq v4, v6, :cond_d

    const/16 v6, 0xc

    if-eq v4, v6, :cond_d

    const/16 v6, 0xd

    if-eq v4, v6, :cond_d

    const/16 v6, 0x20

    if-eq v4, v6, :cond_d

    const/16 v6, 0x3b

    if-ne v4, v6, :cond_4

    goto/16 :goto_7

    .line 85
    .end local v4    # "c":C
    :cond_4
    move v13, v3

    .line 91
    .local v13, "nameBegin":I
    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 92
    .local v4, "curChar":C
    const/4 v7, -0x1

    if-ne v4, v6, :cond_5

    .line 94
    move v6, v3

    .line 95
    .local v6, "nameEnd":I
    move v8, v7

    .line 96
    .local v7, "valueBegin":I
    .local v8, "valueEnd":I
    move v4, v7

    goto :goto_4

    .line 98
    .end local v6    # "nameEnd":I
    .end local v7    # "valueBegin":I
    .end local v8    # "valueEnd":I
    :cond_5
    const/16 v8, 0x3d

    if-ne v4, v8, :cond_8

    .line 100
    move v7, v3

    .line 101
    .local v7, "nameEnd":I
    add-int/lit8 v3, v3, 0x1

    .line 102
    if-ne v3, v0, :cond_6

    .line 104
    const/4 v6, 0x0

    move v8, v6

    .line 105
    .local v6, "valueBegin":I
    .restart local v8    # "valueEnd":I
    move v4, v6

    move v6, v7

    goto :goto_4

    .line 108
    .end local v6    # "valueBegin":I
    .end local v8    # "valueEnd":I
    :cond_6
    move v8, v3

    .line 110
    .local v8, "valueBegin":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 111
    .local v6, "semiPos":I
    if-lez v6, :cond_7

    move v9, v6

    goto :goto_3

    :cond_7
    move v9, v0

    :goto_3
    move v3, v9

    .line 112
    .local v9, "valueEnd":I
    move v6, v7

    move v4, v8

    move v8, v9

    goto :goto_4

    .line 114
    .end local v6    # "semiPos":I
    .end local v7    # "nameEnd":I
    .end local v8    # "valueBegin":I
    .end local v9    # "valueEnd":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 117
    if-ne v3, v0, :cond_c

    .line 119
    move v6, v0

    .line 120
    .local v6, "nameEnd":I
    move v8, v7

    .line 121
    .local v7, "valueBegin":I
    .local v8, "valueEnd":I
    move v4, v7

    .line 125
    .end local v7    # "valueBegin":I
    .local v4, "valueBegin":I
    :goto_4
    if-lez v8, :cond_9

    add-int/lit8 v7, v8, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_9

    .line 127
    add-int/lit8 v8, v8, -0x1

    move v5, v8

    goto :goto_5

    .line 130
    :cond_9
    move v5, v8

    .end local v8    # "valueEnd":I
    .local v5, "valueEnd":I
    :goto_5
    if-nez v2, :cond_b

    .line 132
    move-object v7, p0

    move-object v8, p1

    move v9, v13

    move v10, v6

    move v11, v4

    move v12, v5

    invoke-virtual/range {v7 .. v12}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;->initCookie(Ljava/lang/String;IIII)Lio/netty/handler/codec/http/cookie/DefaultCookie;

    move-result-object v7

    .line 134
    .local v7, "cookie":Lio/netty/handler/codec/http/cookie/DefaultCookie;
    if-nez v7, :cond_a

    .line 135
    return-object v1

    .line 138
    :cond_a
    new-instance v8, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;

    invoke-direct {v8, v7, p1}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;-><init>(Lio/netty/handler/codec/http/cookie/DefaultCookie;Ljava/lang/String;)V

    move-object v2, v8

    .line 139
    .end local v7    # "cookie":Lio/netty/handler/codec/http/cookie/DefaultCookie;
    goto :goto_6

    .line 141
    :cond_b
    invoke-virtual {v2, v13, v6, v4, v5}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->appendAttribute(IIII)V

    .line 143
    .end local v4    # "valueBegin":I
    .end local v5    # "valueEnd":I
    .end local v6    # "nameEnd":I
    .end local v13    # "nameBegin":I
    :goto_6
    goto/16 :goto_0

    .line 123
    .restart local v13    # "nameBegin":I
    :cond_c
    goto :goto_2

    .line 79
    .end local v13    # "nameBegin":I
    .local v4, "c":C
    :cond_d
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 80
    goto/16 :goto_0
.end method
