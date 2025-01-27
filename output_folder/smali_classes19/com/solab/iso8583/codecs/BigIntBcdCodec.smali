.class public Lcom/solab/iso8583/codecs/BigIntBcdCodec;
.super Ljava/lang/Object;
.source "BigIntBcdCodec.java"

# interfaces
.implements Lcom/solab/iso8583/CustomBinaryField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/solab/iso8583/CustomBinaryField<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# instance fields
.field private final rightPadded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/solab/iso8583/codecs/BigIntBcdCodec;-><init>(Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "rightPadded"    # Z

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lcom/solab/iso8583/codecs/BigIntBcdCodec;->rightPadded:Z

    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic decodeBinaryField([BII)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/solab/iso8583/codecs/BigIntBcdCodec;->decodeBinaryField([BII)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public decodeBinaryField([BII)Ljava/math/BigInteger;
    .locals 1
    .param p1, "value"    # [B
    .param p2, "pos"    # I
    .param p3, "len"    # I

    .line 46
    iget-boolean v0, p0, Lcom/solab/iso8583/codecs/BigIntBcdCodec;->rightPadded:Z

    if-eqz v0, :cond_0

    mul-int/lit8 v0, p3, 0x2

    invoke-static {p1, p2, v0}, Lcom/solab/iso8583/util/Bcd;->decodeRightPaddedToBigInteger([BII)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_0
    mul-int/lit8 v0, p3, 0x2

    invoke-static {p1, p2, v0}, Lcom/solab/iso8583/util/Bcd;->decodeToBigInteger([BII)Ljava/math/BigInteger;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0
.end method

.method public bridge synthetic decodeField(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/solab/iso8583/codecs/BigIntBcdCodec;->decodeField(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public decodeField(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic encodeBinaryField(Ljava/lang/Object;)[B
    .locals 0

    .line 33
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/solab/iso8583/codecs/BigIntBcdCodec;->encodeBinaryField(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeBinaryField(Ljava/math/BigInteger;)[B
    .locals 3
    .param p1, "value"    # Ljava/math/BigInteger;

    .line 52
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 54
    .local v1, "buf":[B
    iget-boolean v2, p0, Lcom/solab/iso8583/codecs/BigIntBcdCodec;->rightPadded:Z

    if-eqz v2, :cond_0

    .line 55
    invoke-static {v0, v1}, Lcom/solab/iso8583/util/Bcd;->encodeRightPadded(Ljava/lang/String;[B)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {v0, v1}, Lcom/solab/iso8583/util/Bcd;->encode(Ljava/lang/String;[B)V

    .line 59
    :goto_0
    return-object v1
.end method

.method public bridge synthetic encodeField(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 33
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/solab/iso8583/codecs/BigIntBcdCodec;->encodeField(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeField(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;

    .line 69
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
