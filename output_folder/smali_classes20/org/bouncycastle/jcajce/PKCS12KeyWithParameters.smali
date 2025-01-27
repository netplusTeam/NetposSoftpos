.class public Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;
.super Lorg/bouncycastle/jcajce/PKCS12Key;
.source "PKCS12KeyWithParameters.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field private final iterationCount:I

.field private final salt:[B


# direct methods
.method public constructor <init>([CZ[BI)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    .line 7
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    .line 8
    iput p4, p0, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    return-void
.end method

.method public constructor <init>([C[BI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/PKCS12Key;-><init>([C)V

    .line 3
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    .line 4
    iput p3, p0, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    return-object v0
.end method
