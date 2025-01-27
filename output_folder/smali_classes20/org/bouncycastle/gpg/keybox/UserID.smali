.class public Lorg/bouncycastle/gpg/keybox/UserID;
.super Ljava/lang/Object;


# instance fields
.field private final lengthOfUserId:J

.field private final offsetToUserId:J

.field private final reserved:I

.field private final userID:[B

.field private final userIdFlags:I

.field private final validity:I


# direct methods
.method private constructor <init>(JJIII[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/bouncycastle/gpg/keybox/UserID;->offsetToUserId:J

    iput-wide p3, p0, Lorg/bouncycastle/gpg/keybox/UserID;->lengthOfUserId:J

    iput p5, p0, Lorg/bouncycastle/gpg/keybox/UserID;->userIdFlags:I

    iput p6, p0, Lorg/bouncycastle/gpg/keybox/UserID;->validity:I

    iput p7, p0, Lorg/bouncycastle/gpg/keybox/UserID;->reserved:I

    iput-object p8, p0, Lorg/bouncycastle/gpg/keybox/UserID;->userID:[B

    return-void
.end method

.method static getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/gpg/keybox/UserID;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/gpg/keybox/UserID;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/gpg/keybox/UserID;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->wrap(Ljava/lang/Object;)Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u16()I

    move-result v5

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u8()I

    move-result v6

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u8()I

    move-result v7

    int-to-long v8, p1

    add-long/2addr v8, v1

    long-to-int p1, v8

    add-long/2addr v8, v3

    long-to-int v0, v8

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->rangeOf(II)[B

    move-result-object v8

    new-instance p0, Lorg/bouncycastle/gpg/keybox/UserID;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/gpg/keybox/UserID;-><init>(JJIII[B)V

    return-object p0
.end method


# virtual methods
.method public getLengthOfUserId()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/gpg/keybox/UserID;->lengthOfUserId:J

    return-wide v0
.end method

.method public getOffsetToUserId()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/gpg/keybox/UserID;->offsetToUserId:J

    return-wide v0
.end method

.method public getReserved()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/gpg/keybox/UserID;->reserved:I

    return v0
.end method

.method public getUserID()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/UserID;->userID:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getUserIDAsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/UserID;->userID:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserIdFlags()J
    .locals 2

    iget v0, p0, Lorg/bouncycastle/gpg/keybox/UserID;->userIdFlags:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getValidity()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/gpg/keybox/UserID;->validity:I

    return v0
.end method
