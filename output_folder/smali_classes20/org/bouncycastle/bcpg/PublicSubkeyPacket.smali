.class public Lorg/bouncycastle/bcpg/PublicSubkeyPacket;
.super Lorg/bouncycastle/bcpg/PublicKeyPacket;


# direct methods
.method public constructor <init>(ILjava/util/Date;Lorg/bouncycastle/bcpg/BCPGKey;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/bouncycastle/bcpg/BCPGKey;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-void
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/PublicSubkeyPacket;->getEncodedContents()[B

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method
