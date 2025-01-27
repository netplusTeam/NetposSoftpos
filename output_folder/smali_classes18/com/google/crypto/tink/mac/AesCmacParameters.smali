.class public final Lcom/google/crypto/tink/mac/AesCmacParameters;
.super Lcom/google/crypto/tink/mac/MacParameters;
.source "AesCmacParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;,
        Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;
    }
.end annotation


# instance fields
.field private final keySizeBytes:I

.field private final tagSizeBytes:I

.field private final variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;


# direct methods
.method private constructor <init>(IILcom/google/crypto/tink/mac/AesCmacParameters$Variant;)V
    .locals 0
    .param p1, "keySizeBytes"    # I
    .param p2, "tagSizeBytes"    # I
    .param p3, "variant"    # Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keySizeBytes",
            "tagSizeBytes",
            "variant"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/google/crypto/tink/mac/MacParameters;-><init>()V

    .line 110
    iput p1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->keySizeBytes:I

    .line 111
    iput p2, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->tagSizeBytes:I

    .line 112
    iput-object p3, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    .line 113
    return-void
.end method

.method synthetic constructor <init>(IILcom/google/crypto/tink/mac/AesCmacParameters$Variant;Lcom/google/crypto/tink/mac/AesCmacParameters$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;
    .param p4, "x3"    # Lcom/google/crypto/tink/mac/AesCmacParameters$1;

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/mac/AesCmacParameters;-><init>(IILcom/google/crypto/tink/mac/AesCmacParameters$Variant;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;
    .locals 2

    .line 116
    new-instance v0, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;-><init>(Lcom/google/crypto/tink/mac/AesCmacParameters$1;)V

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

    .line 160
    instance-of v0, p1, Lcom/google/crypto/tink/mac/AesCmacParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 161
    return v1

    .line 163
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/mac/AesCmacParameters;

    .line 164
    .local v0, "that":Lcom/google/crypto/tink/mac/AesCmacParameters;
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getKeySizeBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getKeySizeBytes()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 165
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getTotalTagSizeBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getTotalTagSizeBytes()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 166
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getVariant()Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getVariant()Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 164
    :goto_0
    return v1
.end method

.method public getCryptographicTagSizeBytes()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->tagSizeBytes:I

    return v0
.end method

.method public getKeySizeBytes()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->keySizeBytes:I

    return v0
.end method

.method public getTotalTagSizeBytes()I
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    if-ne v0, v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    return v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    if-ne v0, v1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    return v0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    if-ne v0, v1, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    return v0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->LEGACY:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    if-ne v0, v1, :cond_3

    .line 148
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    return v0

    .line 150
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown variant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVariant()Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

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

    .line 171
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->keySizeBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->tagSizeBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AES-CMAC Parameters (variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->tagSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-byte tags, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->keySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-byte key)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
