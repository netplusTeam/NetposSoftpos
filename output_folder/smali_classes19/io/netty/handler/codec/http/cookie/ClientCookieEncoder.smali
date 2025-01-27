.class public final Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;
.super Lio/netty/handler/codec/http/cookie/CookieEncoder;
.source "ClientCookieEncoder.java"


# static fields
.field static final COOKIE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lio/netty/handler/codec/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAX:Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;

.field public static final STRICT:Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;-><init>(Z)V

    sput-object v0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->STRICT:Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;

    .line 59
    new-instance v0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;-><init>(Z)V

    sput-object v0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->LAX:Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;

    .line 95
    new-instance v0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->COOKIE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "strict"    # Z

    .line 62
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/cookie/CookieEncoder;-><init>(Z)V

    .line 63
    return-void
.end method

.method private encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V
    .locals 3
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "c"    # Lio/netty/handler/codec/http/cookie/Cookie;

    .line 214
    invoke-interface {p2}, Lio/netty/handler/codec/http/cookie/Cookie;->name()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p2}, Lio/netty/handler/codec/http/cookie/Cookie;->value()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lio/netty/handler/codec/http/cookie/Cookie;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 217
    .local v1, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->validateCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-interface {p2}, Lio/netty/handler/codec/http/cookie/Cookie;->wrap()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    invoke-static {p1, v0, v1}, Lio/netty/handler/codec/http/cookie/CookieUtil;->addQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :cond_1
    invoke-static {p1, v0, v1}, Lio/netty/handler/codec/http/cookie/CookieUtil;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_1
    return-void
.end method


# virtual methods
.method public encode(Lio/netty/handler/codec/http/cookie/Cookie;)Ljava/lang/String;
    .locals 2
    .param p1, "cookie"    # Lio/netty/handler/codec/http/cookie/Cookie;

    .line 85
    invoke-static {}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "cookie"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/cookie/Cookie;

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    .line 87
    invoke-static {v0}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stripTrailingSeparator(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encode(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/netty/handler/codec/http/cookie/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 183
    .local p1, "cookies":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lio/netty/handler/codec/http/cookie/Cookie;>;"
    const-string v0, "cookies"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 184
    .local v0, "cookiesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/netty/handler/codec/http/cookie/Cookie;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    const/4 v1, 0x0

    return-object v1

    .line 188
    :cond_0
    invoke-static {}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 189
    .local v1, "buf":Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->strict:Z

    if-eqz v2, :cond_4

    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http/cookie/Cookie;

    .line 191
    .local v2, "firstCookie":Lio/netty/handler/codec/http/cookie/Cookie;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 192
    invoke-direct {p0, v1, v2}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    goto :goto_2

    .line 194
    :cond_1
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/util/internal/InternalThreadLocalMap;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 195
    .local v3, "cookiesList":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/cookie/Cookie;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_2
    const/4 v4, 0x0

    new-array v5, v4, [Lio/netty/handler/codec/http/cookie/Cookie;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lio/netty/handler/codec/http/cookie/Cookie;

    .line 200
    .local v5, "cookiesSorted":[Lio/netty/handler/codec/http/cookie/Cookie;
    sget-object v6, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->COOKIE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 201
    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v7, v5, v4

    .line 202
    .local v7, "c":Lio/netty/handler/codec/http/cookie/Cookie;
    invoke-direct {p0, v1, v7}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    .line 201
    .end local v7    # "c":Lio/netty/handler/codec/http/cookie/Cookie;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 205
    .end local v2    # "firstCookie":Lio/netty/handler/codec/http/cookie/Cookie;
    .end local v3    # "cookiesList":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/cookie/Cookie;>;"
    .end local v5    # "cookiesSorted":[Lio/netty/handler/codec/http/cookie/Cookie;
    :cond_3
    :goto_2
    goto :goto_4

    .line 206
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http/cookie/Cookie;

    invoke-direct {p0, v1, v2}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    goto :goto_3

    .line 210
    :cond_5
    :goto_4
    invoke-static {v1}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stripTrailingSeparatorOrNull(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 75
    new-instance v0, Lio/netty/handler/codec/http/cookie/DefaultCookie;

    invoke-direct {v0, p1, p2}, Lio/netty/handler/codec/http/cookie/DefaultCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Lio/netty/handler/codec/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/netty/handler/codec/http/cookie/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 153
    .local p1, "cookies":Ljava/util/Collection;, "Ljava/util/Collection<+Lio/netty/handler/codec/http/cookie/Cookie;>;"
    const-string v0, "cookies"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    invoke-static {}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->strict:Z

    if-eqz v1, :cond_3

    .line 159
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 160
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/cookie/Cookie;

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    goto :goto_2

    .line 162
    :cond_1
    const/4 v1, 0x0

    new-array v2, v1, [Lio/netty/handler/codec/http/cookie/Cookie;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/netty/handler/codec/http/cookie/Cookie;

    .line 163
    .local v2, "cookiesSorted":[Lio/netty/handler/codec/http/cookie/Cookie;
    sget-object v3, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->COOKIE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 164
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 165
    .local v4, "c":Lio/netty/handler/codec/http/cookie/Cookie;
    invoke-direct {p0, v0, v4}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    .line 164
    .end local v4    # "c":Lio/netty/handler/codec/http/cookie/Cookie;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "cookiesSorted":[Lio/netty/handler/codec/http/cookie/Cookie;
    :cond_2
    goto :goto_2

    .line 169
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http/cookie/Cookie;

    .line 170
    .local v2, "c":Lio/netty/handler/codec/http/cookie/Cookie;
    invoke-direct {p0, v0, v2}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    .line 171
    .end local v2    # "c":Lio/netty/handler/codec/http/cookie/Cookie;
    goto :goto_1

    .line 173
    :cond_4
    :goto_2
    invoke-static {v0}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stripTrailingSeparatorOrNull(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public varargs encode([Lio/netty/handler/codec/http/cookie/Cookie;)Ljava/lang/String;
    .locals 5
    .param p1, "cookies"    # [Lio/netty/handler/codec/http/cookie/Cookie;

    .line 122
    const-string v0, "cookies"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http/cookie/Cookie;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_0
    invoke-static {}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->strict:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 128
    array-length v1, p1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 129
    aget-object v1, p1, v2

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    goto :goto_2

    .line 131
    :cond_1
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/netty/handler/codec/http/cookie/Cookie;

    .line 132
    .local v1, "cookiesSorted":[Lio/netty/handler/codec/http/cookie/Cookie;
    sget-object v3, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->COOKIE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 133
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 134
    .local v4, "c":Lio/netty/handler/codec/http/cookie/Cookie;
    invoke-direct {p0, v0, v4}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    .line 133
    .end local v4    # "c":Lio/netty/handler/codec/http/cookie/Cookie;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "cookiesSorted":[Lio/netty/handler/codec/http/cookie/Cookie;
    :cond_2
    goto :goto_2

    .line 138
    :cond_3
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 139
    .local v3, "c":Lio/netty/handler/codec/http/cookie/Cookie;
    invoke-direct {p0, v0, v3}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    .line 138
    .end local v3    # "c":Lio/netty/handler/codec/http/cookie/Cookie;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 142
    :cond_4
    :goto_2
    invoke-static {v0}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stripTrailingSeparatorOrNull(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
