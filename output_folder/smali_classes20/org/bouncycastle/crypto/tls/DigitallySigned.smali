.class public Lorg/bouncycastle/crypto/tls/DigitallySigned;
.super Ljava/lang/Object;
.source "DigitallySigned.java"


# instance fields
.field protected algorithm:Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

.field protected signature:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 7
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DigitallySigned;->algorithm:Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    .line 8
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/DigitallySigned;->signature:[B

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'signature\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parse(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/DigitallySigned;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object p0

    goto :goto_0

    .line 1
    :cond_0
    const/4 p0, 0x0

    .line 5
    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 6
    new-instance v0, Lorg/bouncycastle/crypto/tls/DigitallySigned;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/crypto/tls/DigitallySigned;-><init>(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DigitallySigned;->algorithm:Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->encode(Ljava/io/OutputStream;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DigitallySigned;->signature:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void
.end method

.method public getAlgorithm()Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DigitallySigned;->algorithm:Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DigitallySigned;->signature:[B

    return-object v0
.end method
