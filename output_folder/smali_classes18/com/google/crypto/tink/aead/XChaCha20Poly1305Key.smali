.class public final Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;
.super Lcom/google/crypto/tink/aead/AeadKey;
.source "XChaCha20Poly1305Key.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final idRequirement:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

.field private final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field private final parameters:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "parameters"    # Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;
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

    .line 51
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AeadKey;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->parameters:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    .line 53
    iput-object p2, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 54
    iput-object p3, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    .line 55
    iput-object p4, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->idRequirement:Ljava/lang/Integer;

    .line 56
    return-void
.end method

.method public static create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;Lcom/google/crypto/tink/util/SecretBytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;
    .locals 3
    .param p0, "variant"    # Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;
    .param p1, "secretBytes"    # Lcom/google/crypto/tink/util/SecretBytes;
    .param p2, "idRequirement"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "variant",
            "secretBytes",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    if-eq p0, v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For given Variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " the value of idRequirement must be non-null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    if-ne p0, v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 103
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 111
    invoke-static {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    move-result-object v0

    .line 112
    .local v0, "parameters":Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;
    new-instance v1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;

    .line 113
    invoke-static {v0, p2}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->getOutputPrefix(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2, p2}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;-><init>(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    .line 112
    return-object v1

    .line 107
    .end local v0    # "parameters":Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XChaCha20Poly1305 key must be constructed with key of length 32 bytes, not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 109
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;
    .locals 2
    .param p0, "secretBytes"    # Lcom/google/crypto/tink/util/SecretBytes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secretBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;Lcom/google/crypto/tink/util/SecretBytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;

    move-result-object v0

    return-object v0
.end method

.method private static getOutputPrefix(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/util/Bytes;
    .locals 4
    .param p0, "parameters"    # Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;
    .param p1, "idRequirement"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "idRequirement"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->getVariant()Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 61
    new-array v0, v2, [B

    invoke-static {v0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->getVariant()Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    const/4 v3, 0x5

    if-ne v0, v1, :cond_1

    .line 64
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->getVariant()Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->TINK:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    if-ne v0, v1, :cond_2

    .line 67
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0

    .line 69
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Variant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->getVariant()Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 138
    instance-of v0, p1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 139
    return v1

    .line 141
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;

    .line 143
    .local v0, "that":Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;
    iget-object v2, v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->parameters:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    iget-object v3, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->parameters:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v3, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 144
    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/util/SecretBytes;->equalsSecretBytes(Lcom/google/crypto/tink/util/SecretBytes;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->idRequirement:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->idRequirement:Ljava/lang/Integer;

    .line 145
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 143
    :goto_0
    return v1
.end method

.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->getParameters()Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/aead/AeadParameters;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->getParameters()Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->parameters:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    return-object v0
.end method
