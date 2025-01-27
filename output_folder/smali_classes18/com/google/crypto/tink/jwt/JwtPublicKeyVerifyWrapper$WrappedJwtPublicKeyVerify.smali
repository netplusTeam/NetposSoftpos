.class Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$WrappedJwtPublicKeyVerify;
.super Ljava/lang/Object;
.source "JwtPublicKeyVerifyWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedJwtPublicKeyVerify"
.end annotation


# instance fields
.field private final primitives:Lcom/google/crypto/tink/PrimitiveSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/PrimitiveSet<",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/PrimitiveSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitives"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/PrimitiveSet<",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyInternal;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p1, "primitives":Lcom/google/crypto/tink/PrimitiveSet;, "Lcom/google/crypto/tink/PrimitiveSet<Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyInternal;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$WrappedJwtPublicKeyVerify;->primitives:Lcom/google/crypto/tink/PrimitiveSet;

    .line 54
    return-void
.end method


# virtual methods
.method public verifyAndDecode(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtValidator;)Lcom/google/crypto/tink/jwt/VerifiedJwt;
    .locals 7
    .param p1, "compact"    # Ljava/lang/String;
    .param p2, "validator"    # Lcom/google/crypto/tink/jwt/JwtValidator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compact",
            "validator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "interestingException":Ljava/security/GeneralSecurityException;
    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$WrappedJwtPublicKeyVerify;->primitives:Lcom/google/crypto/tink/PrimitiveSet;

    invoke-virtual {v1}, Lcom/google/crypto/tink/PrimitiveSet;->getAll()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 61
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyInternal;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/PrimitiveSet$Entry;

    .line 63
    .local v4, "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyInternal;>;"
    :try_start_0
    invoke-virtual {v4}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getKeyId()I

    move-result v5

    invoke-virtual {v4}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/crypto/tink/jwt/JwtFormat;->getKid(ILcom/google/crypto/tink/proto/OutputPrefixType;)Ljava/util/Optional;

    move-result-object v5

    .line 64
    .local v5, "kid":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getPrimitive()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyInternal;

    invoke-interface {v6, p1, p2, v5}, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyInternal;->verifyAndDecodeWithKid(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtValidator;Ljava/util/Optional;)Lcom/google/crypto/tink/jwt/VerifiedJwt;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 65
    .end local v5    # "kid":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 66
    .local v5, "e":Ljava/security/GeneralSecurityException;
    instance-of v6, v5, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    if-eqz v6, :cond_0

    .line 68
    move-object v0, v5

    .line 72
    .end local v4    # "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyInternal;>;"
    .end local v5    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    goto :goto_1

    .line 73
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyInternal;>;>;"
    :cond_1
    goto :goto_0

    .line 74
    :cond_2
    if-eqz v0, :cond_3

    .line 75
    throw v0

    .line 77
    :cond_3
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "invalid JWT"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
