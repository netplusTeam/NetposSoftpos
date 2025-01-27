.class public Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;
.super Lnet/i2p/crypto/eddsa/math/Encoding;
.source "BigIntegerLittleEndianEncoding.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xe27f44a2a9eddL


# instance fields
.field private mask:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/math/Encoding;-><init>()V

    return-void
.end method


# virtual methods
.method public decode([B)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 4
    .param p1, "in"    # [B

    .line 70
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    if-eqz v0, :cond_1

    .line 72
    array-length v0, p1

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_0

    .line 74
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {p0, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->toBigInteger([B)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->mask:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a valid encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "field not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/math/BigInteger;)[B
    .locals 4
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 47
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 50
    .local v0, "in":[B
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    .line 51
    .local v1, "out":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 52
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v2

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "i":I
    :cond_0
    array-length v2, v0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 55
    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 48
    .end local v0    # "in":[B
    .end local v1    # "out":[B
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "field not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Lnet/i2p/crypto/eddsa/math/FieldElement;)[B
    .locals 2
    .param p1, "x"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 35
    move-object v0, p1

    check-cast v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v0, v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->mask:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->encode(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public isNegative(Lnet/i2p/crypto/eddsa/math/FieldElement;)Z
    .locals 2
    .param p1, "x"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 100
    move-object v0, p1

    check-cast v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v0, v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setField(Lnet/i2p/crypto/eddsa/math/Field;)V
    .locals 2
    .param p1, "f"    # Lnet/i2p/crypto/eddsa/math/Field;

    monitor-enter p0

    .line 30
    :try_start_0
    invoke-super {p0, p1}, Lnet/i2p/crypto/eddsa/math/Encoding;->setField(Lnet/i2p/crypto/eddsa/math/Field;)V

    .line 31
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->mask:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 29
    .end local p0    # "this":Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;
    .end local p1    # "f":Lnet/i2p/crypto/eddsa/math/Field;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toBigInteger([B)Ljava/math/BigInteger;
    .locals 4
    .param p1, "in"    # [B

    .line 84
    array-length v0, p1

    new-array v0, v0, [B

    .line 85
    .local v0, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 86
    array-length v2, p1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method
