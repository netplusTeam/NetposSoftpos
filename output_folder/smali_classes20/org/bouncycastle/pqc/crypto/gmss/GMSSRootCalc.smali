.class public Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;
.super Ljava/lang/Object;
.source "GMSSRootCalc.java"


# instance fields
.field private AuthPath:[[B

.field private K:I

.field private digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private heightOfNextSeed:I

.field private heightOfNodes:Ljava/util/Vector;

.field private heightOfTree:I

.field private index:[I

.field private indexForNextSeed:I

.field private isFinished:Z

.field private isInitialized:Z

.field private mdLength:I

.field private messDigestTree:Lorg/bouncycastle/crypto/Digest;

.field private retain:[Ljava/util/Vector;

.field private root:[B

.field private tailStack:Ljava/util/Vector;

.field private treehash:[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;


# direct methods
.method public constructor <init>(IILorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    .line 3
    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .line 4
    invoke-interface {p3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 5
    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p3

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    .line 6
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    .line 7
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    .line 9
    new-array p1, p3, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->root:[B

    sub-int/2addr p2, v1

    .line 11
    new-array p1, p2, [Ljava/util/Vector;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    :goto_0
    if-ge v2, p2, :cond_0

    .line 14
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    aput-object p3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAuthPath()[[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;->clone([[B)[[B

    move-result-object v0

    return-object v0
.end method

.method public getRetain()[Ljava/util/Vector;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;->clone([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->root:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getStack()Ljava/util/Vector;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getStatByte()[[B
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 9
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    const/16 v4, 0x40

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v4, v5, v3

    aput v2, v5, v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    .line 10
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->root:[B

    aput-object v4, v2, v1

    move v4, v1

    .line 12
    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 14
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    aget-object v4, v6, v4

    aput-object v4, v2, v5

    move v4, v5

    goto :goto_1

    :cond_1
    nop

    :goto_2
    if-ge v1, v0, :cond_2

    .line 18
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    aput-object v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v2
.end method

.method public getStatInt()[I
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 9
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v3, v2, 0x8

    add-int/2addr v3, v0

    new-array v3, v3, [I

    .line 10
    aput v2, v3, v1

    .line 11
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    const/4 v4, 0x1

    aput v2, v3, v4

    .line 12
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    const/4 v5, 0x2

    aput v2, v3, v5

    .line 13
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    const/4 v5, 0x3

    aput v2, v3, v5

    .line 14
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    const/4 v5, 0x4

    aput v2, v3, v5

    .line 15
    iget-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    const/4 v5, 0x5

    if-eqz v2, :cond_1

    .line 17
    aput v4, v3, v5

    goto :goto_1

    :cond_1
    nop

    .line 21
    aput v1, v3, v5

    .line 23
    :goto_1
    iget-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    const/4 v5, 0x6

    if-eqz v2, :cond_2

    .line 25
    aput v4, v3, v5

    goto :goto_2

    :cond_2
    nop

    .line 29
    aput v1, v3, v5

    :goto_2
    const/4 v2, 0x7

    .line 31
    aput v0, v3, v2

    move v2, v1

    .line 33
    :goto_3
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v2, v4, :cond_3

    add-int/lit8 v4, v2, 0x8

    .line 35
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v5, v5, v2

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    nop

    :goto_4
    if-ge v1, v0, :cond_4

    .line 39
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    .line 40
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-object v3
.end method

.method public getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;->clone([Lorg/bouncycastle/pqc/crypto/gmss/Treehash;)[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Ljava/util/Vector;)V
    .locals 5

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v0, v1

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    sub-int v3, v2, v3

    if-ge v1, v3, :cond_0

    .line 4
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-direct {v3, p1, v1, v4}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;-><init>(Ljava/util/Vector;ILorg/bouncycastle/crypto/Digest;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-array p1, v2, [I

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    .line 8
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x1

    aput p1, v1, v3

    aput v2, v1, v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    .line 9
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->root:[B

    .line 11
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    .line 12
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    .line 13
    iput-boolean v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    .line 14
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    move p1, v0

    .line 16
    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge p1, v1, :cond_1

    .line 18
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    const/4 v2, -0x1

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 21
    :cond_1
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr p1, v3

    new-array p1, p1, [Ljava/util/Vector;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    move p1, v0

    .line 22
    :goto_2
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v1, v3

    if-ge p1, v1, :cond_2

    .line 24
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x3

    .line 27
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    .line 28
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    return-void
.end method

.method public initializeTreehashSeed([BI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->initializeSeed([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    nop

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    const-string v2, ""

    move v3, v1

    .line 12
    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v0

    const-string v5, " "

    if-ge v3, v4, :cond_1

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 16
    :goto_2
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_2

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update([B)V
    .locals 9

    .line 10
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    if-eqz v0, :cond_0

    .line 12
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Too much updates for Tree!!"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    if-nez v0, :cond_1

    .line 17
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "GMSSRootCalc not initialized!"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v0, 0x3

    if-ne v2, v3, :cond_2

    .line 27
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    aget-object v2, v2, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {p1, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    if-ne v2, v0, :cond_3

    .line 32
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    if-le v2, v4, :cond_3

    .line 34
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->setFirstNode([B)V

    .line 38
    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v2, v2, v1

    add-int/lit8 v4, v2, -0x3

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    if-lt v2, v0, :cond_4

    .line 41
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    if-ne v2, v4, :cond_4

    .line 44
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 49
    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v2, v2, v1

    if-nez v2, :cond_5

    .line 51
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 57
    :cond_5
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    new-array v4, v2, [B

    shl-int/lit8 v5, v2, 0x1

    .line 58
    new-array v6, v5, [B

    .line 61
    invoke-static {p1, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v1

    .line 64
    :cond_6
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_a

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    .line 65
    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 66
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_a

    .line 70
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {v2, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v2, v7}, Ljava/util/Vector;->removeElementAt(I)V

    .line 73
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v2, v7}, Ljava/util/Vector;->removeElementAt(I)V

    .line 74
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {v4, v1, v6, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v6, v1, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 77
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v4, v2, [B

    .line 78
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v4, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 p1, p1, 0x1

    .line 82
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge p1, v2, :cond_6

    .line 84
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v7, v2, p1

    add-int/2addr v7, v3

    aput v7, v2, p1

    if-ne v7, v3, :cond_7

    .line 89
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    aget-object v2, v2, p1

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {v4, v1, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    :cond_7
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v2, v7

    if-lt p1, v2, :cond_9

    if-nez p1, :cond_8

    .line 97
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "M\ufffd\ufffd\ufffdP"

    invoke-virtual {v2, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    :cond_8
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v2, v2, p1

    add-int/lit8 v7, v2, -0x3

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_6

    if-lt v2, v0, :cond_6

    .line 106
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v7, v8

    sub-int v7, p1, v7

    aget-object v2, v2, v7

    .line 107
    invoke-virtual {v2, v4, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 113
    :cond_9
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v2, v2, p1

    if-ne v2, v0, :cond_6

    .line 115
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v2, v2, p1

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->setFirstNode([B)V

    goto/16 :goto_1

    .line 121
    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 125
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ne p1, v0, :cond_b

    .line 127
    iput-boolean v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    .line 128
    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    .line 129
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->root:[B

    :cond_b
    :goto_2
    return-void
.end method

.method public update([B[B)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->initializeTreehashSeed([BI)V

    .line 5
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    .line 6
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    .line 9
    :cond_0
    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    return-void
.end method

.method public wasFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    return v0
.end method

.method public wasInitialized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    return v0
.end method
