.class public Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;
.super Lnet/i2p/crypto/eddsa/math/FieldElement;
.source "BigIntegerFieldElement.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x115fcab9bea568L


# instance fields
.field final bi:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "f"    # Lnet/i2p/crypto/eddsa/math/Field;
    .param p2, "bi"    # Ljava/math/BigInteger;

    .line 33
    invoke-direct {p0, p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;)V

    .line 34
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    .line 35
    return-void
.end method


# virtual methods
.method public add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 4
    .param p1, "val"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 42
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    move-object v3, p1

    check-cast v3, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v3, v3, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public addOne()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 4

    .line 47
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public cmov(Lnet/i2p/crypto/eddsa/math/FieldElement;I)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1
    .param p1, "val"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p2, "b"    # I

    .line 111
    if-nez p2, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public divide(Ljava/math/BigInteger;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 3
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 69
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public divide(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1
    .param p1, "val"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 65
    move-object v0, p1

    check-cast v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v0, v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->divide(Ljava/math/BigInteger;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 121
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    return v0

    .line 123
    :cond_0
    move-object v0, p1

    check-cast v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    .line 124
    .local v0, "fe":Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    iget-object v2, v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 116
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method

.method public invert()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 4

    .line 88
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    check-cast v3, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v3, v3, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public isNonZero()Z
    .locals 2

    .line 38
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public mod(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 4
    .param p1, "m"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 92
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    move-object v3, p1

    check-cast v3, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v3, v3, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public modPow(Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 5
    .param p1, "e"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p2, "m"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 96
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    move-object v3, p1

    check-cast v3, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v3, v3, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    move-object v4, p2

    check-cast v4, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v4, v4, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 4
    .param p1, "val"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 73
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    move-object v3, p1

    check-cast v3, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v3, v3, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 60
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public pow(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1
    .param p1, "e"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 100
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->modPow(Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public pow22523()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 104
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getQm5d8()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->pow(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public square()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 77
    invoke-virtual {p0, p0}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public squareAndDouble()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 2

    .line 81
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 82
    .local v0, "sq":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v0, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    return-object v1
.end method

.method public subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 4
    .param p1, "val"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 51
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    move-object v3, p1

    check-cast v3, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v3, v3, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public subtractOne()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 4

    .line 56
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getQ()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->mod(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BigIntegerFieldElement val="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
