.class public Lorg/bouncycastle/openpgp/PGPEncryptedDataList;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/Iterable<",
        "Lorg/bouncycastle/openpgp/PGPEncryptedData;",
        ">;"
    }
.end annotation


# instance fields
.field data:Lorg/bouncycastle/bcpg/InputStreamPacket;

.field methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/openpgp/PGPEncryptedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/openpgp/Util;->createBCPGInputStream(Ljava/io/InputStream;II)Lorg/bouncycastle/bcpg/BCPGInputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->methods:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object p1

    instance-of v1, p1, Lorg/bouncycastle/bcpg/InputStreamPacket;

    if-eqz v1, :cond_3

    check-cast p1, Lorg/bouncycastle/bcpg/InputStreamPacket;

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->data:Lorg/bouncycastle/bcpg/InputStreamPacket;

    const/4 p1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq p1, v1, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->methods:Ljava/util/List;

    new-instance v2, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;

    iget-object v4, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->data:Lorg/bouncycastle/bcpg/InputStreamPacket;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;-><init>(Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;Lorg/bouncycastle/bcpg/InputStreamPacket;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->methods:Ljava/util/List;

    new-instance v2, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;

    iget-object v4, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->data:Lorg/bouncycastle/bcpg/InputStreamPacket;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;-><init>(Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;Lorg/bouncycastle/bcpg/InputStreamPacket;)V

    :goto_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected packet in stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_3
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x1

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/openpgp/Util;->createBCPGInputStream(Ljava/io/InputStream;II)Lorg/bouncycastle/bcpg/BCPGInputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-void
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/openpgp/PGPEncryptedData;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->methods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/openpgp/PGPEncryptedData;

    return-object p1
.end method

.method public getEncryptedDataObjects()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/bouncycastle/openpgp/PGPEncryptedData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/bouncycastle/openpgp/PGPEncryptedData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->getEncryptedDataObjects()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
