.class Lorg/bouncycastle/openpgp/operator/bc/SignerOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private sig:Lorg/bouncycastle/crypto/Signer;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/Signer;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/SignerOutputStream;->sig:Lorg/bouncycastle/crypto/Signer;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/SignerOutputStream;->sig:Lorg/bouncycastle/crypto/Signer;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Signer;->update(B)V

    return-void
.end method

.method public write([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/SignerOutputStream;->sig:Lorg/bouncycastle/crypto/Signer;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/SignerOutputStream;->sig:Lorg/bouncycastle/crypto/Signer;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    return-void
.end method
