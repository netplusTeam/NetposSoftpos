.class public Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerScalarOps;
.super Ljava/lang/Object;
.source "BigIntegerScalarOps.java"

# interfaces
.implements Lnet/i2p/crypto/eddsa/math/ScalarOps;


# instance fields
.field private final enc:Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;

.field private final l:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "f"    # Lnet/i2p/crypto/eddsa/math/Field;
    .param p2, "l"    # Ljava/math/BigInteger;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerScalarOps;->l:Ljava/math/BigInteger;

    .line 25
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;

    invoke-direct {v0}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;-><init>()V

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerScalarOps;->enc:Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;

    .line 26
    invoke-virtual {v0, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->setField(Lnet/i2p/crypto/eddsa/math/Field;)V

    .line 27
    return-void
.end method


# virtual methods
.method public multiplyAndAdd([B[B[B)[B
    .locals 3
    .param p1, "a"    # [B
    .param p2, "b"    # [B
    .param p3, "c"    # [B

    .line 34
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerScalarOps;->enc:Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;

    invoke-virtual {v0, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->toBigInteger([B)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerScalarOps;->enc:Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;

    invoke-virtual {v2, p2}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->toBigInteger([B)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerScalarOps;->enc:Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;

    invoke-virtual {v2, p3}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->toBigInteger([B)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerScalarOps;->l:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->encode(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public reduce([B)[B
    .locals 3
    .param p1, "s"    # [B

    .line 30
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerScalarOps;->enc:Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;

    invoke-virtual {v0, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->toBigInteger([B)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerScalarOps;->l:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->encode(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method
