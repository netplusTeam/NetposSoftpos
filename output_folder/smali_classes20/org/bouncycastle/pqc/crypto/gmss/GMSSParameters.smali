.class public Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;
.super Ljava/lang/Object;
.source "GMSSParameters.java"


# instance fields
.field private K:[I

.field private heightOfTrees:[I

.field private numOfLayers:I

.field private winternitzParameter:[I


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    const/4 v1, 0x2

    if-gt p1, v0, :cond_0

    .line 6
    const/4 p1, 0x1

    new-array v2, p1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 7
    new-array v0, p1, [I

    const/4 v4, 0x3

    aput v4, v0, v3

    .line 8
    new-array v4, p1, [I

    aput v1, v4, v3

    .line 9
    invoke-direct {p0, p1, v2, v0, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    .line 13
    new-array p1, v1, [I

    fill-array-data p1, :array_0

    .line 14
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    .line 15
    new-array v2, v1, [I

    fill-array-data v2, :array_2

    .line 16
    invoke-direct {p0, v1, p1, v0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    goto :goto_0

    :cond_1
    nop

    .line 20
    const/4 p1, 0x4

    new-array v0, p1, [I

    fill-array-data v0, :array_3

    .line 21
    new-array v1, p1, [I

    fill-array-data v1, :array_4

    .line 22
    new-array v2, p1, [I

    fill-array-data v2, :array_5

    .line 23
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x9
        0x9
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>(I[I[I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    return-void
.end method

.method private init(I[I[I[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    nop

    .line 2
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    .line 3
    array-length v0, p3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    array-length v0, p2

    if-ne p1, v0, :cond_1

    array-length v0, p4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const-string v0, ""

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    const-string v0, "Unexpected parameterset format"

    move p1, v1

    :goto_1
    move v2, v1

    .line 10
    :goto_2
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    if-ge v2, v3, :cond_6

    .line 12
    aget v3, p4, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    aget v5, p2, v2

    sub-int/2addr v5, v3

    rem-int/2addr v5, v4

    if-eqz v5, :cond_3

    .line 15
    :cond_2
    const-string v0, "Wrong parameter K (K >= 2 and H-K even required)!"

    move p1, v1

    .line 18
    :cond_3
    aget v3, p2, v2

    const/4 v5, 0x4

    if-lt v3, v5, :cond_4

    aget v3, p3, v2

    if-ge v3, v4, :cond_5

    .line 21
    :cond_4
    const-string p1, "Wrong parameter H or w (H > 3 and w > 1 required)!"

    move-object v0, p1

    move p1, v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 27
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->heightOfTrees:[I

    .line 28
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->winternitzParameter:[I

    .line 29
    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->K:[I

    return-void

    .line 33
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getHeightOfTrees()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->heightOfTrees:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getK()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->K:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getNumOfLayers()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    return v0
.end method

.method public getWinternitzParameter()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->winternitzParameter:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method
