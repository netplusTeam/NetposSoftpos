.class public final Lio/netty/handler/codec/http/cookie/ServerCookieDecoder;
.super Lio/netty/handler/codec/http/cookie/CookieDecoder;
.source "ServerCookieDecoder.java"


# static fields
.field public static final LAX:Lio/netty/handler/codec/http/cookie/ServerCookieDecoder;

.field private static final RFC2965_DOMAIN:Ljava/lang/String; = "$Domain"

.field private static final RFC2965_PATH:Ljava/lang/String; = "$Path"

.field private static final RFC2965_PORT:Ljava/lang/String; = "$Port"

.field private static final RFC2965_VERSION:Ljava/lang/String; = "$Version"

.field public static final STRICT:Lio/netty/handler/codec/http/cookie/ServerCookieDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lio/netty/handler/codec/http/cookie/ServerCookieDecoder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/cookie/ServerCookieDecoder;-><init>(Z)V

    sput-object v0, Lio/netty/handler/codec/http/cookie/ServerCookieDecoder;->STRICT:Lio/netty/handler/codec/http/cookie/ServerCookieDecoder;

    .line 56
    new-instance v0, Lio/netty/handler/codec/http/cookie/ServerCookieDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/cookie/ServerCookieDecoder;-><init>(Z)V

    sput-object v0, Lio/netty/handler/codec/http/cookie/ServerCookieDecoder;->LAX:Lio/netty/handler/codec/http/cookie/ServerCookieDecoder;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "strict"    # Z

    .line 59
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/cookie/CookieDecoder;-><init>(Z)V

    .line 60
    return-void
.end method

.method private decode(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 15
    .param p2, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-",
            "Lio/netty/handler/codec/http/cookie/Cookie;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 91
    .local p1, "cookies":Ljava/util/Collection;, "Ljava/util/Collection<-Lio/netty/handler/codec/http/cookie/Cookie;>;"
    move-object/from16 v6, p2

    const-string v0, "header"

    invoke-static {v6, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    .line 93
    .local v7, "headerLen":I
    if-nez v7, :cond_0

    .line 94
    return-void

    .line 97
    :cond_0
    const/4 v8, 0x0

    .line 99
    .local v8, "i":I
    const/4 v9, 0x0

    .line 100
    .local v9, "rfc2965Style":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v0, "$Version"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const-string v3, "$Version"

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    const/16 v10, 0x3b

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    .line 103
    const/4 v9, 0x1

    .line 110
    :cond_1
    :goto_0
    if-ne v8, v7, :cond_2

    .line 111
    nop

    .line 176
    return-void

    .line 113
    :cond_2
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 114
    .local v0, "c":C
    const/16 v1, 0x9

    if-eq v0, v1, :cond_d

    const/16 v1, 0xa

    if-eq v0, v1, :cond_d

    const/16 v1, 0xb

    if-eq v0, v1, :cond_d

    const/16 v1, 0xc

    if-eq v0, v1, :cond_d

    const/16 v1, 0xd

    if-eq v0, v1, :cond_d

    const/16 v1, 0x20

    if-eq v0, v1, :cond_d

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_d

    if-ne v0, v10, :cond_3

    move-object/from16 v1, p1

    goto/16 :goto_6

    .line 122
    .end local v0    # "c":C
    :cond_3
    move v11, v8

    .line 129
    .local v11, "nameBegin":I
    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 130
    .local v0, "curChar":C
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v10, :cond_4

    .line 132
    move v3, v8

    .line 133
    .local v3, "nameEnd":I
    move v4, v1

    .line 134
    .local v1, "valueBegin":I
    .local v4, "valueEnd":I
    move v12, v3

    move v13, v4

    move v14, v8

    move v8, v1

    goto :goto_3

    .line 136
    .end local v1    # "valueBegin":I
    .end local v3    # "nameEnd":I
    .end local v4    # "valueEnd":I
    :cond_4
    const/16 v3, 0x3d

    if-ne v0, v3, :cond_7

    .line 138
    move v3, v8

    .line 139
    .restart local v3    # "nameEnd":I
    add-int/lit8 v8, v8, 0x1

    .line 140
    if-ne v8, v7, :cond_5

    .line 142
    move v4, v2

    .restart local v4    # "valueEnd":I
    move v1, v2

    .line 143
    .restart local v1    # "valueBegin":I
    move v12, v3

    move v13, v4

    move v14, v8

    move v8, v1

    goto :goto_3

    .line 146
    .end local v1    # "valueBegin":I
    .end local v4    # "valueEnd":I
    :cond_5
    move v1, v8

    .line 148
    .restart local v1    # "valueBegin":I
    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 149
    .local v4, "semiPos":I
    if-lez v4, :cond_6

    move v5, v4

    goto :goto_2

    :cond_6
    move v5, v7

    :goto_2
    move v8, v5

    .line 150
    .local v5, "valueEnd":I
    move v12, v3

    move v13, v5

    move v14, v8

    move v8, v1

    goto :goto_3

    .line 152
    .end local v1    # "valueBegin":I
    .end local v3    # "nameEnd":I
    .end local v4    # "semiPos":I
    .end local v5    # "valueEnd":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 155
    if-ne v8, v7, :cond_c

    .line 157
    move v3, v7

    .line 158
    .restart local v3    # "nameEnd":I
    move v4, v1

    .line 159
    .restart local v1    # "valueBegin":I
    .local v4, "valueEnd":I
    move v12, v3

    move v13, v4

    move v14, v8

    move v8, v1

    .line 163
    .end local v0    # "curChar":C
    .end local v1    # "valueBegin":I
    .end local v3    # "nameEnd":I
    .end local v4    # "valueEnd":I
    .local v8, "valueBegin":I
    .local v12, "nameEnd":I
    .local v13, "valueEnd":I
    .local v14, "i":I
    :goto_3
    if-eqz v9, :cond_a

    const-string v0, "$Path"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, v11, v0, v2, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_9

    .line 164
    const-string v0, "$Domain"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, v11, v0, v2, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 165
    const-string v0, "$Port"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, v11, v0, v2, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 168
    move-object/from16 v1, p1

    goto :goto_5

    .line 164
    :cond_8
    move-object/from16 v1, p1

    goto :goto_5

    .line 163
    :cond_9
    move-object/from16 v1, p1

    goto :goto_5

    .line 171
    :cond_a
    move-object v0, p0

    move-object/from16 v1, p2

    move v2, v11

    move v3, v12

    move v4, v8

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lio/netty/handler/codec/http/cookie/ServerCookieDecoder;->initCookie(Ljava/lang/String;IIII)Lio/netty/handler/codec/http/cookie/DefaultCookie;

    move-result-object v0

    .line 172
    .local v0, "cookie":Lio/netty/handler/codec/http/cookie/DefaultCookie;
    if-eqz v0, :cond_b

    .line 173
    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 172
    :cond_b
    move-object/from16 v1, p1

    .line 175
    .end local v0    # "cookie":Lio/netty/handler/codec/http/cookie/DefaultCookie;
    .end local v8    # "valueBegin":I
    .end local v11    # "nameBegin":I
    .end local v12    # "nameEnd":I
    .end local v13    # "valueEnd":I
    :goto_4
    nop

    .line 110
    :goto_5
    move v8, v14

    goto/16 :goto_0

    .line 155
    .end local v14    # "i":I
    .local v0, "curChar":C
    .local v8, "i":I
    .restart local v11    # "nameBegin":I
    :cond_c
    move-object/from16 v1, p1

    .line 161
    .end local v0    # "curChar":C
    goto/16 :goto_1

    .line 114
    .end local v11    # "nameBegin":I
    .local v0, "c":C
    :cond_d
    move-object/from16 v1, p1

    .line 116
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 117
    goto/16 :goto_0
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lio/netty/handler/codec/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 81
    .local v0, "cookies":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/handler/codec/http/cookie/Cookie;>;"
    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/http/cookie/ServerCookieDecoder;->decode(Ljava/util/Collection;Ljava/lang/String;)V

    .line 82
    return-object v0
.end method

.method public decodeAll(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/cookie/Cookie;>;"
    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/http/cookie/ServerCookieDecoder;->decode(Ljava/util/Collection;Ljava/lang/String;)V

    .line 71
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
