.class public final Lcom/google/crypto/tink/aead/AesGcmParameters;
.super Lcom/google/crypto/tink/aead/AeadParameters;
.source "AesGcmParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;,
        Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;
    }
.end annotation


# instance fields
.field private final ivSizeBytes:I

.field private final keySizeBytes:I

.field private final tagSizeBytes:I

.field private final variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;


# direct methods
.method private constructor <init>(IIILcom/google/crypto/tink/aead/AesGcmParameters$Variant;)V
    .locals 0
    .param p1, "keySizeBytes"    # I
    .param p2, "ivSizeBytes"    # I
    .param p3, "tagSizeBytes"    # I
    .param p4, "variant"    # Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keySizeBytes",
            "ivSizeBytes",
            "tagSizeBytes",
            "variant"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AeadParameters;-><init>()V

    .line 138
    iput p1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->keySizeBytes:I

    .line 139
    iput p2, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->ivSizeBytes:I

    .line 140
    iput p3, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->tagSizeBytes:I

    .line 141
    iput-object p4, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 142
    return-void
.end method

.method synthetic constructor <init>(IIILcom/google/crypto/tink/aead/AesGcmParameters$Variant;Lcom/google/crypto/tink/aead/AesGcmParameters$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;
    .param p5, "x4"    # Lcom/google/crypto/tink/aead/AesGcmParameters$1;

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/aead/AesGcmParameters;-><init>(IIILcom/google/crypto/tink/aead/AesGcmParameters$Variant;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;
    .locals 2

    .line 145
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;-><init>(Lcom/google/crypto/tink/aead/AesGcmParameters$1;)V

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

    .line 167
    instance-of v0, p1, Lcom/google/crypto/tink/aead/AesGcmParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 168
    return v1

    .line 170
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/aead/AesGcmParameters;

    .line 171
    .local v0, "that":Lcom/google/crypto/tink/aead/AesGcmParameters;
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getKeySizeBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getKeySizeBytes()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 172
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getIvSizeBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getIvSizeBytes()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 173
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getTagSizeBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getTagSizeBytes()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 174
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getVariant()Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getVariant()Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 171
    :goto_0
    return v1
.end method

.method public getIvSizeBytes()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->ivSizeBytes:I

    return v0
.end method

.method public getKeySizeBytes()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->keySizeBytes:I

    return v0
.end method

.method public getTagSizeBytes()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->tagSizeBytes:I

    return v0
.end method

.method public getVariant()Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

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

    .line 179
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->keySizeBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->ivSizeBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->tagSizeBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AesGcm Parameters (variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->ivSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-byte IV, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->tagSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-byte tag, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->keySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-byte key)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
