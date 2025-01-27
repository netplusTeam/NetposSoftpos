.class public final Lcom/google/crypto/tink/jwt/RawJwt$Builder;
.super Ljava/lang/Object;
.source "RawJwt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/RawJwt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final payload:Lcom/google/gson/JsonObject;

.field private typeHeader:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private withoutExpiration:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->typeHeader:Ljava/util/Optional;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->withoutExpiration:Z

    .line 143
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    .line 144
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/RawJwt$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/jwt/RawJwt$1;

    .line 135
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/RawJwt$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/crypto/tink/jwt/RawJwt$Builder;)Lcom/google/gson/JsonObject;
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/jwt/RawJwt$Builder;

    .line 135
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/jwt/RawJwt$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/jwt/RawJwt$Builder;

    .line 135
    iget-boolean v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->withoutExpiration:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/jwt/RawJwt$Builder;)Ljava/util/Optional;
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/jwt/RawJwt$Builder;

    .line 135
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->typeHeader:Ljava/util/Optional;

    return-object v0
.end method

.method private setTimestampClaim(Ljava/lang/String;Ljava/time/Instant;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/time/Instant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 282
    invoke-virtual {p2}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 283
    .local v0, "timestamp":J
    const-wide v2, 0x3afff4417fL

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    new-instance v3, Lcom/google/gson/JsonPrimitive;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 288
    return-void

    .line 284
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timestamp of claim "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public addAudience(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 247
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JsonUtil;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    const-string v1, "aud"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 253
    .local v0, "aud":Lcom/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 258
    .local v0, "audiences":Lcom/google/gson/JsonArray;
    goto :goto_0

    .line 254
    .local v0, "aud":Lcom/google/gson/JsonElement;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "addAudience can\'t be used together with setAudience"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    .end local v0    # "aud":Lcom/google/gson/JsonElement;
    :cond_1
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 261
    .local v0, "audiences":Lcom/google/gson/JsonArray;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 263
    return-object p0

    .line 248
    .end local v0    # "audiences":Lcom/google/gson/JsonArray;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addBooleanClaim(Ljava/lang/String;Z)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 353
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JwtNames;->validate(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 355
    return-object p0
.end method

.method public addJsonArrayClaim(Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "encodedJsonArray"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "encodedJsonArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/jwt/JwtInvalidException;
        }
    .end annotation

    .line 398
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JwtNames;->validate(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    invoke-static {p2}, Lcom/google/crypto/tink/jwt/JsonUtil;->parseJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 400
    return-object p0
.end method

.method public addJsonObjectClaim(Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "encodedJsonObject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "encodedJsonObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/jwt/JwtInvalidException;
        }
    .end annotation

    .line 389
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JwtNames;->validate(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    invoke-static {p2}, Lcom/google/crypto/tink/jwt/JsonUtil;->parseJson(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 391
    return-object p0
.end method

.method public addNullClaim(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 380
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JwtNames;->validate(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    sget-object v1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 382
    return-object p0
.end method

.method public addNumberClaim(Ljava/lang/String;D)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 361
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JwtNames;->validate(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 363
    return-object p0
.end method

.method public addStringClaim(Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 369
    invoke-static {p2}, Lcom/google/crypto/tink/jwt/JsonUtil;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JwtNames;->validate(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v1, p2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 374
    return-object p0

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public build()Lcom/google/crypto/tink/jwt/RawJwt;
    .locals 2

    .line 404
    new-instance v0, Lcom/google/crypto/tink/jwt/RawJwt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/jwt/RawJwt;-><init>(Lcom/google/crypto/tink/jwt/RawJwt$Builder;Lcom/google/crypto/tink/jwt/RawJwt$1;)V

    return-object v0
.end method

.method public setAudience(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    const-string v1, "aud"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    .line 198
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setAudience can\'t be used together with setAudiences or addAudience"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JsonUtil;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    new-instance v2, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v2, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 206
    return-object p0

    .line 203
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAudiences(Ljava/util/List;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/crypto/tink/jwt/RawJwt$Builder;"
        }
    .end annotation

    .line 219
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    const-string v1, "aud"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    .line 220
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setAudiences can\'t be used together with setAudience"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 226
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 227
    .local v0, "audiences":Lcom/google/gson/JsonArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 228
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/crypto/tink/jwt/JsonUtil;->isValidString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 231
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 232
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_1

    .line 229
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 234
    return-object p0

    .line 224
    .end local v0    # "audiences":Lcom/google/gson/JsonArray;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "audiences must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExpiration(Ljava/time/Instant;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 1
    .param p1, "value"    # Ljava/time/Instant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 302
    const-string v0, "exp"

    invoke-direct {p0, v0, p1}, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->setTimestampClaim(Ljava/lang/String;Ljava/time/Instant;)V

    .line 303
    return-object p0
.end method

.method public setIssuedAt(Ljava/time/Instant;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 1
    .param p1, "value"    # Ljava/time/Instant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 346
    const-string v0, "iat"

    invoke-direct {p0, v0, p1}, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->setTimestampClaim(Ljava/lang/String;Ljava/time/Instant;)V

    .line 347
    return-object p0
.end method

.method public setIssuer(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 166
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JsonUtil;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "iss"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 170
    return-object p0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setJwtId(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 273
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JsonUtil;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "jti"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 277
    return-object p0

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setNotBefore(Ljava/time/Instant;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 1
    .param p1, "value"    # Ljava/time/Instant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 331
    const-string v0, "nbf"

    invoke-direct {p0, v0, p1}, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->setTimestampClaim(Ljava/lang/String;Ljava/time/Instant;)V

    .line 332
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 180
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JsonUtil;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->payload:Lcom/google/gson/JsonObject;

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "sub"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 184
    return-object p0

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setTypeHeader(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 155
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->typeHeader:Ljava/util/Optional;

    .line 156
    return-object p0
.end method

.method public withoutExpiration()Lcom/google/crypto/tink/jwt/RawJwt$Builder;
    .locals 1

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/crypto/tink/jwt/RawJwt$Builder;->withoutExpiration:Z

    .line 316
    return-object p0
.end method
