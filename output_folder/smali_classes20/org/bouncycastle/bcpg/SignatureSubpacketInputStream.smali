.class public Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;
.super Ljava/io/InputStream;

# interfaces
.implements Lorg/bouncycastle/bcpg/SignatureSubpacketTags;


# instance fields
.field private final in:Ljava/io/InputStream;

.field private final limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/bcpg/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    iput p2, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->limit:I

    return-void
.end method

.method private checkData([BIILjava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    if-ne p3, p2, :cond_0

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "truncated "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " subpacket data."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public readPacket()Lorg/bouncycastle/bcpg/SignatureSubpacket;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/16 v4, 0xc0

    if-ge v0, v4, :cond_1

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_1
    const/16 v5, 0xdf

    if-gt v0, v5, :cond_2

    add-int/lit16 v0, v0, -0xc0

    shl-int/2addr v0, v3

    iget-object v5, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    add-int/2addr v0, v5

    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    const/16 v4, 0xff

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    iget-object v4, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    iget-object v4, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    shl-int/2addr v4, v3

    or-int/2addr v0, v4

    iget-object v4, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    or-int/2addr v0, v4

    move v4, v2

    :goto_1
    iget-object v5, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_7

    if-lez v0, :cond_6

    iget v6, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->limit:I

    if-le v0, v6, :cond_3

    const/16 v6, 0x800

    if-gt v0, v6, :cond_6

    :cond_3
    sub-int/2addr v0, v2

    new-array v6, v0, [B

    iget-object v7, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-static {v7, v6}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v7

    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_4

    move v1, v2

    :cond_4
    and-int/lit8 v2, v5, 0x7f

    if-eq v7, v0, :cond_5

    const/4 v0, 0x4

    sparse-switch v2, :sswitch_data_0

    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "truncated subpacket data."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string v0, "Issuer"

    invoke-direct {p0, v6, v3, v7, v0}, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->checkData([BIILjava/lang/String;)[B

    move-result-object v6

    goto :goto_3

    :sswitch_1
    const-string v3, "Signature Key Expiration Time"

    goto :goto_2

    :sswitch_2
    const-string v3, "Signature Expiration Time"

    goto :goto_2

    :sswitch_3
    const-string v3, "Signature Creation Time"

    :goto_2
    invoke-direct {p0, v6, v0, v7, v3}, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->checkData([BIILjava/lang/String;)[B

    move-result-object v6

    :cond_5
    :goto_3
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/bcpg/SignatureSubpacket;

    invoke-direct {v0, v2, v1, v4, v6}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-object v0

    :pswitch_1
    new-instance v0, Lorg/bouncycastle/bcpg/sig/IntendedRecipientFingerprint;

    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/IntendedRecipientFingerprint;-><init>(ZZ[B)V

    return-object v0

    :pswitch_2
    new-instance v0, Lorg/bouncycastle/bcpg/sig/IssuerFingerprint;

    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/IssuerFingerprint;-><init>(ZZ[B)V

    return-object v0

    :pswitch_3
    new-instance v0, Lorg/bouncycastle/bcpg/sig/EmbeddedSignature;

    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/EmbeddedSignature;-><init>(ZZ[B)V

    return-object v0

    :pswitch_4
    new-instance v0, Lorg/bouncycastle/bcpg/sig/SignatureTarget;

    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/SignatureTarget;-><init>(ZZ[B)V

    return-object v0

    :pswitch_5
    new-instance v0, Lorg/bouncycastle/bcpg/sig/Features;

    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/Features;-><init>(ZZ[B)V

    return-object v0

    :pswitch_6
    new-instance v0, Lorg/bouncycastle/bcpg/sig/RevocationReason;

    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/RevocationReason;-><init>(ZZ[B)V

    return-object v0

    :pswitch_7
    new-instance v0, Lorg/bouncycastle/bcpg/sig/SignerUserID;

    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/SignerUserID;-><init>(ZZ[B)V

    return-object v0

    :pswitch_8
    new-instance v0, Lorg/bouncycastle/bcpg/sig/KeyFlags;

    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/KeyFlags;-><init>(ZZ[B)V

    return-object v0

    :pswitch_9
    new-instance v0, Lorg/bouncycastle/bcpg/sig/PrimaryUserID;

    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/PrimaryUserID;-><init>(ZZ[B)V

    return-object v0

    :pswitch_a
    new-instance v0, Lorg/bouncycastle/bcpg/sig/NotationData;

    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/NotationData;-><init>(ZZ[B)V

    return-object v0

    :pswitch_b
    new-instance v0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;

    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;-><init>(ZZ[B)V

    return-object v0

    :pswitch_c
    new-instance v0, Lorg/bouncycastle/bcpg/sig/PreferredAlgorithms;

    invoke-direct {v0, v2, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/PreferredAlgorithms;-><init>(IZZ[B)V

    return-object v0

    :pswitch_d
    new-instance v0, Lorg/bouncycastle/bcpg/sig/KeyExpirationTime;

    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/KeyExpirationTime;-><init>(ZZ[B)V

    return-object v0

    :pswitch_e
    new-instance v0, Lorg/bouncycastle/bcpg/sig/Revocable;

    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/Revocable;-><init>(ZZ[B)V

    return-object v0

    :pswitch_f
    new-instance v0, Lorg/bouncycastle/bcpg/sig/TrustSignature;

    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/TrustSignature;-><init>(ZZ[B)V

    return-object v0

    :pswitch_10
    new-instance v0, Lorg/bouncycastle/bcpg/sig/Exportable;

    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/Exportable;-><init>(ZZ[B)V

    return-object v0

    :pswitch_11
    new-instance v0, Lorg/bouncycastle/bcpg/sig/SignatureExpirationTime;

    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/SignatureExpirationTime;-><init>(ZZ[B)V

    return-object v0

    :pswitch_12
    new-instance v0, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;

    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;-><init>(ZZ[B)V

    return-object v0

    :cond_6
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "out of range data found in signature sub packet"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "unexpected EOF reading signature sub packet"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unexpected length header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x9 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_c
        :pswitch_1
    .end packed-switch
.end method
