.class public Lorg/bouncycastle/gpg/keybox/FirstBlob;
.super Lorg/bouncycastle/gpg/keybox/Blob;


# instance fields
.field private final fileCreatedAt:J

.field private final headerFlags:I

.field private final lastMaintenanceRun:J


# direct methods
.method private constructor <init>(IJLorg/bouncycastle/gpg/keybox/BlobType;IIJJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/gpg/keybox/Blob;-><init>(IJLorg/bouncycastle/gpg/keybox/BlobType;I)V

    iput p6, p0, Lorg/bouncycastle/gpg/keybox/FirstBlob;->headerFlags:I

    iput-wide p7, p0, Lorg/bouncycastle/gpg/keybox/FirstBlob;->fileCreatedAt:J

    iput-wide p9, p0, Lorg/bouncycastle/gpg/keybox/FirstBlob;->lastMaintenanceRun:J

    return-void
.end method

.method static parseContent(IJLorg/bouncycastle/gpg/keybox/BlobType;ILorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;)Lorg/bouncycastle/gpg/keybox/FirstBlob;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u16()I

    move-result v6

    const/4 v0, 0x4

    move-object/from16 v1, p5

    invoke-virtual {v1, v0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->bN(I)[B

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/gpg/keybox/FirstBlob;->magicBytes:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v7

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v9

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    invoke-virtual/range {p5 .. p5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    new-instance v11, Lorg/bouncycastle/gpg/keybox/FirstBlob;

    move-object v0, v11

    move v1, p0

    move-wide v2, p1

    move-object v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v10}, Lorg/bouncycastle/gpg/keybox/FirstBlob;-><init>(IJLorg/bouncycastle/gpg/keybox/BlobType;IIJJ)V

    return-object v11

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect magic expecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/gpg/keybox/FirstBlob;->magicBytes:[B

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getFileCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/gpg/keybox/FirstBlob;->fileCreatedAt:J

    return-wide v0
.end method

.method public getHeaderFlags()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/gpg/keybox/FirstBlob;->headerFlags:I

    return v0
.end method

.method public getLastMaintenanceRun()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/gpg/keybox/FirstBlob;->lastMaintenanceRun:J

    return-wide v0
.end method
