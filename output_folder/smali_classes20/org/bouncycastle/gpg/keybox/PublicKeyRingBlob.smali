.class public Lorg/bouncycastle/gpg/keybox/PublicKeyRingBlob;
.super Lorg/bouncycastle/gpg/keybox/KeyBlob;


# instance fields
.field private final fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;


# direct methods
.method private constructor <init>(IJLorg/bouncycastle/gpg/keybox/BlobType;IIILjava/util/List;[BILjava/util/List;ILjava/util/List;IIJJJ[B[B[BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lorg/bouncycastle/gpg/keybox/BlobType;",
            "III",
            "Ljava/util/List<",
            "Lorg/bouncycastle/gpg/keybox/KeyInformation;",
            ">;[BI",
            "Ljava/util/List<",
            "Lorg/bouncycastle/gpg/keybox/UserID;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;IIJJJ[B[B[B",
            "Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p24}, Lorg/bouncycastle/gpg/keybox/KeyBlob;-><init>(IJLorg/bouncycastle/gpg/keybox/BlobType;IIILjava/util/List;[BILjava/util/List;ILjava/util/List;IIJJJ[B[B[B)V

    move-object v0, p0

    move-object/from16 v1, p25

    iput-object v1, v0, Lorg/bouncycastle/gpg/keybox/PublicKeyRingBlob;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    return-void
.end method

.method static parseContent(IJLorg/bouncycastle/gpg/keybox/BlobType;ILorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)Lorg/bouncycastle/gpg/keybox/Blob;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v0, p5

    move-object/from16 v4, p7

    invoke-static {v1, v2, v3, v0, v4}, Lorg/bouncycastle/gpg/keybox/PublicKeyRingBlob;->verifyDigest(IJLorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)V

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u16()I

    move-result v6

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v4

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v7

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u16()I

    move-result v9

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u16()I

    move-result v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v12, v9, -0x1

    :goto_0
    if-ltz v12, :cond_0

    invoke-static {v0, v10, v1}, Lorg/bouncycastle/gpg/keybox/KeyInformation;->getInstance(Ljava/lang/Object;II)Lorg/bouncycastle/gpg/keybox/KeyInformation;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u16()I

    move-result v10

    invoke-virtual {v0, v10}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->bN(I)[B

    move-result-object v10

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u16()I

    move-result v12

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u16()I

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v14, v12, -0x1

    :goto_1
    if-ltz v14, :cond_1

    invoke-static {v0, v1}, Lorg/bouncycastle/gpg/keybox/UserID;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/gpg/keybox/UserID;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u16()I

    move-result v14

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u16()I

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v16, v14, -0x1

    :goto_2
    if-ltz v16, :cond_2

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v17

    move/from16 p7, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, -0x1

    move/from16 v14, p7

    goto :goto_2

    :cond_2
    move/from16 p7, v14

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u8()I

    move-result v14

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u8()I

    move-result v16

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u16()I

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v17

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v19

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v25

    move/from16 v27, v14

    move-object/from16 v21, v15

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v14

    move-object/from16 v28, v13

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->remaining()I

    move-result v13

    move/from16 v29, v12

    int-to-long v12, v13

    cmp-long v12, v14, v12

    if-gtz v12, :cond_3

    long-to-int v12, v14

    invoke-virtual {v0, v12}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->bN(I)[B

    move-result-object v23

    int-to-long v12, v1

    add-long/2addr v4, v12

    long-to-int v14, v4

    add-long/2addr v4, v7

    long-to-int v4, v4

    invoke-virtual {v0, v14, v4}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->rangeOf(II)[B

    move-result-object v22

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->position()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-long v4, v4

    sub-long v4, v2, v4

    const-wide/16 v7, 0x14

    sub-long/2addr v4, v7

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->bN(I)[B

    add-long/2addr v12, v2

    sub-long v4, v12, v7

    long-to-int v4, v4

    long-to-int v5, v12

    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->rangeOf(II)[B

    move-result-object v4

    move-object/from16 v24, v4

    array-length v4, v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->consume(I)V

    new-instance v30, Lorg/bouncycastle/gpg/keybox/PublicKeyRingBlob;

    move-object/from16 v0, v30

    move/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move v7, v9

    move-object v8, v11

    move-object v9, v10

    move/from16 v10, v29

    move-object/from16 v11, v28

    move/from16 v12, p7

    move-object/from16 v13, v21

    move/from16 v14, v27

    move/from16 v15, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    move-wide/from16 v20, v25

    move-object/from16 v25, p6

    invoke-direct/range {v0 .. v25}, Lorg/bouncycastle/gpg/keybox/PublicKeyRingBlob;-><init>(IJLorg/bouncycastle/gpg/keybox/BlobType;IIILjava/util/List;[BILjava/util/List;ILjava/util/List;IIJJJ[B[B[BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-object v30

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sizeOfReservedSpace exceeds content remaining in buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPGPPublicKeyRing()Lorg/bouncycastle/openpgp/PGPPublicKeyRing;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/PublicKeyRingBlob;->type:Lorg/bouncycastle/gpg/keybox/BlobType;

    sget-object v1, Lorg/bouncycastle/gpg/keybox/BlobType;->OPEN_PGP_BLOB:Lorg/bouncycastle/gpg/keybox/BlobType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/PublicKeyRingBlob;->getKeyBytes()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/gpg/keybox/PublicKeyRingBlob;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;-><init>([BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blob is not PGP blob, it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/gpg/keybox/PublicKeyRingBlob;->type:Lorg/bouncycastle/gpg/keybox/BlobType;

    invoke-virtual {v2}, Lorg/bouncycastle/gpg/keybox/BlobType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
