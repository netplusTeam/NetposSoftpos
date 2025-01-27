.class public Lorg/bouncycastle/gpg/keybox/KeyBlob;
.super Lorg/bouncycastle/gpg/keybox/Blob;


# instance fields
.field private final allValidity:I

.field private final assignedOwnerTrust:I

.field private final blobCreatedAt:J

.field private final blobFlags:I

.field private final checksum:[B

.field private final expirationTime:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final keyBytes:[B

.field private final keyInformation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/gpg/keybox/KeyInformation;",
            ">;"
        }
    .end annotation
.end field

.field private final keyNumber:I

.field private final newestTimestamp:J

.field private final numberOfSignatures:I

.field private final numberOfUserIDs:I

.field private final recheckAfter:J

.field private final reserveBytes:[B

.field private final serialNumber:[B

.field private final userIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/gpg/keybox/UserID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(IJLorg/bouncycastle/gpg/keybox/BlobType;IIILjava/util/List;[BILjava/util/List;ILjava/util/List;IIJJJ[B[B[B)V
    .locals 3
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

    move-object v0, p0

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/gpg/keybox/Blob;-><init>(IJLorg/bouncycastle/gpg/keybox/BlobType;I)V

    move v1, p6

    iput v1, v0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->blobFlags:I

    move v1, p7

    iput v1, v0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->keyNumber:I

    move-object v1, p8

    iput-object v1, v0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->keyInformation:Ljava/util/List;

    move-object v1, p9

    iput-object v1, v0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->serialNumber:[B

    move v1, p10

    iput v1, v0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->numberOfUserIDs:I

    move-object v1, p11

    iput-object v1, v0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->userIds:Ljava/util/List;

    move v1, p12

    iput v1, v0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->numberOfSignatures:I

    move-object/from16 v1, p13

    iput-object v1, v0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->expirationTime:Ljava/util/List;

    move/from16 v1, p14

    iput v1, v0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->assignedOwnerTrust:I

    move/from16 v1, p15

    iput v1, v0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->allValidity:I

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->recheckAfter:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->newestTimestamp:J

    move-wide/from16 v1, p20

    iput-wide v1, v0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->blobCreatedAt:J

    move-object/from16 v1, p22

    iput-object v1, v0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->keyBytes:[B

    move-object/from16 v1, p23

    iput-object v1, v0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->reserveBytes:[B

    move-object/from16 v1, p24

    iput-object v1, v0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->checksum:[B

    return-void
.end method

.method static verifyDigest(IJLorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p0

    add-long/2addr v0, p1

    const-wide/16 p1, 0x14

    sub-long p1, v0, p1

    long-to-int p1, p1

    invoke-virtual {p3, p0, p1}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->rangeOf(II)[B

    move-result-object p2

    long-to-int v0, v0

    invoke-virtual {p3, p1, v0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->rangeOf(II)[B

    move-result-object p1

    invoke-interface {p4, p2, p1}, Lorg/bouncycastle/gpg/keybox/BlobVerifier;->isMatched([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Blob with base offset of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " has incorrect digest."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAllValidity()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->allValidity:I

    return v0
.end method

.method public getAssignedOwnerTrust()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->assignedOwnerTrust:I

    return v0
.end method

.method public getBlobCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->blobCreatedAt:J

    return-wide v0
.end method

.method public getBlobFlags()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->blobFlags:I

    return v0
.end method

.method public getChecksum()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->checksum:[B

    return-object v0
.end method

.method public getExpirationTime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->expirationTime:Ljava/util/List;

    return-object v0
.end method

.method public getKeyBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->keyBytes:[B

    return-object v0
.end method

.method public getKeyInformation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/gpg/keybox/KeyInformation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->keyInformation:Ljava/util/List;

    return-object v0
.end method

.method public getKeyNumber()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->keyNumber:I

    return v0
.end method

.method public getNewestTimestamp()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->newestTimestamp:J

    return-wide v0
.end method

.method public getNumberOfSignatures()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->numberOfSignatures:I

    return v0
.end method

.method public getNumberOfUserIDs()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->numberOfUserIDs:I

    return v0
.end method

.method public getRecheckAfter()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->recheckAfter:J

    return-wide v0
.end method

.method public getReserveBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->reserveBytes:[B

    return-object v0
.end method

.method public getSerialNumber()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->serialNumber:[B

    return-object v0
.end method

.method public getUserIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/gpg/keybox/UserID;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBlob;->userIds:Ljava/util/List;

    return-object v0
.end method
