.class public Lorg/bouncycastle/openpgp/PGPSignatureList;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/Iterable<",
        "Lorg/bouncycastle/openpgp/PGPSignature;",
        ">;"
    }
.end annotation


# instance fields
.field sigs:[Lorg/bouncycastle/openpgp/PGPSignature;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openpgp/PGPSignature;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/openpgp/PGPSignature;

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureList;->sigs:[Lorg/bouncycastle/openpgp/PGPSignature;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/openpgp/PGPSignature;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/openpgp/PGPSignature;

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureList;->sigs:[Lorg/bouncycastle/openpgp/PGPSignature;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/openpgp/PGPSignature;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureList;->sigs:[Lorg/bouncycastle/openpgp/PGPSignature;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureList;->sigs:[Lorg/bouncycastle/openpgp/PGPSignature;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/bouncycastle/openpgp/PGPSignature;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/util/Arrays$Iterator;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSignatureList;->sigs:[Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/Arrays$Iterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSignatureList;->sigs:[Lorg/bouncycastle/openpgp/PGPSignature;

    array-length v0, v0

    return v0
.end method
