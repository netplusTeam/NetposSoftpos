.class public Lorg/bouncycastle/gpg/keybox/KeyInformation;
.super Ljava/lang/Object;


# instance fields
.field private final filler:[B

.field private final fingerprint:[B

.field private final keyFlags:I

.field private final keyID:[B

.field private final offsetToKeyID:J


# direct methods
.method constructor <init>([BJI[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/gpg/keybox/KeyInformation;->fingerprint:[B

    iput-wide p2, p0, Lorg/bouncycastle/gpg/keybox/KeyInformation;->offsetToKeyID:J

    iput p4, p0, Lorg/bouncycastle/gpg/keybox/KeyInformation;->keyFlags:I

    invoke-static {p5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/gpg/keybox/KeyInformation;->filler:[B

    invoke-static {p6}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/gpg/keybox/KeyInformation;->keyID:[B

    return-void
.end method

.method static getInstance(Ljava/lang/Object;II)Lorg/bouncycastle/gpg/keybox/KeyInformation;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/gpg/keybox/KeyInformation;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/gpg/keybox/KeyInformation;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->wrap(Ljava/lang/Object;)Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->position()I

    move-result v0

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->bN(I)[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v4

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    int-to-long v1, p2

    add-long/2addr v1, v4

    long-to-int p2, v1

    const-wide/16 v6, 0x8

    add-long/2addr v1, v6

    long-to-int v1, v1

    invoke-virtual {p0, p2, v1}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->rangeOf(II)[B

    move-result-object p2

    move-object v8, p2

    goto :goto_0

    :cond_1
    move-object v8, v1

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u16()I

    move-result v6

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u16()I

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->position()I

    move-result p2

    sub-int/2addr p2, v0

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->bN(I)[B

    move-result-object v7

    new-instance p0, Lorg/bouncycastle/gpg/keybox/KeyInformation;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/gpg/keybox/KeyInformation;-><init>([BJI[B[B)V

    return-object p0
.end method


# virtual methods
.method public getFiller()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyInformation;->filler:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFingerprint()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyInformation;->fingerprint:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getKeyFlags()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/gpg/keybox/KeyInformation;->keyFlags:I

    return v0
.end method

.method public getKeyID()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyInformation;->keyID:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
