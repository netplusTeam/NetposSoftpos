.class public Lorg/bouncycastle/gpg/keybox/CertificateBlob;
.super Lorg/bouncycastle/gpg/keybox/KeyBlob;


# direct methods
.method private constructor <init>(IJLorg/bouncycastle/gpg/keybox/BlobType;IIILjava/util/List;[BILjava/util/List;ILjava/util/List;IIJJJ[B[B[B)V
    .locals 0
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
            ">;IIJJJ[B[B[B)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p24}, Lorg/bouncycastle/gpg/keybox/KeyBlob;-><init>(IJLorg/bouncycastle/gpg/keybox/BlobType;IIILjava/util/List;[BILjava/util/List;ILjava/util/List;IIJJJ[B[B[B)V

    return-void
.end method

.method static parseContent(IJLorg/bouncycastle/gpg/keybox/BlobType;ILorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)Lorg/bouncycastle/gpg/keybox/Blob;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v0, p5

    move-object/from16 v4, p6

    invoke-static {v1, v2, v3, v0, v4}, Lorg/bouncycastle/gpg/keybox/CertificateBlob;->verifyDigest(IJLorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)V

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

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u16()I

    move-result v25

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u16()I

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v14, v25, -0x1

    :goto_2
    if-ltz v14, :cond_2

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v16

    move-object/from16 p6, v13

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v13, p6

    goto :goto_2

    :cond_2
    move-object/from16 p6, v13

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u8()I

    move-result v14

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u8()I

    move-result v13

    move-object/from16 v26, v15

    move v15, v13

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u16()I

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v16

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v18

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v20

    move/from16 v27, v14

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v13

    long-to-int v13, v13

    invoke-virtual {v0, v13}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->bN(I)[B

    move-result-object v23

    int-to-long v13, v1

    add-long/2addr v4, v13

    move/from16 v28, v15

    long-to-int v15, v4

    add-long/2addr v4, v7

    long-to-int v4, v4

    invoke-virtual {v0, v15, v4}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->rangeOf(II)[B

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

    add-long/2addr v13, v2

    sub-long v4, v13, v7

    long-to-int v4, v4

    long-to-int v5, v13

    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->rangeOf(II)[B

    move-result-object v4

    move-object/from16 v24, v4

    array-length v4, v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->consume(I)V

    new-instance v29, Lorg/bouncycastle/gpg/keybox/CertificateBlob;

    move-object/from16 v0, v29

    move/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move v7, v9

    move-object v8, v11

    move-object v9, v10

    move v10, v12

    move-object/from16 v11, p6

    move/from16 v12, v25

    move-object/from16 v13, v26

    move/from16 v14, v27

    move/from16 v15, v28

    invoke-direct/range {v0 .. v24}, Lorg/bouncycastle/gpg/keybox/CertificateBlob;-><init>(IJLorg/bouncycastle/gpg/keybox/BlobType;IIILjava/util/List;[BILjava/util/List;ILjava/util/List;IIJJJ[B[B[B)V

    return-object v29
.end method


# virtual methods
.method public getEncodedCertificate()[B
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/CertificateBlob;->getKeyBytes()[B

    move-result-object v0

    return-object v0
.end method
