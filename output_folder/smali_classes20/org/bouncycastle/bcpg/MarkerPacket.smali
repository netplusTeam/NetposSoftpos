.class public Lorg/bouncycastle/bcpg/MarkerPacket;
.super Lorg/bouncycastle/bcpg/ContainedPacket;


# instance fields
.field marker:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/bcpg/MarkerPacket;->marker:[B

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readFully([B)V

    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0x47t
        0x50t
    .end array-data
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/MarkerPacket;->marker:[B

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method
