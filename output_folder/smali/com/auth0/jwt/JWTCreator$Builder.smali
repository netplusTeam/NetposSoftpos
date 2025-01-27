.class public Lcom/auth0/jwt/JWTCreator$Builder;
.super Ljava/lang/Object;
.source "JWTCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/auth0/jwt/JWTCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private headerClaims:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final payloadClaims:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/auth0/jwt/JWTCreator$Builder;->payloadClaims:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/auth0/jwt/JWTCreator$Builder;->headerClaims:Ljava/util/Map;

    .line 67
    return-void
.end method

.method private addClaim(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 429
    if-nez p2, :cond_0

    .line 430
    iget-object v0, p0, Lcom/auth0/jwt/JWTCreator$Builder;->payloadClaims:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/JWTCreator$Builder;->payloadClaims:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    return-void
.end method

.method private assertNonNull(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 423
    if-eqz p1, :cond_0

    .line 426
    return-void

    .line 424
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Custom Claim\'s name can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isBasicType(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 391
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 393
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 394
    const-class v1, [Ljava/lang/Integer;

    if-eq v0, v1, :cond_0

    const-class v1, [Ljava/lang/Long;

    if-eq v0, v1, :cond_0

    const-class v1, [Ljava/lang/String;

    if-ne v0, v1, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    .line 396
    :cond_2
    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/lang/Long;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/lang/Double;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/util/Date;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    return v2
.end method

.method private static isSupportedType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 381
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 382
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/auth0/jwt/JWTCreator$Builder;->validateClaim(Ljava/util/List;)Z

    move-result v0

    return v0

    .line 383
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 384
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/auth0/jwt/JWTCreator$Builder;->validateClaim(Ljava/util/Map;)Z

    move-result v0

    return v0

    .line 386
    :cond_1
    invoke-static {p0}, Lcom/auth0/jwt/JWTCreator$Builder;->isBasicType(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static validateClaim(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 372
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 373
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/auth0/jwt/JWTCreator$Builder;->isSupportedType(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 374
    const/4 v0, 0x0

    return v0

    .line 376
    .end local v1    # "object":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 377
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static validateClaim(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 357
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 358
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 359
    .local v2, "value":Ljava/lang/Object;
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/auth0/jwt/JWTCreator$Builder;->isSupportedType(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 363
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_1

    .line 366
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 364
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_2
    :goto_1
    return v3

    .line 360
    :cond_3
    :goto_2
    return v3

    .line 367
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "value":Ljava/lang/Object;
    :cond_4
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public sign(Lcom/auth0/jwt/algorithms/Algorithm;)Ljava/lang/String;
    .locals 5
    .param p1, "algorithm"    # Lcom/auth0/jwt/algorithms/Algorithm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/auth0/jwt/exceptions/JWTCreationException;
        }
    .end annotation

    .line 408
    if-eqz p1, :cond_2

    .line 411
    iget-object v0, p0, Lcom/auth0/jwt/JWTCreator$Builder;->headerClaims:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/auth0/jwt/algorithms/Algorithm;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Lcom/auth0/jwt/JWTCreator$Builder;->headerClaims:Ljava/util/Map;

    const-string/jumbo v1, "typ"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/auth0/jwt/JWTCreator$Builder;->headerClaims:Ljava/util/Map;

    const-string v2, "JWT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_0
    invoke-virtual {p1}, Lcom/auth0/jwt/algorithms/Algorithm;->getSigningKeyId()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "signingKeyId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {p0, v0}, Lcom/auth0/jwt/JWTCreator$Builder;->withKeyId(Ljava/lang/String;)Lcom/auth0/jwt/JWTCreator$Builder;

    .line 419
    :cond_1
    new-instance v1, Lcom/auth0/jwt/JWTCreator;

    iget-object v2, p0, Lcom/auth0/jwt/JWTCreator$Builder;->headerClaims:Ljava/util/Map;

    iget-object v3, p0, Lcom/auth0/jwt/JWTCreator$Builder;->payloadClaims:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/auth0/jwt/JWTCreator;-><init>(Lcom/auth0/jwt/algorithms/Algorithm;Ljava/util/Map;Ljava/util/Map;Lcom/auth0/jwt/JWTCreator$1;)V

    invoke-static {v1}, Lcom/auth0/jwt/JWTCreator;->access$100(Lcom/auth0/jwt/JWTCreator;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 409
    .end local v0    # "signingKeyId":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Algorithm cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withArrayClaim(Ljava/lang/String;[Ljava/lang/Integer;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "items"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 289
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->assertNonNull(Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    return-object p0
.end method

.method public withArrayClaim(Ljava/lang/String;[Ljava/lang/Long;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "items"    # [Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 303
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->assertNonNull(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    return-object p0
.end method

.method public withArrayClaim(Ljava/lang/String;[Ljava/lang/String;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "items"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 275
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->assertNonNull(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    return-object p0
.end method

.method public varargs withAudience([Ljava/lang/String;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 1
    .param p1, "audience"    # [Ljava/lang/String;

    .line 134
    const-string v0, "aud"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    return-object p0
.end method

.method public withClaim(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 191
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->assertNonNull(Ljava/lang/String;)V

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    return-object p0
.end method

.method public withClaim(Ljava/lang/String;Ljava/lang/Double;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 233
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->assertNonNull(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    return-object p0
.end method

.method public withClaim(Ljava/lang/String;Ljava/lang/Integer;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 205
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->assertNonNull(Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    return-object p0
.end method

.method public withClaim(Ljava/lang/String;Ljava/lang/Long;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 219
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->assertNonNull(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    return-object p0
.end method

.method public withClaim(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 247
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->assertNonNull(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    return-object p0
.end method

.method public withClaim(Ljava/lang/String;Ljava/util/Date;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 261
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->assertNonNull(Ljava/lang/String;)V

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    return-object p0
.end method

.method public withClaim(Ljava/lang/String;Ljava/util/List;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)",
            "Lcom/auth0/jwt/JWTCreator$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 346
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->assertNonNull(Ljava/lang/String;)V

    .line 348
    invoke-static {p2}, Lcom/auth0/jwt/JWTCreator$Builder;->validateClaim(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    return-object p0

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected list containing Map, List, Boolean, Integer, Long, Double, String and Date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withClaim(Ljava/lang/String;Ljava/util/Map;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/auth0/jwt/JWTCreator$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 322
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->assertNonNull(Ljava/lang/String;)V

    .line 324
    invoke-static {p2}, Lcom/auth0/jwt/JWTCreator$Builder;->validateClaim(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    return-object p0

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected map containing Map, List, Boolean, Integer, Long, Double, String and Date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withExpiresAt(Ljava/util/Date;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 1
    .param p1, "expiresAt"    # Ljava/util/Date;

    .line 145
    const-string v0, "exp"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    return-object p0
.end method

.method public withHeader(Ljava/util/Map;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/auth0/jwt/JWTCreator$Builder;"
        }
    .end annotation

    .line 78
    .local p1, "headerClaims":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 79
    return-object p0

    .line 82
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 83
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/auth0/jwt/JWTCreator$Builder;->headerClaims:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/auth0/jwt/JWTCreator$Builder;->headerClaims:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    goto :goto_0

    .line 90
    :cond_2
    return-object p0
.end method

.method public withIssuedAt(Ljava/util/Date;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 1
    .param p1, "issuedAt"    # Ljava/util/Date;

    .line 167
    const-string v0, "iat"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    return-object p0
.end method

.method public withIssuer(Ljava/lang/String;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 1
    .param p1, "issuer"    # Ljava/lang/String;

    .line 112
    const-string v0, "iss"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    return-object p0
.end method

.method public withJWTId(Ljava/lang/String;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 1
    .param p1, "jwtId"    # Ljava/lang/String;

    .line 178
    const-string v0, "jti"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    return-object p0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 2
    .param p1, "keyId"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/auth0/jwt/JWTCreator$Builder;->headerClaims:Ljava/util/Map;

    const-string v1, "kid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-object p0
.end method

.method public withNotBefore(Ljava/util/Date;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 1
    .param p1, "notBefore"    # Ljava/util/Date;

    .line 156
    const-string v0, "nbf"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    return-object p0
.end method

.method public withSubject(Ljava/lang/String;)Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .line 123
    const-string/jumbo v0, "sub"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/JWTCreator$Builder;->addClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    return-object p0
.end method
