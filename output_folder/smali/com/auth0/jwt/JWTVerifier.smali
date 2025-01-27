.class public final Lcom/auth0/jwt/JWTVerifier;
.super Ljava/lang/Object;
.source "JWTVerifier.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/JWTVerifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/jwt/JWTVerifier$BaseVerification;
    }
.end annotation


# instance fields
.field private final algorithm:Lcom/auth0/jwt/algorithms/Algorithm;

.field final claims:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lcom/auth0/jwt/interfaces/Clock;

.field private final parser:Lcom/auth0/jwt/impl/JWTParser;


# direct methods
.method constructor <init>(Lcom/auth0/jwt/algorithms/Algorithm;Ljava/util/Map;Lcom/auth0/jwt/interfaces/Clock;)V
    .locals 1
    .param p1, "algorithm"    # Lcom/auth0/jwt/algorithms/Algorithm;
    .param p3, "clock"    # Lcom/auth0/jwt/interfaces/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/jwt/algorithms/Algorithm;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/auth0/jwt/interfaces/Clock;",
            ")V"
        }
    .end annotation

    .line 24
    .local p2, "claims":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/auth0/jwt/JWTVerifier;->algorithm:Lcom/auth0/jwt/algorithms/Algorithm;

    .line 26
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/auth0/jwt/JWTVerifier;->claims:Ljava/util/Map;

    .line 27
    iput-object p3, p0, Lcom/auth0/jwt/JWTVerifier;->clock:Lcom/auth0/jwt/interfaces/Clock;

    .line 28
    new-instance v0, Lcom/auth0/jwt/impl/JWTParser;

    invoke-direct {v0}, Lcom/auth0/jwt/impl/JWTParser;-><init>()V

    iput-object v0, p0, Lcom/auth0/jwt/JWTVerifier;->parser:Lcom/auth0/jwt/impl/JWTParser;

    .line 29
    return-void
.end method

.method private assertDateIsFuture(Ljava/util/Date;JLjava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "leeway"    # J
    .param p4, "today"    # Ljava/util/Date;

    .line 363
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    sub-long/2addr v0, v2

    invoke-virtual {p4, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 364
    if-eqz p1, :cond_1

    invoke-virtual {p4, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    new-instance v0, Lcom/auth0/jwt/exceptions/TokenExpiredException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "The Token has expired on %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/auth0/jwt/exceptions/TokenExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_1
    :goto_0
    return-void
.end method

.method private assertDateIsPast(Ljava/util/Date;JLjava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "leeway"    # J
    .param p4, "today"    # Ljava/util/Date;

    .line 370
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    invoke-virtual {p4, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 371
    if-eqz p1, :cond_1

    invoke-virtual {p4, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    new-instance v0, Lcom/auth0/jwt/exceptions/InvalidClaimException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "The Token can\'t be used before %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/auth0/jwt/exceptions/InvalidClaimException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_1
    :goto_0
    return-void
.end method

.method private assertValidAudienceClaim(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 377
    .local p1, "audience":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    return-void

    .line 378
    :cond_0
    new-instance v0, Lcom/auth0/jwt/exceptions/InvalidClaimException;

    const-string v1, "The Claim \'aud\' value doesn\'t contain the required audience."

    invoke-direct {v0, v1}, Lcom/auth0/jwt/exceptions/InvalidClaimException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertValidClaim(Lcom/auth0/jwt/interfaces/Claim;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "claim"    # Lcom/auth0/jwt/interfaces/Claim;
    .param p2, "claimName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "isValid":Z
    instance-of v1, p3, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 308
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/Claim;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_3

    .line 309
    :cond_0
    instance-of v1, p3, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 310
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/Claim;->asInt()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_3

    .line 311
    :cond_1
    instance-of v1, p3, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 312
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/Claim;->asLong()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_3

    .line 313
    :cond_2
    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 314
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/Claim;->asBoolean()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_3

    .line 315
    :cond_3
    instance-of v1, p3, Ljava/lang/Double;

    if-eqz v1, :cond_4

    .line 316
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/Claim;->asDouble()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 317
    :cond_4
    instance-of v1, p3, Ljava/util/Date;

    if-eqz v1, :cond_5

    .line 318
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/Claim;->asDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 319
    :cond_5
    instance-of v1, p3, [Ljava/lang/Object;

    if-eqz v1, :cond_a

    .line 321
    const-class v1, [Ljava/lang/Object;

    invoke-interface {p1, v1}, Lcom/auth0/jwt/interfaces/Claim;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 324
    .local v1, "claimAsObject":[Ljava/lang/Object;
    instance-of v3, p3, [Ljava/lang/Long;

    if-eqz v3, :cond_7

    .line 326
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    .local v3, "claimArr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_9

    aget-object v6, v1, v5

    .line 328
    .local v6, "cao":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_6

    .line 329
    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 331
    :cond_6
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v6    # "cao":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 335
    .end local v3    # "claimArr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_7
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/Claim;->isNull()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_2

    :cond_8
    const-class v3, [Ljava/lang/Object;

    invoke-interface {p1, v3}, Lcom/auth0/jwt/interfaces/Claim;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 337
    .restart local v3    # "claimArr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_9
    :goto_2
    move-object v4, p3

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 338
    .local v4, "valueArr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 341
    .end local v1    # "claimAsObject":[Ljava/lang/Object;
    .end local v3    # "claimArr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "valueArr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    .line 344
    return-void

    .line 342
    :cond_b
    new-instance v1, Lcom/auth0/jwt/exceptions/InvalidClaimException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    const-string v2, "The Claim \'%s\' value doesn\'t match the required one."

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/auth0/jwt/exceptions/InvalidClaimException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private assertValidDateClaim(Ljava/util/Date;JZ)V
    .locals 5
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "leeway"    # J
    .param p4, "shouldBeFuture"    # Z

    .line 353
    iget-object v0, p0, Lcom/auth0/jwt/JWTVerifier;->clock:Lcom/auth0/jwt/interfaces/Clock;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/Clock;->getToday()Ljava/util/Date;

    move-result-object v0

    .line 354
    .local v0, "today":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 355
    if-eqz p4, :cond_0

    .line 356
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/auth0/jwt/JWTVerifier;->assertDateIsFuture(Ljava/util/Date;JLjava/util/Date;)V

    goto :goto_0

    .line 358
    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/auth0/jwt/JWTVerifier;->assertDateIsPast(Ljava/util/Date;JLjava/util/Date;)V

    .line 360
    :goto_0
    return-void
.end method

.method private assertValidIssuerClaim(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "issuer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 383
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    return-void

    .line 384
    :cond_0
    new-instance v0, Lcom/auth0/jwt/exceptions/InvalidClaimException;

    const-string v1, "The Claim \'iss\' value doesn\'t match the required issuer."

    invoke-direct {v0, v1}, Lcom/auth0/jwt/exceptions/InvalidClaimException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertValidStringClaim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "claimName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "expectedValue"    # Ljava/lang/String;

    .line 347
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    return-void

    .line 348
    :cond_0
    new-instance v0, Lcom/auth0/jwt/exceptions/InvalidClaimException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "The Claim \'%s\' value doesn\'t match the required one."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/auth0/jwt/exceptions/InvalidClaimException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static init(Lcom/auth0/jwt/algorithms/Algorithm;)Lcom/auth0/jwt/interfaces/Verification;
    .locals 1
    .param p0, "algorithm"    # Lcom/auth0/jwt/algorithms/Algorithm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;

    invoke-direct {v0, p0}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;-><init>(Lcom/auth0/jwt/algorithms/Algorithm;)V

    return-object v0
.end method

.method private verifyAlgorithm(Lcom/auth0/jwt/interfaces/DecodedJWT;Lcom/auth0/jwt/algorithms/Algorithm;)V
    .locals 2
    .param p1, "jwt"    # Lcom/auth0/jwt/interfaces/DecodedJWT;
    .param p2, "expectedAlgorithm"    # Lcom/auth0/jwt/algorithms/Algorithm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/AlgorithmMismatchException;
        }
    .end annotation

    .line 269
    invoke-virtual {p2}, Lcom/auth0/jwt/algorithms/Algorithm;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    return-void

    .line 270
    :cond_0
    new-instance v0, Lcom/auth0/jwt/exceptions/AlgorithmMismatchException;

    const-string v1, "The provided Algorithm doesn\'t match the one defined in the JWT\'s Header."

    invoke-direct {v0, v1}, Lcom/auth0/jwt/exceptions/AlgorithmMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyClaims(Lcom/auth0/jwt/interfaces/DecodedJWT;Ljava/util/Map;)V
    .locals 7
    .param p1, "jwt"    # Lcom/auth0/jwt/interfaces/DecodedJWT;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/jwt/interfaces/DecodedJWT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/TokenExpiredException;,
            Lcom/auth0/jwt/exceptions/InvalidClaimException;
        }
    .end annotation

    .line 275
    .local p2, "claims":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 276
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string/jumbo v4, "sub"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_1
    const-string v4, "nbf"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_2
    const-string v4, "jti"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_3
    const-string v4, "iss"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_4
    const-string v4, "iat"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_5
    const-string v4, "exp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v5

    goto :goto_1

    :sswitch_6
    const-string v4, "aud"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v6

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 299
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getClaim(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Claim;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/auth0/jwt/JWTVerifier;->assertValidClaim(Lcom/auth0/jwt/interfaces/Claim;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 296
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/auth0/jwt/JWTVerifier;->assertValidStringClaim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    goto :goto_2

    .line 293
    :pswitch_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/auth0/jwt/JWTVerifier;->assertValidStringClaim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    goto :goto_2

    .line 290
    :pswitch_2
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getIssuer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/auth0/jwt/JWTVerifier;->assertValidIssuerClaim(Ljava/lang/String;Ljava/util/List;)V

    .line 291
    goto :goto_2

    .line 287
    :pswitch_3
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/auth0/jwt/JWTVerifier;->assertValidDateClaim(Ljava/util/Date;JZ)V

    .line 288
    goto :goto_2

    .line 284
    :pswitch_4
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getIssuedAt()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/auth0/jwt/JWTVerifier;->assertValidDateClaim(Ljava/util/Date;JZ)V

    .line 285
    goto :goto_2

    .line 281
    :pswitch_5
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getExpiresAt()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/auth0/jwt/JWTVerifier;->assertValidDateClaim(Ljava/util/Date;JZ)V

    .line 282
    goto :goto_2

    .line 278
    :pswitch_6
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getAudience()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/auth0/jwt/JWTVerifier;->assertValidAudienceClaim(Ljava/util/List;Ljava/util/List;)V

    .line 279
    nop

    .line 302
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_2
    goto/16 :goto_0

    .line 303
    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x17ab0 -> :sswitch_6
        0x18a1d -> :sswitch_5
        0x1965c -> :sswitch_4
        0x19889 -> :sswitch_3
        0x19c5f -> :sswitch_2
        0x1a932 -> :sswitch_1
        0x1be40 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public verify(Lcom/auth0/jwt/interfaces/DecodedJWT;)Lcom/auth0/jwt/interfaces/DecodedJWT;
    .locals 1
    .param p1, "jwt"    # Lcom/auth0/jwt/interfaces/DecodedJWT;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTVerificationException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/auth0/jwt/JWTVerifier;->algorithm:Lcom/auth0/jwt/algorithms/Algorithm;

    invoke-direct {p0, p1, v0}, Lcom/auth0/jwt/JWTVerifier;->verifyAlgorithm(Lcom/auth0/jwt/interfaces/DecodedJWT;Lcom/auth0/jwt/algorithms/Algorithm;)V

    .line 263
    iget-object v0, p0, Lcom/auth0/jwt/JWTVerifier;->algorithm:Lcom/auth0/jwt/algorithms/Algorithm;

    invoke-virtual {v0, p1}, Lcom/auth0/jwt/algorithms/Algorithm;->verify(Lcom/auth0/jwt/interfaces/DecodedJWT;)V

    .line 264
    iget-object v0, p0, Lcom/auth0/jwt/JWTVerifier;->claims:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/auth0/jwt/JWTVerifier;->verifyClaims(Lcom/auth0/jwt/interfaces/DecodedJWT;Ljava/util/Map;)V

    .line 265
    return-object p1
.end method

.method public verify(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/DecodedJWT;
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTVerificationException;
        }
    .end annotation

    .line 246
    new-instance v0, Lcom/auth0/jwt/JWTDecoder;

    iget-object v1, p0, Lcom/auth0/jwt/JWTVerifier;->parser:Lcom/auth0/jwt/impl/JWTParser;

    invoke-direct {v0, v1, p1}, Lcom/auth0/jwt/JWTDecoder;-><init>(Lcom/auth0/jwt/impl/JWTParser;Ljava/lang/String;)V

    .line 247
    .local v0, "jwt":Lcom/auth0/jwt/interfaces/DecodedJWT;
    invoke-virtual {p0, v0}, Lcom/auth0/jwt/JWTVerifier;->verify(Lcom/auth0/jwt/interfaces/DecodedJWT;)Lcom/auth0/jwt/interfaces/DecodedJWT;

    move-result-object v1

    return-object v1
.end method
