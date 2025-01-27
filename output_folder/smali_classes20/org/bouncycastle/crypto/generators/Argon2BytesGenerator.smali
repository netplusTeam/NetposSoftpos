.class public Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;
.super Ljava/lang/Object;
.source "Argon2BytesGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;,
        Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    }
.end annotation


# static fields
.field private static final ARGON2_ADDRESSES_IN_BLOCK:I = 0x80

.field private static final ARGON2_BLOCK_SIZE:I = 0x400

.field private static final ARGON2_PREHASH_DIGEST_LENGTH:I = 0x40

.field private static final ARGON2_PREHASH_SEED_LENGTH:I = 0x48

.field private static final ARGON2_QWORDS_IN_BLOCK:I = 0x80

.field private static final ARGON2_SYNC_POINTS:I = 0x4

.field private static final MAX_PARALLELISM:I = 0x1000000

.field private static final MIN_ITERATIONS:I = 0x1

.field private static final MIN_OUTLEN:I = 0x4

.field private static final MIN_PARALLELISM:I = 0x1


# instance fields
.field private laneLength:I

.field private memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

.field private parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

.field private result:[B

.field private segmentLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private F(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIII)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->fBlaMka(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;II)V

    .line 2
    const-wide/16 v4, 0x20

    move-object v0, p0

    move-object v1, p1

    move v2, p5

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->rotr64(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIJ)V

    .line 4
    invoke-direct {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->fBlaMka(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;II)V

    .line 5
    const-wide/16 v4, 0x18

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->rotr64(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIJ)V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->fBlaMka(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;II)V

    .line 8
    const-wide/16 v4, 0x10

    move v2, p5

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->rotr64(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIJ)V

    .line 10
    invoke-direct {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->fBlaMka(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;II)V

    .line 11
    const-wide/16 v4, 0x3f

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->rotr64(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIJ)V

    return-void
.end method

.method private static addByteString(Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    array-length v1, p1

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addIntToLittleEndian(Lorg/bouncycastle/crypto/Digest;I)V

    .line 2
    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_0

    :cond_0
    nop

    .line 6
    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addIntToLittleEndian(Lorg/bouncycastle/crypto/Digest;I)V

    :goto_0
    return-void
.end method

.method private static addIntToLittleEndian(Lorg/bouncycastle/crypto/Digest;I)V
    .locals 1

    int-to-byte v0, p1

    .line 1
    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    .line 2
    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    .line 3
    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 4
    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method private digest(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    iget v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    move v1, v2

    .line 4
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 6
    iget v3, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    mul-int v4, v1, v3

    sub-int/2addr v3, v2

    add-int/2addr v4, v3

    .line 7
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    aget-object v3, v3, v4

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$400(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->toBytes()[B

    move-result-object v0

    .line 12
    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->hash([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->result:[B

    return-void
.end method

.method private doInit(Lorg/bouncycastle/crypto/params/Argon2Parameters;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getMemory()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    .line 8
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    mul-int/lit8 v1, v0, 0x4

    .line 9
    iput v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    .line 12
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    mul-int/2addr v0, p1

    .line 14
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->initMemory(I)V

    return-void
.end method

.method private fBlaMka(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;II)V
    .locals 7

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    aget-wide v0, v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v4

    aget-wide v4, v4, p3

    and-long/2addr v2, v4

    mul-long/2addr v0, v2

    .line 3
    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v2

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v3

    aget-wide v3, v3, p2

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object p1

    aget-wide v5, p1, p3

    add-long/2addr v3, v5

    const-wide/16 v5, 0x2

    mul-long/2addr v0, v5

    add-long/2addr v3, v0

    aput-wide v3, v2, p2

    return-void
.end method

.method private fillBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Z)V
    .locals 22

    .line 1
    move-object/from16 v0, p3

    new-instance v1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;-><init>(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$1;)V

    .line 2
    new-instance v4, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-direct {v4, v2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;-><init>(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$1;)V

    .line 4
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$100(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    .line 5
    invoke-static {v4, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$200(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v15, 0x8

    if-ge v3, v15, :cond_0

    mul-int/lit8 v20, v3, 0x10

    move/from16 v5, v20

    add-int/lit8 v6, v20, 0x1

    add-int/lit8 v7, v20, 0x2

    add-int/lit8 v8, v20, 0x3

    add-int/lit8 v9, v20, 0x4

    add-int/lit8 v10, v20, 0x5

    add-int/lit8 v11, v20, 0x6

    add-int/lit8 v12, v20, 0x7

    add-int/lit8 v13, v20, 0x8

    add-int/lit8 v14, v20, 0x9

    add-int/lit8 v15, v20, 0xa

    add-int/lit8 v16, v20, 0xb

    add-int/lit8 v17, v20, 0xc

    add-int/lit8 v18, v20, 0xd

    add-int/lit8 v19, v20, 0xe

    add-int/lit8 v20, v20, 0xf

    .line 12
    move/from16 v21, v3

    move-object/from16 v3, p0

    move-object/from16 p1, v4

    invoke-direct/range {v3 .. v20}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->roundFunction(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIIIIIIIIIIIIIII)V

    add-int/lit8 v3, v21, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 p1, v4

    :goto_1
    if-ge v2, v15, :cond_1

    mul-int/lit8 v3, v2, 0x2

    move v5, v3

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v3, 0x10

    add-int/lit8 v8, v3, 0x11

    add-int/lit8 v9, v3, 0x20

    add-int/lit8 v10, v3, 0x21

    add-int/lit8 v11, v3, 0x30

    add-int/lit8 v12, v3, 0x31

    add-int/lit8 v13, v3, 0x40

    add-int/lit8 v14, v3, 0x41

    add-int/lit8 v4, v3, 0x50

    move/from16 v21, v15

    move v15, v4

    add-int/lit8 v16, v3, 0x51

    add-int/lit8 v17, v3, 0x60

    add-int/lit8 v18, v3, 0x61

    add-int/lit8 v19, v3, 0x70

    add-int/lit8 v20, v3, 0x71

    .line 27
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v20}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->roundFunction(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIIIIIIIIIIIIIII)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v15, v21

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 40
    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->xor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    goto :goto_2

    .line 44
    :cond_2
    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$100(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    :goto_2
    return-void
.end method

.method private fillFirstBlocks([B)V
    .locals 7

    .line 1
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 2
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    .line 4
    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->getInitialHashLong([B[B)[B

    move-result-object v1

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->getInitialHashLong([B[B)[B

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    .line 7
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 9
    const/16 v3, 0x44

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 10
    invoke-static {v2, p1, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 12
    const/16 v3, 0x400

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->hash([BI)[B

    move-result-object v4

    .line 13
    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    iget v6, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v0

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->fromBytes([B)V

    .line 15
    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->hash([BI)[B

    move-result-object v3

    .line 16
    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    iget v5, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    mul-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, v3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->fromBytes([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private fillMemoryBlocks()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getIterations()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    move v3, v0

    .line 5
    :goto_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 7
    new-instance v4, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;

    invoke-direct {v4, v1, v3, v2, v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;-><init>(IIII)V

    .line 8
    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->fillSegment(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private fillSegment(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)V
    .locals 13

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->isDataIndependentAddressing(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)Z

    move-result v7

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->getStartingIndex(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)I

    move-result v0

    .line 3
    iget v1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->lane:I

    iget v2, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    mul-int/2addr v1, v2

    iget v2, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    iget v3, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 4
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->getPrevOffset(I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v7, :cond_0

    .line 8
    new-instance v4, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-direct {v4, v3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;-><init>(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$1;)V

    .line 9
    new-instance v5, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-direct {v5, v3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;-><init>(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$1;)V

    .line 10
    new-instance v6, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-direct {v6, v3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;-><init>(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$1;)V

    .line 12
    invoke-direct {p0, p1, v5, v6, v4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->initAddressBlocks(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    move-object v8, v4

    move-object v10, v5

    move-object v9, v6

    goto :goto_0

    .line 4
    :cond_0
    move-object v8, v3

    move-object v9, v8

    move-object v10, v9

    .line 15
    :goto_0
    iput v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->index:I

    move v11, v1

    :goto_1
    iget v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->index:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    if-ge v0, v1, :cond_2

    .line 17
    invoke-direct {p0, v11, v2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->rotatePrevOffset(II)I

    move-result v12

    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v12

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->getPseudoRandom(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IZ)J

    move-result-wide v0

    .line 20
    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->getRefLane(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;J)I

    move-result v2

    .line 21
    iget v3, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->lane:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    move v3, v4

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-direct {p0, p1, v0, v1, v3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->getRefColumn(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;JZ)I

    move-result v0

    .line 24
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    aget-object v3, v1, v12

    .line 25
    iget v5, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v0

    aget-object v0, v1, v5

    .line 26
    aget-object v1, v1, v11

    .line 28
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->isWithXor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)Z

    move-result v2

    .line 29
    invoke-direct {p0, v3, v0, v1, v2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->fillBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Z)V

    .line 30
    iget v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->index:I

    add-int/2addr v0, v4

    iput v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->index:I

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v2, v12, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getInitialHashLong([B[B)[B
    .locals 3

    .line 1
    const/16 v0, 0x48

    new-array v0, v0, [B

    .line 3
    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    const/4 p1, 0x4

    invoke-static {p2, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private getPrevOffset(I)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    rem-int v1, p1, v0

    if-nez v1, :cond_0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private getPseudoRandom(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IZ)J
    .locals 0

    if-eqz p6, :cond_1

    .line 1
    iget p5, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->index:I

    rem-int/lit16 p5, p5, 0x80

    if-nez p5, :cond_0

    .line 3
    invoke-direct {p0, p4, p3, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->nextAddresses(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    .line 5
    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object p2

    iget p1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->index:I

    rem-int/lit16 p1, p1, 0x80

    aget-wide p1, p2, p1

    return-wide p1

    .line 9
    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    aget-object p1, p1, p5

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object p1

    const/4 p2, 0x0

    aget-wide p1, p1, p2

    return-wide p1
.end method

.method private getRefColumn(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;JZ)I
    .locals 5

    .line 1
    iget v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz p4, :cond_0

    .line 8
    iget p4, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    iget v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    mul-int/2addr p4, v0

    iget p1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->index:I

    add-int/2addr p4, p1

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    .line 13
    :cond_0
    iget p4, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    iget v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    mul-int/2addr p4, v0

    iget p1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->index:I

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr p4, v1

    goto :goto_2

    .line 19
    :cond_2
    iget v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    mul-int/2addr v0, v3

    iget v4, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    rem-int/2addr v0, v4

    if-eqz p4, :cond_3

    sub-int/2addr v4, v3

    .line 23
    iget p1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->index:I

    add-int/2addr v4, p1

    add-int/lit8 p4, v4, -0x1

    move v2, v0

    goto :goto_2

    :cond_3
    sub-int/2addr v4, v3

    .line 27
    iget p1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->index:I

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    add-int p4, v4, v1

    move v2, v0

    :goto_2
    const-wide v0, 0xffffffffL

    and-long p1, p2, v0

    mul-long/2addr p1, p1

    const/16 p3, 0x20

    ushr-long/2addr p1, p3

    add-int/lit8 v0, p4, -0x1

    int-to-long v0, v0

    int-to-long v3, p4

    mul-long/2addr v3, p1

    ushr-long p1, v3, p3

    sub-long/2addr v0, p1

    int-to-long p1, v2

    add-long/2addr p1, v0

    long-to-int p1, p1

    .line 36
    iget p2, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    rem-int/2addr p1, p2

    return p1
.end method

.method private getRefLane(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long/2addr p2, v0

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v0

    int-to-long v0, v0

    rem-long/2addr p2, v0

    long-to-int p2, p2

    .line 3
    iget p3, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    if-nez p3, :cond_0

    iget p3, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    if-nez p3, :cond_0

    .line 6
    iget p2, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->lane:I

    :cond_0
    return p2
.end method

.method private static getStartingIndex(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    if-nez v0, :cond_0

    iget p0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hash([BI)[B
    .locals 8

    .line 1
    new-array v0, p2, [B

    .line 2
    invoke-static {p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x40

    if-gt p2, v3, :cond_0

    .line 8
    new-instance v3, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    mul-int/lit8 p2, p2, 0x8

    invoke-direct {v3, p2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(I)V

    .line 10
    array-length p2, v1

    invoke-virtual {v3, v1, v2, p2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 11
    array-length p2, p1

    invoke-virtual {v3, p1, v2, p2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 12
    invoke-virtual {v3, v0, v2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    goto :goto_1

    .line 16
    :cond_0
    new-instance v4, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    const/16 v5, 0x200

    invoke-direct {v4, v5}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(I)V

    .line 17
    new-array v5, v3, [B

    .line 20
    array-length v6, v1

    invoke-virtual {v4, v1, v2, v6}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 21
    array-length v1, p1

    invoke-virtual {v4, p1, v2, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 22
    invoke-virtual {v4, v5, v2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    .line 24
    const/16 p1, 0x20

    invoke-static {v5, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, p2, 0x1f

    .line 26
    div-int/2addr v1, p1

    const/4 v6, 0x2

    sub-int/2addr v1, v6

    move v7, p1

    :goto_0
    if-gt v6, v1, :cond_1

    .line 33
    invoke-virtual {v4, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 34
    invoke-virtual {v4, v5, v2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    .line 36
    invoke-static {v5, v2, v0, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x20

    goto :goto_0

    :cond_1
    mul-int/2addr v1, p1

    sub-int/2addr p2, v1

    .line 42
    new-instance p1, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    mul-int/lit8 p2, p2, 0x8

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(I)V

    .line 44
    invoke-virtual {p1, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 45
    invoke-virtual {p1, v0, v7}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    :goto_1
    return-object v0
.end method

.method private initAddressBlocks(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 4

    .line 1
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget v1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 2
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget v1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->lane:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    .line 3
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget v1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    .line 4
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    array-length v1, v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    .line 5
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getIterations()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x4

    aput-wide v1, v0, v3

    .line 6
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x5

    aput-wide v1, v0, v3

    .line 8
    iget v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    if-nez v0, :cond_0

    iget p1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    if-nez p1, :cond_0

    .line 11
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->nextAddresses(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    :cond_0
    return-void
.end method

.method private initMemory(I)V
    .locals 3

    .line 1
    new-array p1, p1, [Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 5
    new-instance v1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;-><init>(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$1;)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initialHash(Lorg/bouncycastle/crypto/params/Argon2Parameters;I[B)[B
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(I)V

    .line 3
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addIntToLittleEndian(Lorg/bouncycastle/crypto/Digest;I)V

    .line 4
    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addIntToLittleEndian(Lorg/bouncycastle/crypto/Digest;I)V

    .line 5
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getMemory()I

    move-result p2

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addIntToLittleEndian(Lorg/bouncycastle/crypto/Digest;I)V

    .line 6
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getIterations()I

    move-result p2

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addIntToLittleEndian(Lorg/bouncycastle/crypto/Digest;I)V

    .line 7
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getVersion()I

    move-result p2

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addIntToLittleEndian(Lorg/bouncycastle/crypto/Digest;I)V

    .line 8
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getType()I

    move-result p2

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addIntToLittleEndian(Lorg/bouncycastle/crypto/Digest;I)V

    .line 10
    invoke-static {v0, p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addByteString(Lorg/bouncycastle/crypto/Digest;[B)V

    .line 11
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getSalt()[B

    move-result-object p2

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addByteString(Lorg/bouncycastle/crypto/Digest;[B)V

    .line 12
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getSecret()[B

    move-result-object p2

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addByteString(Lorg/bouncycastle/crypto/Digest;[B)V

    .line 13
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getAdditional()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addByteString(Lorg/bouncycastle/crypto/Digest;[B)V

    .line 15
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    .line 16
    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    return-object p1
.end method

.method private initialize([BI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-direct {p0, v0, p2, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->initialHash(Lorg/bouncycastle/crypto/params/Argon2Parameters;I[B)[B

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->fillFirstBlocks([B)V

    return-void
.end method

.method private intToLong(I)J
    .locals 4

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private isDataIndependentAddressing(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    .line 2
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    if-nez v0, :cond_0

    iget p1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return v1
.end method

.method private isWithXor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)Z
    .locals 1

    .line 1
    iget p1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getVersion()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private nextAddresses(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 6

    .line 1
    invoke-static {p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    const/4 v1, 0x6

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->fillBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Z)V

    .line 3
    invoke-direct {p0, p1, p3, p3, v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->fillBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Z)V

    return-void
.end method

.method private reset()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    aget-object v2, v2, v1

    .line 5
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    .line 8
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->result:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 9
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->doInit(Lorg/bouncycastle/crypto/params/Argon2Parameters;)V

    return-void
.end method

.method private rotatePrevOffset(II)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    rem-int v0, p1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p1, -0x1

    :cond_0
    return p2
.end method

.method private rotr64(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIJ)V
    .locals 6

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    aget-wide v0, v0, p2

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v2

    aget-wide v2, v2, p3

    xor-long/2addr v0, v2

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->access$300(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object p1

    long-to-int p3, p4

    ushr-long v2, v0, p3

    const-wide/16 v4, 0x40

    sub-long/2addr v4, p4

    long-to-int p3, v4

    shl-long p3, v0, p3

    or-long/2addr p3, v2

    aput-wide p3, p1, p2

    return-void
.end method

.method private roundFunction(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIIIIIIIIIIIIIII)V
    .locals 6

    .line 1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p6

    move/from16 v4, p10

    move/from16 v5, p14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIII)V

    .line 2
    move v2, p3

    move v3, p7

    move/from16 v4, p11

    move/from16 v5, p15

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIII)V

    .line 3
    move v2, p4

    move v3, p8

    move/from16 v4, p12

    move/from16 v5, p16

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIII)V

    .line 4
    move v2, p5

    move v3, p9

    move/from16 v4, p13

    move/from16 v5, p17

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIII)V

    .line 6
    move v2, p2

    move v3, p7

    move/from16 v4, p12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIII)V

    .line 7
    move v2, p3

    move v3, p8

    move/from16 v4, p13

    move/from16 v5, p14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIII)V

    .line 8
    move v2, p4

    move v3, p9

    move/from16 v4, p10

    move/from16 v5, p15

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIII)V

    .line 9
    move v2, p5

    move v3, p6

    move/from16 v4, p11

    move/from16 v5, p16

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIII)V

    return-void
.end method


# virtual methods
.method public generateBytes([B[B)I
    .locals 2

    .line 3
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->generateBytes([B[BII)I

    move-result p1

    return p1
.end method

.method public generateBytes([B[BII)I
    .locals 1

    const/4 v0, 0x4

    if-lt p4, v0, :cond_0

    .line 4
    invoke-direct {p0, p1, p4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->initialize([BI)V

    .line 5
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->fillMemoryBlocks()V

    .line 6
    invoke-direct {p0, p4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->digest(I)V

    .line 8
    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->result:[B

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->reset()V

    return p4

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "output length less than 4"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateBytes([C[B)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getCharToByteConverter()Lorg/bouncycastle/crypto/CharToByteConverter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/CharToByteConverter;->convert([C)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->generateBytes([B[B)I

    move-result p1

    return p1
.end method

.method public generateBytes([C[BII)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getCharToByteConverter()Lorg/bouncycastle/crypto/CharToByteConverter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/CharToByteConverter;->convert([C)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->generateBytes([B[BII)I

    move-result p1

    return p1
.end method

.method public init(Lorg/bouncycastle/crypto/params/Argon2Parameters;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    .line 4
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 8
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v0

    const/high16 v2, 0x1000000

    if-gt v0, v2, :cond_2

    .line 12
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getMemory()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_1

    .line 16
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getIterations()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 21
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->doInit(Lorg/bouncycastle/crypto/params/Argon2Parameters;)V

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "iterations is less than: 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memory is less than: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "lanes must be less than 16777216"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "lanes must be greater than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
