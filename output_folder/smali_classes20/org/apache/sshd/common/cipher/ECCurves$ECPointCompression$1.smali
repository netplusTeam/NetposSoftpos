.class final enum Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression$1;
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

    .line 441
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;-><init>(Ljava/lang/String;IBLorg/apache/sshd/common/cipher/ECCurves$1;)V

    return-void
.end method


# virtual methods
.method public octetStringToEcPoint([BII)Ljava/security/spec/ECPoint;
    .locals 5
    .param p1, "octets"    # [B
    .param p2, "startIndex"    # I
    .param p3, "len"    # I

    .line 444
    new-array v0, p3, [B

    .line 445
    .local v0, "xp":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    invoke-static {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->octetStringToInteger([B)Ljava/math/BigInteger;

    move-result-object v1

    .line 449
    .local v1, "x":Ljava/math/BigInteger;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "octetStringToEcPoint("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression$1;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")(X="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") compression support N/A"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
