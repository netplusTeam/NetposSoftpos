.class public final Lcom/google/crypto/tink/signature/EcdsaPrivateKey;
.super Lcom/google/crypto/tink/signature/SignaturePrivateKey;
.source "EcdsaPrivateKey.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;
    }
.end annotation


# instance fields
.field private final privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

.field private final publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/signature/EcdsaPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;)V
    .locals 0
    .param p1, "publicKey"    # Lcom/google/crypto/tink/signature/EcdsaPublicKey;
    .param p2, "privateValue"    # Lcom/google/crypto/tink/util/SecretBigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "privateValue"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignaturePrivateKey;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    .line 96
    iput-object p2, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/signature/EcdsaPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/signature/EcdsaPrivateKey$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/signature/EcdsaPublicKey;
    .param p2, "x1"    # Lcom/google/crypto/tink/util/SecretBigInteger;
    .param p3, "x2"    # Lcom/google/crypto/tink/signature/EcdsaPrivateKey$1;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;-><init>(Lcom/google/crypto/tink/signature/EcdsaPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;
    .locals 2

    .line 105
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;-><init>(Lcom/google/crypto/tink/signature/EcdsaPrivateKey$1;)V

    return-object v0
.end method


# virtual methods
.method public equalsKey(Lcom/google/crypto/tink/Key;)Z
    .locals 4
    .param p1, "o"    # Lcom/google/crypto/tink/Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 129
    instance-of v0, p1, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 130
    return v1

    .line 132
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

    .line 133
    .local v0, "that":Lcom/google/crypto/tink/signature/EcdsaPrivateKey;
    iget-object v2, v0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    iget-object v3, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/signature/EcdsaPublicKey;->equalsKey(Lcom/google/crypto/tink/Key;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v3, v0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 134
    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 133
    :goto_0
    return v1
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->getParameters()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/signature/EcdsaParameters;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/signature/SignatureParameters;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->getParameters()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateValue()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/Key;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->getPublicKey()Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/signature/EcdsaPublicKey;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/signature/SignaturePublicKey;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->getPublicKey()Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    move-result-object v0

    return-object v0
.end method
