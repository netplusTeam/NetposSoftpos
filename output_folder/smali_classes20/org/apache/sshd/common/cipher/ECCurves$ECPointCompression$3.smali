.class final enum Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression$3;
.super Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;
.source "ECCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IB)V
    .locals 1
    .param p3, "indicator"    # B

    .line 463
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;-><init>(Ljava/lang/String;IBLorg/apache/sshd/common/cipher/ECCurves$1;)V

    return-void
.end method


# virtual methods
.method public octetStringToEcPoint([BII)Ljava/security/spec/ECPoint;
    .locals 6
    .param p1, "octets"    # [B
    .param p2, "startIndex"    # I
    .param p3, "len"    # I

    .line 466
    div-int/lit8 v0, p3, 0x2

    .line 467
    .local v0, "numElements":I
    mul-int/lit8 v1, v0, 0x2

    if-ne p3, v1, :cond_0

    .line 473
    new-array v1, v0, [B

    .line 474
    .local v1, "xp":[B
    new-array v2, v0, [B

    .line 475
    .local v2, "yp":[B
    const/4 v3, 0x0

    invoke-static {p1, p2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    add-int v4, p2, v0

    invoke-static {p1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    invoke-static {v1}, Lorg/apache/sshd/common/cipher/ECCurves;->octetStringToInteger([B)Ljava/math/BigInteger;

    move-result-object v3

    .line 479
    .local v3, "x":Ljava/math/BigInteger;
    invoke-static {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->octetStringToInteger([B)Ljava/math/BigInteger;

    move-result-object v4

    .line 480
    .local v4, "y":Ljava/math/BigInteger;
    new-instance v5, Ljava/security/spec/ECPoint;

    invoke-direct {v5, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v5

    .line 468
    .end local v1    # "xp":[B
    .end local v2    # "yp":[B
    .end local v3    # "x":Ljava/math/BigInteger;
    .end local v4    # "y":Ljava/math/BigInteger;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "octetStringToEcPoint("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression$3;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")  invalid remainder octets representation:  expected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeECPoint(Ljava/io/OutputStream;Ljava/lang/String;Ljava/security/spec/ECPoint;)V
    .locals 4
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "curveName"    # Ljava/lang/String;
    .param p3, "p"    # Ljava/security/spec/ECPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    invoke-static {p2}, Lorg/apache/sshd/common/cipher/ECCurves;->fromCurveName(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v0

    .line 486
    .local v0, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->getNumPointOctets()I

    move-result v1

    .line 491
    .local v1, "numElements":I
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeInt(Ljava/io/OutputStream;I)[B

    .line 492
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression$3;->getIndicatorValue()B

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 493
    invoke-virtual {p3}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {p0, p1, v3, v2, v1}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression$3;->writeCoordinate(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;I)V

    .line 494
    invoke-virtual {p3}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {p0, p1, v3, v2, v1}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression$3;->writeCoordinate(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;I)V

    .line 495
    return-void

    .line 487
    .end local v1    # "numElements":I
    :cond_0
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeECPoint("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression$3;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] cannot determine octets count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
