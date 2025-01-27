.class public final Lcom/google/crypto/tink/signature/EcdsaParameters;
.super Lcom/google/crypto/tink/signature/SignatureParameters;
.source "EcdsaParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;,
        Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;,
        Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;,
        Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;,
        Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;
    }
.end annotation


# instance fields
.field private final curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

.field private final hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

.field private final signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

.field private final variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;)V
    .locals 0
    .param p1, "signatureEncoding"    # Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;
    .param p2, "curveType"    # Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;
    .param p3, "hashType"    # Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;
    .param p4, "variant"    # Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "signatureEncoding",
            "curveType",
            "hashType",
            "variant"
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignatureParameters;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    .line 217
    iput-object p2, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    .line 218
    iput-object p3, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    .line 219
    iput-object p4, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    .line 220
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;Lcom/google/crypto/tink/signature/EcdsaParameters$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;
    .param p2, "x1"    # Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;
    .param p3, "x2"    # Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;
    .param p4, "x3"    # Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;
    .param p5, "x4"    # Lcom/google/crypto/tink/signature/EcdsaParameters$1;

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/signature/EcdsaParameters;-><init>(Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;
    .locals 2

    .line 223
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;-><init>(Lcom/google/crypto/tink/signature/EcdsaParameters$1;)V

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

    .line 244
    instance-of v0, p1, Lcom/google/crypto/tink/signature/EcdsaParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 245
    return v1

    .line 247
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/signature/EcdsaParameters;

    .line 248
    .local v0, "that":Lcom/google/crypto/tink/signature/EcdsaParameters;
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getSignatureEncoding()Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getSignatureEncoding()Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 249
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getCurveType()Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getCurveType()Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 250
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getHashType()Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getHashType()Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 251
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getVariant()Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getVariant()Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 248
    :goto_0
    return v1
.end method

.method public getCurveType()Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    return-object v0
.end method

.method public getHashType()Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    return-object v0
.end method

.method public getSignatureEncoding()Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    return-object v0
.end method

.method public getVariant()Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

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

    .line 256
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ECDSA Parameters (variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curve: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
