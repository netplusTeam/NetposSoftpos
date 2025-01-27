.class public Lorg/bouncycastle/openpgp/PGPKdfParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/PGPAlgorithmParameters;


# instance fields
.field private final hashAlgorithm:I

.field private final symmetricWrapAlgorithm:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/openpgp/PGPKdfParameters;->hashAlgorithm:I

    iput p2, p0, Lorg/bouncycastle/openpgp/PGPKdfParameters;->symmetricWrapAlgorithm:I

    return-void
.end method


# virtual methods
.method public getHashAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/openpgp/PGPKdfParameters;->hashAlgorithm:I

    return v0
.end method

.method public getSymmetricWrapAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/openpgp/PGPKdfParameters;->symmetricWrapAlgorithm:I

    return v0
.end method
