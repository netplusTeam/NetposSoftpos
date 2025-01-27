.class public Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;
.super Ljava/lang/Object;
.source "GLVTypeBParameters.java"


# instance fields
.field protected final beta:Ljava/math/BigInteger;

.field protected final bits:I

.field protected final g1:Ljava/math/BigInteger;

.field protected final g2:Ljava/math/BigInteger;

.field protected final lambda:Ljava/math/BigInteger;

.field protected final v1A:Ljava/math/BigInteger;

.field protected final v1B:Ljava/math/BigInteger;

.field protected final v2A:Ljava/math/BigInteger;

.field protected final v2B:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string/jumbo v0, "v1"

    invoke-static {p3, v0}, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 3
    const-string/jumbo v0, "v2"

    invoke-static {p4, v0}, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    .line 6
    iput-object p2, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    .line 7
    const/4 p1, 0x0

    aget-object p2, p3, p1

    iput-object p2, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1A:Ljava/math/BigInteger;

    .line 8
    const/4 p2, 0x1

    aget-object p3, p3, p2

    iput-object p3, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1B:Ljava/math/BigInteger;

    .line 9
    aget-object p1, p4, p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2A:Ljava/math/BigInteger;

    .line 10
    aget-object p1, p4, p2

    iput-object p1, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2B:Ljava/math/BigInteger;

    .line 11
    iput-object p5, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->g1:Ljava/math/BigInteger;

    .line 12
    iput-object p6, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->g2:Ljava/math/BigInteger;

    .line 13
    iput p7, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->bits:I

    return-void
.end method

.method private static checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' must consist of exactly 2 (non-null) values"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getBeta()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getBits()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->bits:I

    return v0
.end method

.method public getG1()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->g1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getG2()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->g2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getLambda()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getV1A()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1A:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getV1B()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1B:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getV2A()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2A:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getV2B()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2B:Ljava/math/BigInteger;

    return-object v0
.end method
