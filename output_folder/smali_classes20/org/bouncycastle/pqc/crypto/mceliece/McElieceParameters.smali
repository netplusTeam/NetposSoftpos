.class public Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;
.super Ljava/lang/Object;
.source "McElieceParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# static fields
.field public static final DEFAULT_M:I = 0xb

.field public static final DEFAULT_T:I = 0x32


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private fieldPoly:I

.field private m:I

.field private n:I

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0xb

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;-><init>(IILorg/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;-><init>(IIILorg/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(IIILorg/bouncycastle/crypto/Digest;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->m:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    const/16 v1, 0x20

    if-gt p1, v1, :cond_3

    shl-int/2addr v0, p1

    .line 59
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    .line 60
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->t:I

    if-ltz p2, :cond_2

    if-gt p2, v0, :cond_1

    .line 69
    invoke-static {p3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result p2

    if-ne p2, p1, :cond_0

    .line 70
    invoke-static {p3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->fieldPoly:I

    .line 79
    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "polynomial is not a field polynomial for GF(2^m)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "t must be less than n = 2^m"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "t must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " m is too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "m must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IILorg/bouncycastle/crypto/Digest;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v1, 0x20

    if-gt p1, v1, :cond_2

    .line 31
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->m:I

    shl-int/2addr v0, p1

    .line 32
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_0

    .line 41
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->t:I

    .line 42
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->fieldPoly:I

    .line 43
    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "t must be less than n = 2^m"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "t must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "m is too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "m must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/Digest;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->m:I

    .line 10
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    .line 11
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    if-ge v1, p1, :cond_0

    shl-int/lit8 v1, v1, 0x1

    .line 13
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    .line 14
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->m:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->m:I

    goto :goto_0

    :cond_0
    ushr-int/lit8 p1, v1, 0x1

    .line 16
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->t:I

    .line 17
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->m:I

    div-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->t:I

    .line 18
    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->fieldPoly:I

    .line 19
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key size must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 2

    .line 2
    const/16 v0, 0xb

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;-><init>(IILorg/bouncycastle/crypto/Digest;)V

    return-void
.end method


# virtual methods
.method public getFieldPoly()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->fieldPoly:I

    return v0
.end method

.method public getM()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->m:I

    return v0
.end method

.method public getN()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    return v0
.end method

.method public getT()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;->t:I

    return v0
.end method
