.class public final Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;
.super Lio/netty/handler/codec/http/cookie/CookieEncoder;
.source "ServerCookieEncoder.java"


# static fields
.field public static final LAX:Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;

.field public static final STRICT:Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;-><init>(Z)V

    sput-object v0, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;->STRICT:Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;

    .line 67
    new-instance v0, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;-><init>(Z)V

    sput-object v0, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;->LAX:Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "strict"    # Z

    .line 70
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/cookie/CookieEncoder;-><init>(Z)V

    .line 71
    return-void
.end method

.method private static dedup(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    .local p0, "encoded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "nameToLastIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    .line 145
    .local v0, "isLastInstance":[Z
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 146
    .local v2, "idx":I
    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 147
    .end local v2    # "idx":I
    goto :goto_0

    .line 148
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    .local v1, "dedupd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 150
    aget-boolean v4, v0, v2

    if-eqz v4, :cond_1

    .line 151
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 154
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public encode(Lio/netty/handler/codec/http/cookie/Cookie;)Ljava/lang/String;
    .locals 8
    .param p1, "cookie"    # Lio/netty/handler/codec/http/cookie/Cookie;

    .line 91
    const-string v0, "cookie"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/cookie/Cookie;

    invoke-interface {v0}, Lio/netty/handler/codec/http/cookie/Cookie;->name()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->value()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 94
    .local v1, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;->validateCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 98
    .local v2, "buf":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->wrap()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    invoke-static {v2, v0, v1}, Lio/netty/handler/codec/http/cookie/CookieUtil;->addQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_1
    invoke-static {v2, v0, v1}, Lio/netty/handler/codec/http/cookie/CookieUtil;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_1
    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->maxAge()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 105
    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->maxAge()J

    move-result-wide v3

    const-string v5, "Max-Age"

    invoke-static {v2, v5, v3, v4}, Lio/netty/handler/codec/http/cookie/CookieUtil;->add(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 106
    new-instance v3, Ljava/util/Date;

    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->maxAge()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 107
    .local v3, "expires":Ljava/util/Date;
    const-string v4, "Expires"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    invoke-static {v3, v2}, Lio/netty/handler/codec/DateFormatter;->append(Ljava/util/Date;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 110
    const/16 v4, 0x3b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .end local v3    # "expires":Ljava/util/Date;
    :cond_2
    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->path()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 115
    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->path()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Path"

    invoke-static {v2, v4, v3}, Lio/netty/handler/codec/http/cookie/CookieUtil;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_3
    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->domain()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 119
    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->domain()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Domain"

    invoke-static {v2, v4, v3}, Lio/netty/handler/codec/http/cookie/CookieUtil;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_4
    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 122
    const-string v3, "Secure"

    invoke-static {v2, v3}, Lio/netty/handler/codec/http/cookie/CookieUtil;->add(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 124
    :cond_5
    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->isHttpOnly()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 125
    const-string v3, "HTTPOnly"

    invoke-static {v2, v3}, Lio/netty/handler/codec/http/cookie/CookieUtil;->add(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 127
    :cond_6
    instance-of v3, p1, Lio/netty/handler/codec/http/cookie/DefaultCookie;

    if-eqz v3, :cond_7

    .line 128
    move-object v3, p1

    check-cast v3, Lio/netty/handler/codec/http/cookie/DefaultCookie;

    .line 129
    .local v3, "c":Lio/netty/handler/codec/http/cookie/DefaultCookie;
    invoke-virtual {v3}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->sameSite()Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 130
    invoke-virtual {v3}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->sameSite()Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SameSite"

    invoke-static {v2, v5, v4}, Lio/netty/handler/codec/http/cookie/CookieUtil;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v3    # "c":Lio/netty/handler/codec/http/cookie/DefaultCookie;
    :cond_7
    invoke-static {v2}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stripTrailingSeparator(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 81
    new-instance v0, Lio/netty/handler/codec/http/cookie/DefaultCookie;

    invoke-direct {v0, p1, p2}, Lio/netty/handler/codec/http/cookie/DefaultCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;->encode(Lio/netty/handler/codec/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/netty/handler/codec/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    .local p1, "cookies":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lio/netty/handler/codec/http/cookie/Cookie;>;"
    const-string v0, "cookies"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 213
    .local v0, "cookiesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/netty/handler/codec/http/cookie/Cookie;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 217
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v1, "encoded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http/cookie/Cookie;

    .line 219
    .local v2, "firstCookie":Lio/netty/handler/codec/http/cookie/Cookie;
    iget-boolean v3, p0, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;->strict:Z

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 220
    .local v3, "nameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    const/4 v4, 0x0

    .line 221
    .local v4, "i":I
    invoke-virtual {p0, v2}, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;->encode(Lio/netty/handler/codec/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Lio/netty/handler/codec/http/cookie/Cookie;->name()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "i":I
    .local v8, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v8

    .end local v8    # "i":I
    .restart local v4    # "i":I
    :cond_3
    move v8, v4

    move v4, v5

    .line 223
    .local v4, "hasDupdName":Z
    .restart local v8    # "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/netty/handler/codec/http/cookie/Cookie;

    .line 225
    .local v7, "c":Lio/netty/handler/codec/http/cookie/Cookie;
    invoke-virtual {p0, v7}, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;->encode(Lio/netty/handler/codec/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    if-eqz v3, :cond_5

    .line 227
    invoke-interface {v7}, Lio/netty/handler/codec/http/cookie/Cookie;->name()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    .end local v8    # "i":I
    .local v10, "i":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    move v8, v6

    goto :goto_2

    :cond_4
    move v8, v5

    :goto_2
    or-int/2addr v4, v8

    move v8, v10

    .line 229
    .end local v7    # "c":Lio/netty/handler/codec/http/cookie/Cookie;
    .end local v10    # "i":I
    .restart local v8    # "i":I
    :cond_5
    goto :goto_1

    .line 230
    :cond_6
    if-eqz v4, :cond_7

    invoke-static {v1, v3}, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;->dedup(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    goto :goto_3

    :cond_7
    move-object v5, v1

    :goto_3
    return-object v5
.end method

.method public encode(Ljava/util/Collection;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/netty/handler/codec/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    .local p1, "cookies":Ljava/util/Collection;, "Ljava/util/Collection<+Lio/netty/handler/codec/http/cookie/Cookie;>;"
    const-string v0, "cookies"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    .local v0, "encoded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;->strict:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 194
    .local v1, "nameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    const/4 v3, 0x0

    .line 195
    .local v3, "i":I
    const/4 v4, 0x0

    .line 196
    .local v4, "hasDupdName":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/netty/handler/codec/http/cookie/Cookie;

    .line 197
    .local v6, "c":Lio/netty/handler/codec/http/cookie/Cookie;
    invoke-virtual {p0, v6}, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;->encode(Lio/netty/handler/codec/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    if-eqz v1, :cond_3

    .line 199
    invoke-interface {v6}, Lio/netty/handler/codec/http/cookie/Cookie;->name()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "i":I
    .local v8, "i":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    or-int/2addr v3, v4

    move v4, v3

    move v3, v8

    .line 201
    .end local v6    # "c":Lio/netty/handler/codec/http/cookie/Cookie;
    .end local v8    # "i":I
    .restart local v3    # "i":I
    :cond_3
    goto :goto_1

    .line 202
    :cond_4
    if-eqz v4, :cond_5

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;->dedup(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    return-object v2
.end method

.method public varargs encode([Lio/netty/handler/codec/http/cookie/Cookie;)Ljava/util/List;
    .locals 8
    .param p1, "cookies"    # [Lio/netty/handler/codec/http/cookie/Cookie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/handler/codec/http/cookie/Cookie;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    const-string v0, "cookies"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http/cookie/Cookie;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    .local v0, "encoded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;->strict:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    array-length v1, p1

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 170
    .local v1, "nameToIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    const/4 v3, 0x0

    .line 171
    .local v3, "hasDupdName":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_4

    .line 172
    aget-object v5, p1, v4

    .line 173
    .local v5, "c":Lio/netty/handler/codec/http/cookie/Cookie;
    invoke-virtual {p0, v5}, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;->encode(Lio/netty/handler/codec/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    if-eqz v1, :cond_3

    .line 175
    invoke-interface {v5}, Lio/netty/handler/codec/http/cookie/Cookie;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    or-int/2addr v3, v6

    .line 171
    .end local v5    # "c":Lio/netty/handler/codec/http/cookie/Cookie;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 178
    .end local v4    # "i":I
    :cond_4
    if-eqz v3, :cond_5

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/cookie/ServerCookieEncoder;->dedup(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    return-object v2
.end method
