.class public Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/bcpg/CompressionAlgorithmTags;
.implements Lorg/bouncycastle/openpgp/StreamGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator$SafeCBZip2OutputStream;,
        Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;
    }
.end annotation


# instance fields
.field private algorithm:I

.field private compression:I

.field private dOut:Ljava/io/OutputStream;

.field private pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "unknown compression algorithm"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-ltz p2, :cond_0

    const/16 v0, 0x9

    if-gt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown compression level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->algorithm:I

    iput p2, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->compression:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doOpen()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    iget v1, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->algorithm:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v0, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->algorithm:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator$SafeCBZip2OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator$SafeCBZip2OutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    iget v2, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->compression:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;-><init>(Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;Ljava/io/OutputStream;IZ)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    iget v2, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->compression:I

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;-><init>(Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;Ljava/io/OutputStream;IZ)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->finish()V

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->flush()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    :cond_1
    return-void
.end method

.method public open(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->doOpen()V

    new-instance p1, Lorg/bouncycastle/openpgp/WrappedGeneratorStream;

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/openpgp/WrappedGeneratorStream;-><init>(Ljava/io/OutputStream;Lorg/bouncycastle/openpgp/StreamGenerator;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "generator already in open state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public open(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1, p2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;I[B)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->doOpen()V

    new-instance p1, Lorg/bouncycastle/openpgp/WrappedGeneratorStream;

    iget-object p2, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/openpgp/WrappedGeneratorStream;-><init>(Ljava/io/OutputStream;Lorg/bouncycastle/openpgp/StreamGenerator;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "generator already in open state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
