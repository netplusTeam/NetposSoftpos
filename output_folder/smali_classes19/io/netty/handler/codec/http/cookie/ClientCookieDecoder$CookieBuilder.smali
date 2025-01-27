.class Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;
.super Ljava/lang/Object;
.source "ClientCookieDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CookieBuilder"
.end annotation


# instance fields
.field private final cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

.field private domain:Ljava/lang/String;

.field private expiresEnd:I

.field private expiresStart:I

.field private final header:Ljava/lang/String;

.field private httpOnly:Z

.field private maxAge:J

.field private path:Ljava/lang/String;

.field private sameSite:Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;

.field private secure:Z


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/cookie/DefaultCookie;Ljava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # Lio/netty/handler/codec/http/cookie/DefaultCookie;
    .param p2, "header"    # Ljava/lang/String;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->maxAge:J

    .line 161
    iput-object p1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

    .line 162
    iput-object p2, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    .line 163
    return-void
.end method

.method private computeValue(II)Ljava/lang/String;
    .locals 1
    .param p1, "valueStart"    # I
    .param p2, "valueEnd"    # I

    .line 260
    invoke-static {p1, p2}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->isValueDefined(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static isValueDefined(II)Z
    .locals 1
    .param p0, "valueStart"    # I
    .param p1, "valueEnd"    # I

    .line 256
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private mergeMaxAgeAndExpires()J
    .locals 9

    .line 167
    iget-wide v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->maxAge:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 168
    return-wide v0

    .line 169
    :cond_0
    iget v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->expiresStart:I

    iget v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->expiresEnd:I

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->isValueDefined(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    iget v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->expiresStart:I

    iget v4, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->expiresEnd:I

    invoke-static {v0, v1, v4}, Lio/netty/handler/codec/DateFormatter;->parseHttpDate(Ljava/lang/CharSequence;II)Ljava/util/Date;

    move-result-object v0

    .line 171
    .local v0, "expiresDate":Ljava/util/Date;
    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 173
    .local v1, "maxAgeMillis":J
    const-wide/16 v3, 0x3e8

    div-long v5, v1, v3

    rem-long v3, v1, v3

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    int-to-long v3, v3

    add-long/2addr v5, v3

    return-wide v5

    .line 176
    .end local v0    # "expiresDate":Ljava/util/Date;
    .end local v1    # "maxAgeMillis":J
    :cond_2
    return-wide v2
.end method

.method private parse4(III)V
    .locals 6
    .param p1, "nameStart"    # I
    .param p2, "valueStart"    # I
    .param p3, "valueEnd"    # I

    .line 217
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v3, "Path"

    const/4 v4, 0x0

    const/4 v5, 0x4

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->computeValue(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->path:Ljava/lang/String;

    .line 220
    :cond_0
    return-void
.end method

.method private parse6(III)V
    .locals 7
    .param p1, "nameStart"    # I
    .param p2, "valueStart"    # I
    .param p3, "valueEnd"    # I

    .line 223
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v3, "Domain"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->computeValue(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->domain:Ljava/lang/String;

    goto :goto_0

    .line 225
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-string v4, "Secure"

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->secure:Z

    .line 228
    :cond_1
    :goto_0
    return-void
.end method

.method private parse7(III)V
    .locals 7
    .param p1, "nameStart"    # I
    .param p2, "valueStart"    # I
    .param p3, "valueEnd"    # I

    .line 239
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v3, "Expires"

    const/4 v4, 0x0

    const/4 v5, 0x7

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iput p2, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->expiresStart:I

    .line 241
    iput p3, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->expiresEnd:I

    goto :goto_0

    .line 242
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x7

    const-string v4, "Max-Age"

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->computeValue(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->setMaxAge(Ljava/lang/String;)V

    .line 245
    :cond_1
    :goto_0
    return-void
.end method

.method private parse8(III)V
    .locals 7
    .param p1, "nameStart"    # I
    .param p2, "valueStart"    # I
    .param p3, "valueEnd"    # I

    .line 248
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v3, "HTTPOnly"

    const/4 v4, 0x0

    const/16 v5, 0x8

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->httpOnly:Z

    goto :goto_0

    .line 250
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const-string v4, "SameSite"

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->computeValue(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;->of(Ljava/lang/String;)Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->sameSite:Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;

    .line 253
    :cond_1
    :goto_0
    return-void
.end method

.method private setMaxAge(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 232
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->maxAge:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 236
    :goto_0
    return-void
.end method


# virtual methods
.method appendAttribute(IIII)V
    .locals 2
    .param p1, "keyStart"    # I
    .param p2, "keyEnd"    # I
    .param p3, "valueStart"    # I
    .param p4, "valueEnd"    # I

    .line 203
    sub-int v0, p2, p1

    .line 205
    .local v0, "length":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 206
    invoke-direct {p0, p1, p3, p4}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->parse4(III)V

    goto :goto_0

    .line 207
    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 208
    invoke-direct {p0, p1, p3, p4}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->parse6(III)V

    goto :goto_0

    .line 209
    :cond_1
    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 210
    invoke-direct {p0, p1, p3, p4}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->parse7(III)V

    goto :goto_0

    .line 211
    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 212
    invoke-direct {p0, p1, p3, p4}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->parse8(III)V

    .line 214
    :cond_3
    :goto_0
    return-void
.end method

.method cookie()Lio/netty/handler/codec/http/cookie/Cookie;
    .locals 3

    .line 180
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

    iget-object v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->setDomain(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

    iget-object v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->setPath(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

    invoke-direct {p0}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->mergeMaxAgeAndExpires()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->setMaxAge(J)V

    .line 183
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

    iget-boolean v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->secure:Z

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->setSecure(Z)V

    .line 184
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

    iget-boolean v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->httpOnly:Z

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->setHttpOnly(Z)V

    .line 185
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

    iget-object v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->sameSite:Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->setSameSite(Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;)V

    .line 186
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

    return-object v0
.end method
