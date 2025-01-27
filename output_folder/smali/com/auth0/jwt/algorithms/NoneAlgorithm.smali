.class Lcom/auth0/jwt/algorithms/NoneAlgorithm;
.super Lcom/auth0/jwt/algorithms/Algorithm;
.source "NoneAlgorithm.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 11
    const-string v0, "none"

    invoke-direct {p0, v0, v0}, Lcom/auth0/jwt/algorithms/Algorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public sign([B)[B
    .locals 1
    .param p1, "contentBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public sign([B[B)[B
    .locals 1
    .param p1, "headerBytes"    # [B
    .param p2, "payloadBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureGenerationException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public verify(Lcom/auth0/jwt/interfaces/DecodedJWT;)V
    .locals 2
    .param p1, "jwt"    # Lcom/auth0/jwt/interfaces/DecodedJWT;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureVerificationException;
        }
    .end annotation

    .line 16
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/DecodedJWT;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 17
    .local v0, "signatureBytes":[B
    array-length v1, v0

    if-gtz v1, :cond_0

    .line 20
    return-void

    .line 18
    :cond_0
    new-instance v1, Lcom/auth0/jwt/exceptions/SignatureVerificationException;

    invoke-direct {v1, p0}, Lcom/auth0/jwt/exceptions/SignatureVerificationException;-><init>(Lcom/auth0/jwt/algorithms/Algorithm;)V

    throw v1
.end method
