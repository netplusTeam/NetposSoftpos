.class public Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;
.super Ljava/lang/Object;
.source "KDFFeedbackBytesGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/MacDerivationFunction;


# static fields
.field private static final INTEGER_MAX:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private fixedInputData:[B

.field private generatedBytes:I

.field private final h:I

.field private ios:[B

.field private iv:[B

.field private k:[B

.field private maxSizeExcl:I

.field private final prf:Lorg/bouncycastle/crypto/Mac;

.field private useCounter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    .line 2
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Mac;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    .line 3
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    .line 4
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    return-void
.end method

.method private generateNext()V
    .locals 5

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->iv:[B

    array-length v3, v2

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    array-length v3, v2

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 10
    :goto_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->useCounter:Z

    if-eqz v0, :cond_1

    .line 12
    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    iget v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 15
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    array-length v3, v2

    packed-switch v3, :pswitch_data_0

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported size of counter i"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    ushr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    .line 31
    aput-byte v3, v2, v1

    .line 34
    :pswitch_1
    array-length v3, v2

    add-int/lit8 v3, v3, -0x3

    ushr-int/lit8 v4, v0, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 37
    :pswitch_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 40
    :pswitch_3
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    array-length v3, v2

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 48
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->fixedInputData:[B

    array-length v3, v2

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    add-int v1, v0, p3

    if-ltz v1, :cond_2

    .line 2
    iget v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->maxSizeExcl:I

    if-ge v1, v2, :cond_2

    .line 8
    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 10
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generateNext()V

    .line 15
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    rem-int/2addr v0, v1

    .line 16
    sub-int/2addr v1, v0

    .line 17
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 18
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    sub-int v0, p3, v1

    add-int/2addr p2, v1

    :goto_0
    if-lez v0, :cond_1

    .line 25
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generateNext()V

    .line 26
    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 27
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->k:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iget v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    sub-int/2addr v0, v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_1
    return p3

    .line 29
    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Current KDFCTR may only be used for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->maxSizeExcl:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMac()Lorg/bouncycastle/crypto/Mac;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;

    .line 10
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->getKI()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 14
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->getFixedInputData()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->fixedInputData:[B

    .line 16
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->getR()I

    move-result v0

    .line 17
    div-int/lit8 v1, v0, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->ios:[B

    .line 19
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->useCounter()Z

    move-result v1

    const v2, 0x7fffffff

    if-eqz v1, :cond_1

    .line 22
    sget-object v1, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->h:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 23
    sget-object v1, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    :goto_0
    iput v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->maxSizeExcl:I

    goto :goto_1

    :cond_1
    nop

    .line 28
    iput v2, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->maxSizeExcl:I

    .line 31
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->iv:[B

    .line 32
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFFeedbackParameters;->useCounter()Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->useCounter:Z

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lorg/bouncycastle/crypto/generators/KDFFeedbackBytesGenerator;->generatedBytes:I

    return-void

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong type of arguments given"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
