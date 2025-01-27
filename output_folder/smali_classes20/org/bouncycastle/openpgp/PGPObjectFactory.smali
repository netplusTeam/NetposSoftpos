.class public Lorg/bouncycastle/openpgp/PGPObjectFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/Iterable;


# instance fields
.field private fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

.field private in:Lorg/bouncycastle/bcpg/BCPGInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    iput-object p2, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/openpgp/PGPObjectFactory;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/bouncycastle/openpgp/PGPObjectFactory$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/openpgp/PGPObjectFactory$1;-><init>(Lorg/bouncycastle/openpgp/PGPObjectFactory;)V

    return-object v0
.end method

.method public nextObject()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object in stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object v0

    return-object v0

    :sswitch_1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-static {v0, v1}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->readSubkey(Lorg/bouncycastle/bcpg/BCPGInputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_2
    new-instance v0, Lorg/bouncycastle/openpgp/PGPLiteralData;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPLiteralData;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :sswitch_3
    new-instance v0, Lorg/bouncycastle/openpgp/PGPMarker;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPMarker;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :sswitch_4
    new-instance v0, Lorg/bouncycastle/openpgp/PGPCompressedData;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPCompressedData;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :sswitch_5
    new-instance v0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-object v0

    :sswitch_6
    :try_start_1
    new-instance v0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    :try_end_1
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create secret key object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    :try_start_2
    new-instance v1, Lorg/bouncycastle/openpgp/PGPOnePassSignature;

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-direct {v1, v2}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create one pass signature object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lorg/bouncycastle/openpgp/PGPOnePassSignatureList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/bouncycastle/openpgp/PGPOnePassSignature;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/openpgp/PGPOnePassSignature;

    check-cast v0, [Lorg/bouncycastle/openpgp/PGPOnePassSignature;

    invoke-direct {v1, v0}, Lorg/bouncycastle/openpgp/PGPOnePassSignatureList;-><init>([Lorg/bouncycastle/openpgp/PGPOnePassSignature;)V

    return-object v1

    :sswitch_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :try_start_3
    new-instance v1, Lorg/bouncycastle/openpgp/PGPSignature;

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-direct {v1, v2}, Lorg/bouncycastle/openpgp/PGPSignature;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create signature object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Lorg/bouncycastle/openpgp/PGPSignatureList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/openpgp/PGPSignature;

    check-cast v0, [Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-direct {v1, v0}, Lorg/bouncycastle/openpgp/PGPSignatureList;-><init>([Lorg/bouncycastle/openpgp/PGPSignature;)V

    return-object v1

    :sswitch_9
    new-instance v0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :sswitch_a
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_a
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_9
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x6 -> :sswitch_5
        0x8 -> :sswitch_4
        0xa -> :sswitch_3
        0xb -> :sswitch_2
        0xe -> :sswitch_1
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch
.end method
