.class public Lorg/bouncycastle/gpg/keybox/Blob;
.super Ljava/lang/Object;


# static fields
.field protected static final magicBytes:[B


# instance fields
.field protected final base:I

.field protected final length:J

.field protected final type:Lorg/bouncycastle/gpg/keybox/BlobType;

.field protected final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "KBXf"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/gpg/keybox/Blob;->magicBytes:[B

    return-void
.end method

.method protected constructor <init>(IJLorg/bouncycastle/gpg/keybox/BlobType;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/gpg/keybox/Blob;->base:I

    iput-wide p2, p0, Lorg/bouncycastle/gpg/keybox/Blob;->length:J

    iput-object p4, p0, Lorg/bouncycastle/gpg/keybox/Blob;->type:Lorg/bouncycastle/gpg/keybox/BlobType;

    iput p5, p0, Lorg/bouncycastle/gpg/keybox/Blob;->version:I

    return-void
.end method

.method static getInstance(Ljava/lang/Object;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)Lorg/bouncycastle/gpg/keybox/Blob;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->wrap(Ljava/lang/Object;)Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->hasRemaining()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->position()I

    move-result p0

    invoke-virtual {v5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u32()J

    move-result-wide v1

    invoke-virtual {v5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u8()I

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/gpg/keybox/BlobType;->fromByte(I)Lorg/bouncycastle/gpg/keybox/BlobType;

    move-result-object v3

    invoke-virtual {v5}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u8()I

    move-result v4

    sget-object v6, Lorg/bouncycastle/gpg/keybox/Blob$1;->$SwitchMap$org$bouncycastle$gpg$keybox$BlobType:[I

    invoke-virtual {v3}, Lorg/bouncycastle/gpg/keybox/BlobType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/gpg/keybox/PublicKeyRingBlob;->parseContent(IJLorg/bouncycastle/gpg/keybox/BlobType;ILorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)Lorg/bouncycastle/gpg/keybox/Blob;

    move-result-object p0

    return-object p0

    :pswitch_1
    move v0, p0

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/gpg/keybox/CertificateBlob;->parseContent(IJLorg/bouncycastle/gpg/keybox/BlobType;ILorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)Lorg/bouncycastle/gpg/keybox/Blob;

    move-result-object p0

    return-object p0

    :pswitch_2
    move v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/gpg/keybox/FirstBlob;->parseContent(IJLorg/bouncycastle/gpg/keybox/BlobType;ILorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;)Lorg/bouncycastle/gpg/keybox/FirstBlob;

    move-result-object p0

    return-object p0

    :goto_0
    :pswitch_3
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot take get instance of null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getType()Lorg/bouncycastle/gpg/keybox/BlobType;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/Blob;->type:Lorg/bouncycastle/gpg/keybox/BlobType;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/gpg/keybox/Blob;->version:I

    return v0
.end method
