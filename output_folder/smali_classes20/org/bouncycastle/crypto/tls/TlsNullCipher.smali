.class public Lorg/bouncycastle/crypto/tls/TlsNullCipher;
.super Ljava/lang/Object;
.source "TlsNullCipher.java"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsCipher;


# instance fields
.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field protected readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

.field protected writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    .line 3
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    .line 4
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/16 v3, 0x50

    if-ne v2, v0, :cond_5

    .line 11
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 17
    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    .line 18
    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 19
    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/bouncycastle/crypto/tls/TlsContext;I)[B

    move-result-object v2

    .line 23
    new-instance v10, Lorg/bouncycastle/crypto/tls/TlsMac;

    .line 24
    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    const/4 v8, 0x0

    move-object v4, v10

    move-object v5, p1

    move-object v6, p2

    move-object v7, v2

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V

    .line 25
    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    add-int/2addr p2, v1

    .line 27
    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsMac;

    .line 28
    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    move-object v4, v1

    move-object v6, p3

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V

    .line 29
    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p3

    add-int/2addr p2, p3

    if-ne p2, v0, :cond_2

    move-object v0, v10

    goto :goto_2

    .line 33
    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 11
    :cond_3
    move-object v1, v0

    .line 37
    :goto_2
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 39
    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    .line 40
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    goto :goto_3

    .line 44
    :cond_4
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    .line 45
    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    :goto_3
    return-void

    .line 46
    :cond_5
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method


# virtual methods
.method public decodeCiphertext(JS[BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    if-nez v0, :cond_0

    add-int/2addr p6, p5

    .line 3
    invoke-static {p4, p5, p6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    if-lt p6, v0, :cond_2

    sub-int v7, p6, v0

    add-int v0, p5, v7

    add-int/2addr p6, p5

    .line 14
    invoke-static {p4, v0, p6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p6

    .line 15
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object p1

    .line 17
    invoke-static {p6, p1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 22
    invoke-static {p4, p5, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 24
    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x32

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    if-nez v0, :cond_0

    add-int/2addr p6, p5

    .line 3
    invoke-static {p4, p5, p6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object p1

    .line 7
    array-length p2, p1

    add-int/2addr p2, p6

    new-array p2, p2, [B

    .line 8
    const/4 p3, 0x0

    invoke-static {p4, p5, p2, p3, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    array-length p4, p1

    invoke-static {p1, p3, p2, p6, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public getPlaintextLimit(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method
