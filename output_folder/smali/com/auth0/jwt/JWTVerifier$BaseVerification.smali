.class public Lcom/auth0/jwt/JWTVerifier$BaseVerification;
.super Ljava/lang/Object;
.source "JWTVerifier.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/Verification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/auth0/jwt/JWTVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseVerification"
.end annotation


# instance fields
.field private final algorithm:Lcom/auth0/jwt/algorithms/Algorithm;

.field private final claims:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private defaultLeeway:J

.field private ignoreIssuedAt:Z


# direct methods
.method constructor <init>(Lcom/auth0/jwt/algorithms/Algorithm;)V
    .locals 2
    .param p1, "algorithm"    # Lcom/auth0/jwt/algorithms/Algorithm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->algorithm:Lcom/auth0/jwt/algorithms/Algorithm;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->claims:Ljava/util/Map;

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->defaultLeeway:J

    .line 56
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Algorithm cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addLeewayToDateClaims()V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->claims:Ljava/util/Map;

    const-string v1, "exp"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->claims:Ljava/util/Map;

    iget-wide v2, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->defaultLeeway:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->claims:Ljava/util/Map;

    const-string v1, "nbf"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->claims:Ljava/util/Map;

    iget-wide v2, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->defaultLeeway:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_1
    iget-boolean v0, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->ignoreIssuedAt:Z

    const-string v1, "iat"

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->claims:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->claims:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->claims:Ljava/util/Map;

    iget-wide v2, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->defaultLeeway:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_3
    return-void
.end method

.method private assertNonNull(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 203
    if-eqz p1, :cond_0

    .line 206
    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Custom Claim\'s name can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertPositive(J)V
    .locals 2
    .param p1, "leeway"    # J

    .line 197
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 200
    return-void

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Leeway value can\'t be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requireClaim(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 225
    if-nez p2, :cond_0

    .line 226
    iget-object v0, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->claims:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->claims:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-void
.end method


# virtual methods
.method public acceptExpiresAt(J)Lcom/auth0/jwt/interfaces/Verification;
    .locals 2
    .param p1, "leeway"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->assertPositive(J)V

    .line 86
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "exp"

    invoke-direct {p0, v1, v0}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->requireClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    return-object p0
.end method

.method public acceptIssuedAt(J)Lcom/auth0/jwt/interfaces/Verification;
    .locals 2
    .param p1, "leeway"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->assertPositive(J)V

    .line 100
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "iat"

    invoke-direct {p0, v1, v0}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->requireClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    return-object p0
.end method

.method public acceptLeeway(J)Lcom/auth0/jwt/interfaces/Verification;
    .locals 0
    .param p1, "leeway"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->assertPositive(J)V

    .line 79
    iput-wide p1, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->defaultLeeway:J

    .line 80
    return-object p0
.end method

.method public acceptNotBefore(J)Lcom/auth0/jwt/interfaces/Verification;
    .locals 2
    .param p1, "leeway"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->assertPositive(J)V

    .line 93
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "nbf"

    invoke-direct {p0, v1, v0}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->requireClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    return-object p0
.end method

.method public build()Lcom/auth0/jwt/JWTVerifier;
    .locals 1

    .line 181
    new-instance v0, Lcom/auth0/jwt/ClockImpl;

    invoke-direct {v0}, Lcom/auth0/jwt/ClockImpl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->build(Lcom/auth0/jwt/interfaces/Clock;)Lcom/auth0/jwt/JWTVerifier;

    move-result-object v0

    return-object v0
.end method

.method public build(Lcom/auth0/jwt/interfaces/Clock;)Lcom/auth0/jwt/JWTVerifier;
    .locals 3
    .param p1, "clock"    # Lcom/auth0/jwt/interfaces/Clock;

    .line 192
    invoke-direct {p0}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->addLeewayToDateClaims()V

    .line 193
    new-instance v0, Lcom/auth0/jwt/JWTVerifier;

    iget-object v1, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->algorithm:Lcom/auth0/jwt/algorithms/Algorithm;

    iget-object v2, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->claims:Ljava/util/Map;

    invoke-direct {v0, v1, v2, p1}, Lcom/auth0/jwt/JWTVerifier;-><init>(Lcom/auth0/jwt/algorithms/Algorithm;Ljava/util/Map;Lcom/auth0/jwt/interfaces/Clock;)V

    return-object v0
.end method

.method public ignoreIssuedAt()Lcom/auth0/jwt/interfaces/Verification;
    .locals 1

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->ignoreIssuedAt:Z

    .line 107
    return-object p0
.end method

.method public varargs withArrayClaim(Ljava/lang/String;[Ljava/lang/Integer;)Lcom/auth0/jwt/interfaces/Verification;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "items"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 167
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->assertNonNull(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->requireClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    return-object p0
.end method

.method public varargs withArrayClaim(Ljava/lang/String;[Ljava/lang/Long;)Lcom/auth0/jwt/interfaces/Verification;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "items"    # [Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->assertNonNull(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->requireClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    return-object p0
.end method

.method public varargs withArrayClaim(Ljava/lang/String;[Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Verification;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "items"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->assertNonNull(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->requireClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    return-object p0
.end method

.method public varargs withAudience([Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Verification;
    .locals 2
    .param p1, "audience"    # [Ljava/lang/String;

    .line 72
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    const-string v1, "aud"

    invoke-direct {p0, v1, v0}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->requireClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-object p0
.end method

.method public withClaim(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/auth0/jwt/interfaces/Verification;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->assertNonNull(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->requireClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    return-object p0
.end method

.method public withClaim(Ljava/lang/String;Ljava/lang/Double;)Lcom/auth0/jwt/interfaces/Verification;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->assertNonNull(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->requireClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    return-object p0
.end method

.method public withClaim(Ljava/lang/String;Ljava/lang/Integer;)Lcom/auth0/jwt/interfaces/Verification;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->assertNonNull(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->requireClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    return-object p0
.end method

.method public withClaim(Ljava/lang/String;Ljava/lang/Long;)Lcom/auth0/jwt/interfaces/Verification;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->assertNonNull(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->requireClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    return-object p0
.end method

.method public withClaim(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Verification;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->assertNonNull(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->requireClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    return-object p0
.end method

.method public withClaim(Ljava/lang/String;Ljava/util/Date;)Lcom/auth0/jwt/interfaces/Verification;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->assertNonNull(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->requireClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    return-object p0
.end method

.method public varargs withIssuer([Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Verification;
    .locals 2
    .param p1, "issuer"    # [Ljava/lang/String;

    .line 60
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    const-string v1, "iss"

    invoke-direct {p0, v1, v0}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->requireClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    return-object p0
.end method

.method public withJWTId(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Verification;
    .locals 1
    .param p1, "jwtId"    # Ljava/lang/String;

    .line 112
    const-string v0, "jti"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->requireClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    return-object p0
.end method

.method public withSubject(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Verification;
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "sub"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/JWTVerifier$BaseVerification;->requireClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    return-object p0
.end method
