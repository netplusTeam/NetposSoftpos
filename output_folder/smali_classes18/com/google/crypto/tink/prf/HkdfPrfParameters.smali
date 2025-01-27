.class public final Lcom/google/crypto/tink/prf/HkdfPrfParameters;
.super Lcom/google/crypto/tink/prf/PrfParameters;
.source "HkdfPrfParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/prf/HkdfPrfParameters$Builder;,
        Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;
    }
.end annotation


# static fields
.field private static final MIN_KEY_SIZE:I = 0x10


# instance fields
.field private final hashType:Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;

.field private final keySizeBytes:I

.field private final salt:Lcom/google/crypto/tink/util/Bytes;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;Lcom/google/crypto/tink/util/Bytes;)V
    .locals 0
    .param p1, "keySizeBytes"    # I
    .param p2, "hashType"    # Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;
    .param p3, "salt"    # Lcom/google/crypto/tink/util/Bytes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keySizeBytes",
            "hashType",
            "salt"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/google/crypto/tink/prf/PrfParameters;-><init>()V

    .line 109
    iput p1, p0, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->keySizeBytes:I

    .line 110
    iput-object p2, p0, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->hashType:Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;

    .line 111
    iput-object p3, p0, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->salt:Lcom/google/crypto/tink/util/Bytes;

    .line 112
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/prf/HkdfPrfParameters$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;
    .param p3, "x2"    # Lcom/google/crypto/tink/util/Bytes;
    .param p4, "x3"    # Lcom/google/crypto/tink/prf/HkdfPrfParameters$1;

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/prf/HkdfPrfParameters;-><init>(ILcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;Lcom/google/crypto/tink/util/Bytes;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/prf/HkdfPrfParameters$Builder;
    .locals 2

    .line 115
    new-instance v0, Lcom/google/crypto/tink/prf/HkdfPrfParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/prf/HkdfPrfParameters$Builder;-><init>(Lcom/google/crypto/tink/prf/HkdfPrfParameters$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 138
    instance-of v0, p1, Lcom/google/crypto/tink/prf/HkdfPrfParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 139
    return v1

    .line 141
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/prf/HkdfPrfParameters;

    .line 142
    .local v0, "that":Lcom/google/crypto/tink/prf/HkdfPrfParameters;
    invoke-virtual {v0}, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->getKeySizeBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->getKeySizeBytes()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 143
    invoke-virtual {v0}, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->getHashType()Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->getHashType()Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 144
    invoke-virtual {v0}, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->getSalt()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->getSalt()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 142
    :goto_0
    return v1
.end method

.method public getHashType()Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->hashType:Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;

    return-object v0
.end method

.method public getKeySizeBytes()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->keySizeBytes:I

    return v0
.end method

.method public getSalt()Lcom/google/crypto/tink/util/Bytes;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->salt:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 149
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->keySizeBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->hashType:Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->salt:Lcom/google/crypto/tink/util/Bytes;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HKDF PRF Parameters (hashType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->hashType:Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", salt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->salt:Lcom/google/crypto/tink/util/Bytes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->keySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-byte key)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
