.class public final Lcom/google/crypto/tink/aead/AesGcmKey;
.super Lcom/google/crypto/tink/aead/AeadKey;
.source "AesGcmKey.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/aead/AesGcmKey$Builder;
    }
.end annotation


# instance fields
.field private final idRequirement:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

.field private final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field private final parameters:Lcom/google/crypto/tink/aead/AesGcmParameters;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/aead/AesGcmParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "parameters"    # Lcom/google/crypto/tink/aead/AesGcmParameters;
    .param p2, "keyBytes"    # Lcom/google/crypto/tink/util/SecretBytes;
    .param p3, "outputPrefix"    # Lcom/google/crypto/tink/util/Bytes;
    .param p4, "idRequirement"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "keyBytes",
            "outputPrefix",
            "idRequirement"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AeadKey;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->parameters:Lcom/google/crypto/tink/aead/AesGcmParameters;

    .line 115
    iput-object p2, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 116
    iput-object p3, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    .line 117
    iput-object p4, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->idRequirement:Ljava/lang/Integer;

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/aead/AesGcmParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/aead/AesGcmKey$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/aead/AesGcmParameters;
    .param p2, "x1"    # Lcom/google/crypto/tink/util/SecretBytes;
    .param p3, "x2"    # Lcom/google/crypto/tink/util/Bytes;
    .param p4, "x3"    # Ljava/lang/Integer;
    .param p5, "x4"    # Lcom/google/crypto/tink/aead/AesGcmKey$1;

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/aead/AesGcmKey;-><init>(Lcom/google/crypto/tink/aead/AesGcmParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/aead/AesGcmKey$Builder;
    .locals 2

    .line 126
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;-><init>(Lcom/google/crypto/tink/aead/AesGcmKey$1;)V

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

    .line 157
    instance-of v0, p1, Lcom/google/crypto/tink/aead/AesGcmKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 158
    return v1

    .line 160
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/aead/AesGcmKey;

    .line 162
    .local v0, "that":Lcom/google/crypto/tink/aead/AesGcmKey;
    iget-object v2, v0, Lcom/google/crypto/tink/aead/AesGcmKey;->parameters:Lcom/google/crypto/tink/aead/AesGcmParameters;

    iget-object v3, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->parameters:Lcom/google/crypto/tink/aead/AesGcmParameters;

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/aead/AesGcmParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/crypto/tink/aead/AesGcmKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v3, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 163
    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/util/SecretBytes;->equalsSecretBytes(Lcom/google/crypto/tink/util/SecretBytes;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/crypto/tink/aead/AesGcmKey;->idRequirement:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->idRequirement:Ljava/lang/Integer;

    .line 164
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 162
    :goto_0
    return v1
.end method

.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmKey;->getParameters()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/aead/AeadParameters;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmKey;->getParameters()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/aead/AesGcmParameters;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmKey;->parameters:Lcom/google/crypto/tink/aead/AesGcmParameters;

    return-object v0
.end method
