.class public final Lcom/google/crypto/tink/mac/HmacParameters;
.super Lcom/google/crypto/tink/mac/MacParameters;
.source "HmacParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/mac/HmacParameters$Builder;,
        Lcom/google/crypto/tink/mac/HmacParameters$HashType;,
        Lcom/google/crypto/tink/mac/HmacParameters$Variant;
    }
.end annotation


# instance fields
.field private final hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

.field private final keySizeBytes:I

.field private final tagSizeBytes:I

.field private final variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;


# direct methods
.method private constructor <init>(IILcom/google/crypto/tink/mac/HmacParameters$Variant;Lcom/google/crypto/tink/mac/HmacParameters$HashType;)V
    .locals 0
    .param p1, "keySizeBytes"    # I
    .param p2, "tagSizeBytes"    # I
    .param p3, "variant"    # Lcom/google/crypto/tink/mac/HmacParameters$Variant;
    .param p4, "hashType"    # Lcom/google/crypto/tink/mac/HmacParameters$HashType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keySizeBytes",
            "tagSizeBytes",
            "variant",
            "hashType"
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Lcom/google/crypto/tink/mac/MacParameters;-><init>()V

    .line 195
    iput p1, p0, Lcom/google/crypto/tink/mac/HmacParameters;->keySizeBytes:I

    .line 196
    iput p2, p0, Lcom/google/crypto/tink/mac/HmacParameters;->tagSizeBytes:I

    .line 197
    iput-object p3, p0, Lcom/google/crypto/tink/mac/HmacParameters;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 198
    iput-object p4, p0, Lcom/google/crypto/tink/mac/HmacParameters;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 199
    return-void
.end method

.method synthetic constructor <init>(IILcom/google/crypto/tink/mac/HmacParameters$Variant;Lcom/google/crypto/tink/mac/HmacParameters$HashType;Lcom/google/crypto/tink/mac/HmacParameters$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/crypto/tink/mac/HmacParameters$Variant;
    .param p4, "x3"    # Lcom/google/crypto/tink/mac/HmacParameters$HashType;
    .param p5, "x4"    # Lcom/google/crypto/tink/mac/HmacParameters$1;

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/mac/HmacParameters;-><init>(IILcom/google/crypto/tink/mac/HmacParameters$Variant;Lcom/google/crypto/tink/mac/HmacParameters$HashType;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;
    .locals 2

    .line 202
    new-instance v0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;-><init>(Lcom/google/crypto/tink/mac/HmacParameters$1;)V

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

    .line 251
    instance-of v0, p1, Lcom/google/crypto/tink/mac/HmacParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 252
    return v1

    .line 254
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/mac/HmacParameters;

    .line 255
    .local v0, "that":Lcom/google/crypto/tink/mac/HmacParameters;
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->getKeySizeBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getKeySizeBytes()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 256
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->getTotalTagSizeBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getTotalTagSizeBytes()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 257
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->getVariant()Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getVariant()Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 258
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->getHashType()Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getHashType()Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 255
    :goto_0
    return v1
.end method

.method public getCryptographicTagSizeBytes()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/google/crypto/tink/mac/HmacParameters;->tagSizeBytes:I

    return v0
.end method

.method public getHashType()Lcom/google/crypto/tink/mac/HmacParameters$HashType;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    return-object v0
.end method

.method public getKeySizeBytes()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/google/crypto/tink/mac/HmacParameters;->keySizeBytes:I

    return v0
.end method

.method public getTotalTagSizeBytes()I
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-ne v0, v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    return v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-ne v0, v1, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    return v0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-ne v0, v1, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    return v0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->LEGACY:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-ne v0, v1, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    return v0

    .line 236
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown variant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVariant()Lcom/google/crypto/tink/mac/HmacParameters$Variant;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 263
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/crypto/tink/mac/HmacParameters;->keySizeBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/crypto/tink/mac/HmacParameters;->tagSizeBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacParameters;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacParameters;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HMAC Parameters (variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacParameters;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacParameters;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/mac/HmacParameters;->tagSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-byte tags, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/mac/HmacParameters;->keySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-byte key)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
