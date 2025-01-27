.class public Lcom/dspread/august/common/wbaes/XORBox;
.super Ljava/lang/Object;
.source "XORBox.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BOXES:I = 0x8

.field public static final WIDTH:I = 0x4

.field private static final serialVersionUID:J = 0x2aaaf1f332ecbe52L


# instance fields
.field protected xor:[[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/august/common/wbaes/XORBox;->xor:[[B

    .line 9
    invoke-virtual {p0}, Lcom/dspread/august/common/wbaes/XORBox;->init()V

    return-void
.end method

.method public constructor <init>([[BZ)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/august/common/wbaes/XORBox;->xor:[[B

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/dspread/august/common/wbaes/XORBox;->setXor([[BZ)V

    return-void
.end method

.method public static getBoxes()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static getWidth()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static xor([[BJJ)J
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 2
    aget-object v3, p0, v2

    mul-int/lit8 v4, v2, 0x4

    ushr-long v5, p1, v4

    const-wide/16 v7, 0xf

    and-long/2addr v5, v7

    const/4 v9, 0x4

    shl-long/2addr v5, v9

    ushr-long v9, p3, v4

    and-long/2addr v7, v9

    or-long/2addr v5, v7

    long-to-int v5, v5

    aget-byte v3, v3, v5

    int-to-long v5, v3

    shl-long v3, v5, v4

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static xorA([[B[B[B)[B
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v2, 0x0

    .line 2
    aget-object v3, p0, v3

    aget-byte v4, p1, v0

    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    shl-int/2addr v5, v1

    aget-byte v6, p2, v0

    ushr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v5, v7

    aget-byte v3, v3, v5

    shl-int/2addr v3, v1

    add-int/lit8 v2, v2, 0x1

    aget-object v2, p0, v2

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v1, v4, 0x4

    and-int/lit8 v4, v6, 0xf

    or-int/2addr v1, v4

    aget-byte v1, v2, v1

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 4
    :cond_1
    check-cast p1, Lcom/dspread/august/common/wbaes/XORBox;

    .line 5
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/XORBox;->xor:[[B

    iget-object p1, p1, Lcom/dspread/august/common/wbaes/XORBox;->xor:[[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getTbl()[[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/XORBox;->xor:[[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/XORBox;->xor:[[B

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x173

    return v0
.end method

.method public final init()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/dspread/august/common/wbaes/XORBox;->xor:[[B

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x100
    .end array-data
.end method

.method public setPartXor([BI)V
    .locals 1

    .line 15
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/dspread/august/common/wbaes/XORBox;->setPartXor([BIZ)V

    return-void
.end method

.method public final setPartXor([BIZ)V
    .locals 2

    .line 1
    array-length v0, p1

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/XORBox;->xor:[[B

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 10
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    aput-object p1, v0, p2

    goto :goto_0

    .line 12
    :cond_0
    aput-object p1, v0, p2

    :goto_0
    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Internal table is completely null, initialize xor table"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "XOR table has to have 256 rows"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setXor([[B)V
    .locals 1

    .line 13
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/dspread/august/common/wbaes/XORBox;->setXor([[BZ)V

    return-void
.end method

.method public final setXor([[BZ)V
    .locals 4

    .line 1
    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_0

    .line 6
    new-array p2, v1, [[B

    iput-object p2, p0, Lcom/dspread/august/common/wbaes/XORBox;->xor:[[B

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/XORBox;->xor:[[B

    aget-object v2, p1, p2

    const/16 v3, 0x100

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    aput-object v2, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/dspread/august/common/wbaes/XORBox;->xor:[[B

    :cond_1
    return-void

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "XOR table has to have 8 sub-tables"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public xor(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/XORBox;->xor:[[B

    invoke-static {v0, p1, p2, p3, p4}, Lcom/dspread/august/common/wbaes/XORBox;->xor([[BJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public xorA([B[B)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/XORBox;->xor:[[B

    invoke-static {v0, p1, p2}, Lcom/dspread/august/common/wbaes/XORBox;->xorA([[B[B[B)[B

    move-result-object p1

    return-object p1
.end method
