.class Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;
.super Ljava/lang/Object;
.source "GMSSUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clone([Ljava/util/Vector;)[Ljava/util/Vector;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/util/Vector;

    const/4 v1, 0x0

    .line 30
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_2

    .line 32
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    aput-object v2, v0, v1

    .line 33
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    aget-object v3, v0, v1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static clone([Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;)[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static clone([Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;)[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    .line 6
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static clone([Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;)[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    .line 9
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static clone([Lorg/bouncycastle/pqc/crypto/gmss/Treehash;)[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 20
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    .line 22
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static clone([[B)[[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_0
    array-length v0, p0

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 14
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static clone([[Ljava/util/Vector;)[[Ljava/util/Vector;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_0
    array-length v0, p0

    new-array v0, v0, [[Ljava/util/Vector;

    const/4 v1, 0x0

    .line 38
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 40
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;->clone([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static clone([[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;)[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    array-length v0, p0

    new-array v0, v0, [[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    const/4 v1, 0x0

    .line 25
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 27
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;->clone([Lorg/bouncycastle/pqc/crypto/gmss/Treehash;)[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static clone([[[B)[[[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_0
    array-length v0, p0

    new-array v0, v0, [[[B

    const/4 v1, 0x0

    .line 17
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 19
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
