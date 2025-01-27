.class public Lio/netty/handler/codec/http/cookie/DefaultCookie;
.super Ljava/lang/Object;
.source "DefaultCookie.java"

# interfaces
.implements Lio/netty/handler/codec/http/cookie/Cookie;


# instance fields
.field private domain:Ljava/lang/String;

.field private httpOnly:Z

.field private maxAge:J

.field private final name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private sameSite:Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;

.field private secure:Z

.field private value:Ljava/lang/String;

.field private wrap:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->maxAge:J

    .line 43
    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iput-object p1, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->name:Ljava/lang/String;

    .line 48
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->setValue(Ljava/lang/String;)V

    .line 49
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public compareTo(Lio/netty/handler/codec/http/cookie/Cookie;)I
    .locals 5
    .param p1, "c"    # Lio/netty/handler/codec/http/cookie/Cookie;

    .line 189
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 190
    .local v0, "v":I
    if-eqz v0, :cond_0

    .line 191
    return v0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->path()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 195
    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->path()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 196
    return v2

    .line 198
    :cond_1
    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->path()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 199
    return v3

    .line 201
    :cond_2
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->path()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 202
    if-eqz v0, :cond_3

    .line 203
    return v0

    .line 207
    :cond_3
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->domain()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 208
    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->domain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 209
    return v2

    .line 218
    :cond_4
    const/4 v1, 0x0

    return v1

    .line 211
    :cond_5
    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->domain()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 212
    return v3

    .line 214
    :cond_6
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->domain()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/handler/codec/http/cookie/Cookie;->domain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 215
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lio/netty/handler/codec/http/cookie/Cookie;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->compareTo(Lio/netty/handler/codec/http/cookie/Cookie;)I

    move-result p1

    return p1
.end method

.method public domain()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 153
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 154
    return v0

    .line 157
    :cond_0
    instance-of v1, p1, Lio/netty/handler/codec/http/cookie/Cookie;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 158
    return v2

    .line 161
    :cond_1
    move-object v1, p1

    check-cast v1, Lio/netty/handler/codec/http/cookie/Cookie;

    .line 162
    .local v1, "that":Lio/netty/handler/codec/http/cookie/Cookie;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lio/netty/handler/codec/http/cookie/Cookie;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 163
    return v2

    .line 166
    :cond_2
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->path()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 167
    invoke-interface {v1}, Lio/netty/handler/codec/http/cookie/Cookie;->path()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 168
    return v2

    .line 170
    :cond_3
    invoke-interface {v1}, Lio/netty/handler/codec/http/cookie/Cookie;->path()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 171
    return v2

    .line 172
    :cond_4
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->path()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lio/netty/handler/codec/http/cookie/Cookie;->path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 173
    return v2

    .line 176
    :cond_5
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->domain()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    .line 177
    invoke-interface {v1}, Lio/netty/handler/codec/http/cookie/Cookie;->domain()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 178
    return v2

    .line 184
    :cond_6
    return v0

    .line 181
    :cond_7
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->domain()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lio/netty/handler/codec/http/cookie/Cookie;->domain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 148
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isHttpOnly()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->httpOnly:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->secure:Z

    return v0
.end method

.method public maxAge()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->maxAge:J

    return-wide v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public sameSite()Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;
    .locals 1

    .line 133
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->sameSite:Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .line 83
    const-string v0, "domain"

    invoke-static {v0, p1}, Lio/netty/handler/codec/http/cookie/CookieUtil;->validateAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->domain:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setHttpOnly(Z)V
    .locals 0
    .param p1, "httpOnly"    # Z

    .line 123
    iput-boolean p1, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->httpOnly:Z

    .line 124
    return-void
.end method

.method public setMaxAge(J)V
    .locals 0
    .param p1, "maxAge"    # J

    .line 103
    iput-wide p1, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->maxAge:J

    .line 104
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 93
    const-string v0, "path"

    invoke-static {v0, p1}, Lio/netty/handler/codec/http/cookie/CookieUtil;->validateAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->path:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setSameSite(Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;)V
    .locals 0
    .param p1, "sameSite"    # Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;

    .line 143
    iput-object p1, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->sameSite:Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;

    .line 144
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "secure"    # Z

    .line 113
    iput-boolean p1, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->secure:Z

    .line 114
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 63
    const-string v0, "value"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->value:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setWrap(Z)V
    .locals 0
    .param p1, "wrap"    # Z

    .line 73
    iput-boolean p1, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->wrap:Z

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 236
    invoke-static {}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 240
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->domain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 241
    const-string v1, ", domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 242
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->domain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->path()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 245
    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 246
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->maxAge()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 249
    const-string v1, ", maxAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 250
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->maxAge()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x73

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    :cond_2
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    const-string v1, ", secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_3
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->isHttpOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 257
    const-string v1, ", HTTPOnly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_4
    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->sameSite()Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 260
    const-string v1, ", SameSite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->sameSite()Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected validateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    invoke-static {p1, p2}, Lio/netty/handler/codec/http/cookie/CookieUtil;->validateAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public wrap()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lio/netty/handler/codec/http/cookie/DefaultCookie;->wrap:Z

    return v0
.end method
