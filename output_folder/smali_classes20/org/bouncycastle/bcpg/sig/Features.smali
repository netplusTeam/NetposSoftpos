.class public Lorg/bouncycastle/bcpg/sig/Features;
.super Lorg/bouncycastle/bcpg/SignatureSubpacket;


# static fields
.field public static final FEATURE_MODIFICATION_DETECTION:B = 0x1t


# direct methods
.method public constructor <init>(ZB)V
    .locals 2

    invoke-static {p2}, Lorg/bouncycastle/bcpg/sig/Features;->featureToByteArray(B)[B

    move-result-object p2

    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    const/16 v0, 0x1e

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method private static final featureToByteArray(B)[B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method private setSupportsFeature(BZ)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/bcpg/sig/Features;->supportsFeature(B)Z

    move-result v0

    if-eq v0, p2, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/bcpg/sig/Features;->data:[B

    array-length p2, p2

    add-int/2addr p2, v1

    new-array p2, p2, [B

    iget-object v1, p0, Lorg/bouncycastle/bcpg/sig/Features;->data:[B

    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/Features;->data:[B

    array-length v2, v2

    invoke-static {v1, v0, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/Features;->data:[B

    array-length v0, v0

    aput-byte p1, p2, v0

    iput-object p2, p0, Lorg/bouncycastle/bcpg/sig/Features;->data:[B

    goto :goto_1

    :cond_0
    move p2, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/Features;->data:[B

    array-length v2, v2

    if-ge p2, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/Features;->data:[B

    aget-byte v2, v2, p2

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/bcpg/sig/Features;->data:[B

    array-length p1, p1

    sub-int/2addr p1, v1

    new-array v1, p1, [B

    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/Features;->data:[B

    invoke-static {v2, v0, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/Features;->data:[B

    add-int/lit8 v2, p2, 0x1

    sub-int/2addr p1, p2

    invoke-static {v0, v2, v1, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/bouncycastle/bcpg/sig/Features;->data:[B

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "feature == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public supportsFeature(B)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/Features;->data:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/bcpg/sig/Features;->data:[B

    aget-byte v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public supportsModificationDetection()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/bcpg/sig/Features;->supportsFeature(B)Z

    move-result v0

    return v0
.end method
