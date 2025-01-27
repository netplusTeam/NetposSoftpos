.class final Lcom/google/crypto/tink/jwt/JwtNames;
.super Ljava/lang/Object;
.source "JwtNames.java"


# static fields
.field static final CLAIM_AUDIENCE:Ljava/lang/String; = "aud"

.field static final CLAIM_EXPIRATION:Ljava/lang/String; = "exp"

.field static final CLAIM_ISSUED_AT:Ljava/lang/String; = "iat"

.field static final CLAIM_ISSUER:Ljava/lang/String; = "iss"

.field static final CLAIM_JWT_ID:Ljava/lang/String; = "jti"

.field static final CLAIM_NOT_BEFORE:Ljava/lang/String; = "nbf"

.field static final CLAIM_SUBJECT:Ljava/lang/String; = "sub"

.field static final HEADER_ALGORITHM:Ljava/lang/String; = "alg"

.field static final HEADER_CRITICAL:Ljava/lang/String; = "crit"

.field static final HEADER_KEY_ID:Ljava/lang/String; = "kid"

.field static final HEADER_TYPE:Ljava/lang/String; = "typ"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isRegisteredName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 53
    const-string v0, "iss"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    const-string/jumbo v0, "sub"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    const-string v0, "aud"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    const-string v0, "exp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    const-string v0, "nbf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    const-string v0, "iat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    const-string v0, "jti"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 53
    :goto_1
    return v0
.end method

.method static validate(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtNames;->isRegisteredName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 45
    const-string v2, "claim \'%s\' is invalid because it\'s a registered name; use the corresponding setter method."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
