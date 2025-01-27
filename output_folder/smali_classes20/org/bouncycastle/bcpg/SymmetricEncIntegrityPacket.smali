.class public Lorg/bouncycastle/bcpg/SymmetricEncIntegrityPacket;
.super Lorg/bouncycastle/bcpg/InputStreamPacket;


# instance fields
.field version:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/bcpg/InputStreamPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/bcpg/SymmetricEncIntegrityPacket;->version:I

    return-void
.end method
