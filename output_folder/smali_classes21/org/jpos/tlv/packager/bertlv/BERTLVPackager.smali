.class public abstract Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;
.super Lorg/jpos/iso/packager/GenericPackager;
.source "BERTLVPackager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH_BYTES:I = 0x5

.field private static final MAX_TAG_BYTES:I = 0x3

.field private static final asciiInterpreter:Lorg/jpos/iso/AsciiInterpreter;

.field private static final bcdInterpreterLeftPaddedZero:Lorg/jpos/iso/BCDInterpreter;

.field private static final bcdInterpreterRightPaddedF:Lorg/jpos/iso/BCDInterpreter;

.field private static final literalInterpreter:Lorg/jpos/iso/LiteralInterpreter;


# instance fields
.field private final lengthInterpreter:Lorg/jpos/iso/BinaryInterpreter;

.field private final tagInterpreter:Lorg/jpos/iso/BinaryInterpreter;

.field private final valueInterpreter:Lorg/jpos/iso/BinaryInterpreter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    sget-object v0, Lorg/jpos/iso/LiteralInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralInterpreter;

    sput-object v0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->literalInterpreter:Lorg/jpos/iso/LiteralInterpreter;

    .line 60
    sget-object v0, Lorg/jpos/iso/AsciiInterpreter;->INSTANCE:Lorg/jpos/iso/AsciiInterpreter;

    sput-object v0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->asciiInterpreter:Lorg/jpos/iso/AsciiInterpreter;

    .line 61
    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->LEFT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    sput-object v0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->bcdInterpreterLeftPaddedZero:Lorg/jpos/iso/BCDInterpreter;

    .line 62
    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->RIGHT_PADDED_F:Lorg/jpos/iso/BCDInterpreter;

    sput-object v0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->bcdInterpreterRightPaddedF:Lorg/jpos/iso/BCDInterpreter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lorg/jpos/iso/packager/GenericPackager;-><init>()V

    .line 71
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->getTagInterpreter()Lorg/jpos/iso/BinaryInterpreter;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->tagInterpreter:Lorg/jpos/iso/BinaryInterpreter;

    .line 72
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->getLengthInterpreter()Lorg/jpos/iso/BinaryInterpreter;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->lengthInterpreter:Lorg/jpos/iso/BinaryInterpreter;

    .line 73
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->getValueInterpreter()Lorg/jpos/iso/BinaryInterpreter;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->valueInterpreter:Lorg/jpos/iso/BinaryInterpreter;

    .line 74
    return-void
.end method

.method private getUninterpretLength(ILorg/jpos/iso/BinaryInterpreter;)I
    .locals 2
    .param p1, "length"    # I
    .param p2, "interpreter"    # Lorg/jpos/iso/BinaryInterpreter;

    .line 448
    if-lez p1, :cond_0

    .line 449
    rem-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p1

    .line 450
    .local v0, "lengthAdjusted":I
    invoke-interface {p2, v0}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v1

    div-int v1, v0, v1

    mul-int/2addr v1, p1

    return v1

    .line 452
    .end local v0    # "lengthAdjusted":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getUninterpretLength(ILorg/jpos/iso/Interpreter;)I
    .locals 2
    .param p1, "length"    # I
    .param p2, "interpreter"    # Lorg/jpos/iso/Interpreter;

    .line 456
    if-lez p1, :cond_0

    .line 457
    rem-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p1

    .line 458
    .local v0, "lengthAdjusted":I
    invoke-interface {p2, v0}, Lorg/jpos/iso/Interpreter;->getPackedLength(I)I

    move-result v1

    div-int v1, v0, v1

    mul-int/2addr v1, p1

    return v1

    .line 460
    .end local v0    # "lengthAdjusted":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private packLength([B)[B
    .locals 6
    .param p1, "valueBytes"    # [B

    .line 182
    array-length v0, p1

    .line 183
    .local v0, "length":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x7f

    if-le v0, v3, :cond_0

    .line 184
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->int2byte(I)[B

    move-result-object v3

    .line 185
    .local v3, "lengthBytesSuffix":[B
    array-length v4, v3

    add-int/2addr v4, v1

    new-array v4, v4, [B

    .line 186
    .local v4, "lengthBytes":[B
    array-length v5, v3

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 187
    array-length v5, v3

    invoke-static {v3, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    .end local v3    # "lengthBytesSuffix":[B
    goto :goto_0

    .line 189
    .end local v4    # "lengthBytes":[B
    :cond_0
    new-array v1, v1, [B

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    move-object v4, v1

    .line 191
    .restart local v4    # "lengthBytes":[B
    :goto_0
    iget-object v1, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->lengthInterpreter:Lorg/jpos/iso/BinaryInterpreter;

    array-length v3, v4

    invoke-interface {v1, v3}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v1

    new-array v1, v1, [B

    .line 192
    .local v1, "packedLengthBytes":[B
    iget-object v3, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->lengthInterpreter:Lorg/jpos/iso/BinaryInterpreter;

    invoke-interface {v3, v4, v1, v2}, Lorg/jpos/iso/BinaryInterpreter;->interpret([B[BI)V

    .line 193
    return-object v1
.end method

.method private packTLV(Lorg/jpos/tlv/ISOTaggedField;)[B
    .locals 8
    .param p1, "c"    # Lorg/jpos/tlv/ISOTaggedField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 153
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/tlv/ISOTaggedField;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->packValue(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v0
    :try_end_0
    .catch Lorg/jpos/emv/UnknownTagNumberException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .local v0, "rawValueBytes":[B
    nop

    .line 158
    iget-object v1, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->valueInterpreter:Lorg/jpos/iso/BinaryInterpreter;

    array-length v2, v0

    invoke-interface {v1, v2}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v1

    new-array v1, v1, [B

    .line 159
    .local v1, "valueBytes":[B
    iget-object v2, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->valueInterpreter:Lorg/jpos/iso/BinaryInterpreter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Lorg/jpos/iso/BinaryInterpreter;->interpret([B[BI)V

    .line 161
    invoke-direct {p0, p1}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->packTag(Lorg/jpos/tlv/ISOTaggedField;)[B

    move-result-object v2

    .line 162
    .local v2, "tagBytes":[B
    invoke-direct {p0, v1}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->packLength([B)[B

    move-result-object v4

    .line 164
    .local v4, "lengthBytes":[B
    array-length v5, v2

    array-length v6, v4

    add-int/2addr v5, v6

    array-length v6, v1

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 165
    .local v5, "b":[B
    array-length v6, v2

    invoke-static {v2, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    array-length v6, v2

    array-length v7, v4

    invoke-static {v4, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    array-length v6, v2

    array-length v7, v4

    add-int/2addr v6, v7

    array-length v7, v1

    invoke-static {v1, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    return-object v5

    .line 154
    .end local v0    # "rawValueBytes":[B
    .end local v1    # "valueBytes":[B
    .end local v2    # "tagBytes":[B
    .end local v4    # "lengthBytes":[B
    .end local v5    # "b":[B
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Lorg/jpos/emv/UnknownTagNumberException;
    new-instance v1, Lorg/jpos/iso/ISOException;

    invoke-direct {v1, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private packTag(Lorg/jpos/tlv/ISOTaggedField;)[B
    .locals 5
    .param p1, "c"    # Lorg/jpos/tlv/ISOTaggedField;

    .line 173
    invoke-virtual {p1}, Lorg/jpos/tlv/ISOTaggedField;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v1

    .line 175
    .local v1, "tagBytes":[B
    iget-object v2, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->tagInterpreter:Lorg/jpos/iso/BinaryInterpreter;

    array-length v3, v1

    invoke-interface {v2, v3}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v2

    new-array v2, v2, [B

    .line 176
    .local v2, "packedTagBytes":[B
    iget-object v3, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->tagInterpreter:Lorg/jpos/iso/BinaryInterpreter;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v2, v4}, Lorg/jpos/iso/BinaryInterpreter;->interpret([B[BI)V

    .line 177
    return-object v2
.end method

.method private unpackLength([BI)Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;
    .locals 7
    .param p1, "tlvData"    # [B
    .param p2, "offset"    # I

    .line 308
    iget-object v0, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->lengthInterpreter:Lorg/jpos/iso/BinaryInterpreter;

    array-length v1, p1

    add-int/lit8 v2, p2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    array-length v1, p1

    sub-int/2addr v1, p2

    .line 309
    :goto_0
    invoke-interface {v0, p1, p2, v1}, Lorg/jpos/iso/BinaryInterpreter;->uninterpret([BII)[B

    move-result-object v0

    .line 314
    .local v0, "tlvBytesHex":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    .line 317
    .local v2, "length":B
    and-int/lit16 v3, v2, 0x80

    const/16 v4, 0x80

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    .line 319
    and-int/lit8 v3, v2, 0x7f

    .line 320
    .local v3, "lengthOctetsCount":I
    add-int/lit8 v4, v3, 0x1

    .line 321
    .local v4, "lengthLength":I
    new-array v6, v3, [B

    .line 322
    .local v6, "lengthBytes":[B
    invoke-static {v0, v5, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    .end local v3    # "lengthOctetsCount":I
    goto :goto_1

    .line 325
    .end local v4    # "lengthLength":I
    .end local v6    # "lengthBytes":[B
    :cond_1
    const/4 v4, 0x1

    .line 326
    .restart local v4    # "lengthLength":I
    new-array v3, v5, [B

    aput-byte v2, v3, v1

    move-object v6, v3

    .line 328
    .restart local v6    # "lengthBytes":[B
    :goto_1
    new-instance v1, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;

    iget-object v3, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->lengthInterpreter:Lorg/jpos/iso/BinaryInterpreter;

    invoke-interface {v3, v4}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v3

    const/4 v5, 0x0

    invoke-direct {v1, p0, v6, v3, v5}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;-><init>(Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;[BILorg/jpos/tlv/packager/bertlv/BERTLVPackager$1;)V

    return-object v1
.end method

.method private unpackTag([BI)Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;
    .locals 8
    .param p1, "tlvData"    # [B
    .param p2, "offset"    # I

    .line 282
    iget-object v0, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->tagInterpreter:Lorg/jpos/iso/BinaryInterpreter;

    array-length v1, p1

    add-int/lit8 v2, p2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    array-length v1, p1

    sub-int/2addr v1, p2

    .line 283
    :goto_0
    invoke-interface {v0, p1, p2, v1}, Lorg/jpos/iso/BinaryInterpreter;->uninterpret([BII)[B

    move-result-object v0

    .line 288
    .local v0, "tlvBytesHex":[B
    const/4 v1, 0x0

    .line 290
    .local v1, "index":I
    aget-byte v2, v0, v1

    .line 291
    .local v2, "tagByte":B
    const/4 v3, 0x1

    .line 292
    .local v3, "tagLength":I
    and-int/lit8 v4, v2, 0x1f

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x1

    if-ne v4, v6, :cond_2

    .line 293
    add-int/lit8 v3, v3, 0x1

    .line 294
    add-int/lit8 v4, v1, 0x1

    aget-byte v2, v0, v4

    .line 295
    :goto_1
    and-int/lit16 v4, v2, 0x80

    const/16 v6, 0x80

    if-ne v4, v6, :cond_1

    .line 296
    add-int/lit8 v3, v3, 0x1

    .line 297
    add-int v4, v1, v3

    sub-int/2addr v4, v7

    aget-byte v2, v0, v4

    goto :goto_1

    .line 299
    :cond_1
    new-array v4, v3, [B

    .line 300
    .local v4, "tagBytes":[B
    array-length v6, v4

    invoke-static {v0, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 302
    .end local v4    # "tagBytes":[B
    :cond_2
    new-array v4, v7, [B

    aput-byte v2, v4, v5

    .line 304
    .restart local v4    # "tagBytes":[B
    :goto_2
    new-instance v5, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;

    iget-object v6, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->tagInterpreter:Lorg/jpos/iso/BinaryInterpreter;

    invoke-interface {v6, v3}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v5, p0, v4, v6, v7}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;-><init>(Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;[BILorg/jpos/tlv/packager/bertlv/BERTLVPackager$1;)V

    return-object v5
.end method

.method private unpackValue(Ljava/lang/String;[BII)Lorg/jpos/iso/ISOComponent;
    .locals 6
    .param p1, "tagNameHex"    # Ljava/lang/String;
    .param p2, "tlvData"    # [B
    .param p3, "subFieldNumber"    # I
    .param p4, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;,
            Lorg/jpos/emv/UnknownTagNumberException;
        }
    .end annotation

    .line 396
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 397
    .local v0, "tagNumber":I
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->getTagFormatMapper()Lorg/jpos/tlv/packager/bertlv/BERTLVFormatMapper;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jpos/tlv/packager/bertlv/BERTLVFormatMapper;->getFormat(Ljava/lang/Integer;)Lorg/jpos/tlv/TLVDataFormat;

    move-result-object v1

    .line 401
    .local v1, "dataFormat":Lorg/jpos/tlv/TLVDataFormat;
    sget-object v2, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$1;->$SwitchMap$org$jpos$tlv$TLVDataFormat:[I

    invoke-virtual {v1}, Lorg/jpos/tlv/TLVDataFormat;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 436
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown TLVDataFormat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 432
    :pswitch_0
    new-instance v2, Lorg/jpos/iso/ISOMsg;

    invoke-direct {v2, p3}, Lorg/jpos/iso/ISOMsg;-><init>(I)V

    .line 433
    .local v2, "value":Lorg/jpos/iso/ISOComponent;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, p2, v3}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BZ)I

    .line 434
    goto :goto_0

    .line 429
    .end local v2    # "value":Lorg/jpos/iso/ISOComponent;
    :pswitch_1
    new-instance v2, Lorg/jpos/iso/ISOBinaryField;

    invoke-direct {v2, p3, p2}, Lorg/jpos/iso/ISOBinaryField;-><init>(I[B)V

    .line 430
    .restart local v2    # "value":Lorg/jpos/iso/ISOComponent;
    goto :goto_0

    .line 423
    .end local v2    # "value":Lorg/jpos/iso/ISOComponent;
    :pswitch_2
    sget-object v2, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->asciiInterpreter:Lorg/jpos/iso/AsciiInterpreter;

    invoke-direct {p0, p4, v2}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->getUninterpretLength(ILorg/jpos/iso/Interpreter;)I

    move-result v4

    .line 424
    .local v4, "uninterpretLength":I
    invoke-virtual {v2, p2, v3, v4}, Lorg/jpos/iso/AsciiInterpreter;->uninterpret([BII)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "unpackedValue":Ljava/lang/String;
    new-instance v3, Lorg/jpos/iso/ISOField;

    invoke-direct {v3, p3, v2}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    .line 426
    .local v3, "value":Lorg/jpos/iso/ISOComponent;
    move-object v2, v3

    goto :goto_0

    .line 414
    .end local v2    # "unpackedValue":Ljava/lang/String;
    .end local v3    # "value":Lorg/jpos/iso/ISOComponent;
    .end local v4    # "uninterpretLength":I
    :pswitch_3
    sget-object v2, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->bcdInterpreterLeftPaddedZero:Lorg/jpos/iso/BCDInterpreter;

    invoke-direct {p0, p4, v2}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->getUninterpretLength(ILorg/jpos/iso/Interpreter;)I

    move-result v4

    .line 415
    .restart local v4    # "uninterpretLength":I
    invoke-virtual {v2, p2, v3, v4}, Lorg/jpos/iso/BCDInterpreter;->uninterpret([BII)Ljava/lang/String;

    move-result-object v2

    .line 416
    .restart local v2    # "unpackedValue":Ljava/lang/String;
    new-instance v3, Lorg/jpos/iso/ISOField;

    invoke-direct {v3, p3, v2}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    .line 417
    .restart local v3    # "value":Lorg/jpos/iso/ISOComponent;
    move-object v2, v3

    goto :goto_0

    .line 408
    .end local v2    # "unpackedValue":Ljava/lang/String;
    .end local v3    # "value":Lorg/jpos/iso/ISOComponent;
    .end local v4    # "uninterpretLength":I
    :pswitch_4
    sget-object v2, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->bcdInterpreterLeftPaddedZero:Lorg/jpos/iso/BCDInterpreter;

    invoke-direct {p0, p4, v2}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->getUninterpretLength(ILorg/jpos/iso/Interpreter;)I

    move-result v4

    .line 409
    .restart local v4    # "uninterpretLength":I
    invoke-virtual {v2, p2, v3, v4}, Lorg/jpos/iso/BCDInterpreter;->uninterpret([BII)Ljava/lang/String;

    move-result-object v2

    .line 410
    .restart local v2    # "unpackedValue":Ljava/lang/String;
    new-instance v3, Lorg/jpos/iso/ISOField;

    const/16 v5, 0x30

    invoke-static {v2, v5}, Lorg/jpos/iso/ISOUtil;->unPadLeft(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p3, v5}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    .line 411
    .restart local v3    # "value":Lorg/jpos/iso/ISOComponent;
    move-object v2, v3

    goto :goto_0

    .line 403
    .end local v2    # "unpackedValue":Ljava/lang/String;
    .end local v3    # "value":Lorg/jpos/iso/ISOComponent;
    .end local v4    # "uninterpretLength":I
    :pswitch_5
    sget-object v2, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->bcdInterpreterRightPaddedF:Lorg/jpos/iso/BCDInterpreter;

    invoke-direct {p0, p4, v2}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->getUninterpretLength(ILorg/jpos/iso/Interpreter;)I

    move-result v4

    .line 404
    .restart local v4    # "uninterpretLength":I
    invoke-virtual {v2, p2, v3, v4}, Lorg/jpos/iso/BCDInterpreter;->uninterpret([BII)Ljava/lang/String;

    move-result-object v2

    .line 405
    .restart local v2    # "unpackedValue":Ljava/lang/String;
    new-instance v3, Lorg/jpos/iso/ISOField;

    const/16 v5, 0x46

    invoke-static {v2, v5}, Lorg/jpos/iso/ISOUtil;->unPadRight(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p3, v5}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    .line 406
    .restart local v3    # "value":Lorg/jpos/iso/ISOComponent;
    move-object v2, v3

    .line 438
    .end local v3    # "value":Lorg/jpos/iso/ISOComponent;
    .end local v4    # "uninterpretLength":I
    .local v2, "value":Lorg/jpos/iso/ISOComponent;
    :goto_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected abstract getLengthInterpreter()Lorg/jpos/iso/BinaryInterpreter;
.end method

.method protected abstract getTagFormatMapper()Lorg/jpos/tlv/packager/bertlv/BERTLVFormatMapper;
.end method

.method protected abstract getTagInterpreter()Lorg/jpos/iso/BinaryInterpreter;
.end method

.method protected abstract getValueInterpreter()Lorg/jpos/iso/BinaryInterpreter;
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 3
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->getFirstField()I

    move-result v0

    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getMaxField()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->pack(Lorg/jpos/iso/ISOComponent;ZII)[B

    move-result-object v0

    return-object v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;ZII)[B
    .locals 8
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "nested"    # Z
    .param p3, "startIdx"    # I
    .param p4, "endIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 94
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "pack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 95
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 97
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v2

    .line 98
    .local v2, "fields":Ljava/util/Map;
    move v3, p3

    .local v3, "i":I
    :goto_0
    if-gt v3, p4, :cond_5

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/iso/ISOComponent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .local v4, "c":Lorg/jpos/iso/ISOComponent;
    if-eqz v4, :cond_4

    .line 103
    :try_start_2
    instance-of v5, v4, Lorg/jpos/tlv/ISOTaggedField;

    if-eqz v5, :cond_0

    .line 104
    move-object v5, v4

    check-cast v5, Lorg/jpos/tlv/ISOTaggedField;

    invoke-direct {p0, v5}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->packTLV(Lorg/jpos/tlv/ISOTaggedField;)[B

    move-result-object v5

    .local v5, "b":[B
    goto :goto_1

    .line 107
    .end local v5    # "b":[B
    :cond_0
    invoke-virtual {v4}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 108
    const/4 v5, 0x0

    new-array v5, v5, [B

    .restart local v5    # "b":[B
    goto :goto_1

    .line 109
    .end local v5    # "b":[B
    :cond_1
    if-nez p2, :cond_3

    if-eq v3, p3, :cond_2

    if-ne v3, p4, :cond_3

    :cond_2
    iget-object v5, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v5, v5

    if-le v5, v3, :cond_3

    iget-object v5, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v5, v5, v3

    if-eqz v5, :cond_3

    .line 111
    iget-object v5, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v5, v5, v3

    invoke-virtual {v5, v4}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v5

    .line 123
    .restart local v5    # "b":[B
    :goto_1
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 129
    .end local v5    # "b":[B
    goto :goto_2

    .line 113
    :cond_3
    new-instance v5, Lorg/jpos/iso/ISOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Field: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 117
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be packed. Either the object should be of type ISOTagField OR this should be the first or last sub-field and a packager should be configured for the same"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "fields":Ljava/util/Map;
    .end local v3    # "i":I
    .end local v4    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "nested":Z
    .end local p3    # "startIdx":I
    .end local p4    # "endIdx":I
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "fields":Ljava/util/Map;
    .restart local v3    # "i":I
    .restart local v4    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "nested":Z
    .restart local p3    # "startIdx":I
    .restart local p4    # "endIdx":I
    :catch_0
    move-exception v5

    .line 125
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error packing sub-field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v0, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 128
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "nested":Z
    .end local p3    # "startIdx":I
    .end local p4    # "endIdx":I
    throw v5

    .line 98
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "nested":Z
    .restart local p3    # "startIdx":I
    .restart local p4    # "endIdx":I
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 133
    .end local v3    # "i":I
    .end local v4    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 134
    .local v3, "d":[B
    iget-object v4, p0, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v4, :cond_6

    .line 135
    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    :cond_6
    nop

    .line 137
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Lorg/jpos/iso/ISOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 144
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 136
    return-object v3

    .line 95
    .end local v2    # "fields":Ljava/util/Map;
    .end local v3    # "d":[B
    :catchall_0
    move-exception v2

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "nested":Z
    .end local p3    # "startIdx":I
    .end local p4    # "endIdx":I
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 137
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "nested":Z
    .restart local p3    # "startIdx":I
    .restart local p4    # "endIdx":I
    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "nested":Z
    .end local p3    # "startIdx":I
    .end local p4    # "endIdx":I
    :goto_3
    throw v3
    :try_end_7
    .catch Lorg/jpos/iso/ISOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 144
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "nested":Z
    .restart local p3    # "startIdx":I
    .restart local p4    # "endIdx":I
    :catchall_3
    move-exception v1

    goto :goto_4

    .line 140
    :catch_1
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 142
    new-instance v2, Lorg/jpos/iso/ISOException;

    invoke-direct {v2, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "nested":Z
    .end local p3    # "startIdx":I
    .end local p4    # "endIdx":I
    throw v2

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "nested":Z
    .restart local p3    # "startIdx":I
    .restart local p4    # "endIdx":I
    :catch_2
    move-exception v1

    .line 138
    .local v1, "e":Lorg/jpos/iso/ISOException;
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 139
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "nested":Z
    .end local p3    # "startIdx":I
    .end local p4    # "endIdx":I
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 144
    .end local v1    # "e":Lorg/jpos/iso/ISOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "nested":Z
    .restart local p3    # "startIdx":I
    .restart local p4    # "endIdx":I
    :goto_4
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 145
    throw v1
.end method

.method protected packValue(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)[B
    .locals 8
    .param p1, "tagNameHex"    # Ljava/lang/String;
    .param p2, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;,
            Lorg/jpos/emv/UnknownTagNumberException;
        }
    .end annotation

    .line 333
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 334
    .local v1, "tagNumber":I
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->getTagFormatMapper()Lorg/jpos/tlv/packager/bertlv/BERTLVFormatMapper;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jpos/tlv/packager/bertlv/BERTLVFormatMapper;->getFormat(Ljava/lang/Integer;)Lorg/jpos/tlv/TLVDataFormat;

    move-result-object v2

    .line 338
    .local v2, "dataFormat":Lorg/jpos/tlv/TLVDataFormat;
    invoke-virtual {p2}, Lorg/jpos/iso/ISOComponent;->getComposite()Lorg/jpos/iso/ISOComponent;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 339
    invoke-virtual {p2}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 340
    invoke-virtual {p2}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 343
    .local v3, "tagValue":Ljava/lang/String;
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lorg/jpos/emv/EMVStandardTagType;->isProprietaryTag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "length":I
    goto :goto_0

    .line 346
    .end local v0    # "length":I
    :cond_0
    invoke-static {p1}, Lorg/jpos/emv/EMVStandardTagType;->forHexCode(Ljava/lang/String;)Lorg/jpos/emv/EMVStandardTagType;

    move-result-object v0

    .line 347
    .local v0, "tagType":Lorg/jpos/emv/EMVStandardTagType;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Lorg/jpos/emv/EMVStandardTagType;->getDataLength()Lorg/jpos/emv/EMVTagType$DataLength;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jpos/emv/EMVTagType$DataLength;->getMinLength()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v5

    .line 349
    .local v0, "length":I
    :goto_0
    sget-object v5, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$1;->$SwitchMap$org$jpos$tlv$TLVDataFormat:[I

    invoke-virtual {v2}, Lorg/jpos/tlv/TLVDataFormat;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 379
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown TLVDataFormat: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 374
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "CONSTRUCTED tag value should be a composite ISOComponent"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 370
    :pswitch_1
    sget-object v5, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->literalInterpreter:Lorg/jpos/iso/LiteralInterpreter;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/jpos/iso/LiteralInterpreter;->getPackedLength(I)I

    move-result v6

    new-array v6, v6, [B

    .line 371
    .local v6, "packedValue":[B
    invoke-virtual {v5, v3, v6, v4}, Lorg/jpos/iso/LiteralInterpreter;->interpret(Ljava/lang/String;[BI)V

    .line 372
    goto :goto_1

    .line 365
    .end local v6    # "packedValue":[B
    :pswitch_2
    sget-object v5, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->asciiInterpreter:Lorg/jpos/iso/AsciiInterpreter;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/jpos/iso/AsciiInterpreter;->getPackedLength(I)I

    move-result v6

    new-array v6, v6, [B

    .line 366
    .restart local v6    # "packedValue":[B
    invoke-virtual {v5, v3, v6, v4}, Lorg/jpos/iso/AsciiInterpreter;->interpret(Ljava/lang/String;[BI)V

    .line 367
    goto :goto_1

    .line 357
    .end local v6    # "packedValue":[B
    :pswitch_3
    sget-object v5, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->bcdInterpreterLeftPaddedZero:Lorg/jpos/iso/BCDInterpreter;

    invoke-virtual {v5, v0}, Lorg/jpos/iso/BCDInterpreter;->getPackedLength(I)I

    move-result v6

    new-array v6, v6, [B

    .line 358
    .restart local v6    # "packedValue":[B
    invoke-static {v3, v0}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6, v4}, Lorg/jpos/iso/BCDInterpreter;->interpret(Ljava/lang/String;[BI)V

    .line 359
    goto :goto_1

    .line 351
    .end local v6    # "packedValue":[B
    :pswitch_4
    sget-object v5, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->bcdInterpreterRightPaddedF:Lorg/jpos/iso/BCDInterpreter;

    invoke-virtual {v5, v0}, Lorg/jpos/iso/BCDInterpreter;->getPackedLength(I)I

    move-result v6

    new-array v6, v6, [B

    .line 352
    .restart local v6    # "packedValue":[B
    invoke-virtual {v5, v3, v6, v4}, Lorg/jpos/iso/BCDInterpreter;->interpret(Ljava/lang/String;[BI)V

    .line 353
    nop

    .line 381
    .end local v0    # "length":I
    :goto_1
    goto :goto_3

    .line 382
    .end local v3    # "tagValue":Ljava/lang/String;
    .end local v6    # "packedValue":[B
    :cond_1
    invoke-virtual {p2}, Lorg/jpos/iso/ISOComponent;->getBytes()[B

    move-result-object v6

    .restart local v6    # "packedValue":[B
    goto :goto_3

    .line 385
    .end local v6    # "packedValue":[B
    :cond_2
    sget-object v0, Lorg/jpos/tlv/TLVDataFormat;->CONSTRUCTED:Lorg/jpos/tlv/TLVDataFormat;

    invoke-virtual {v0, v2}, Lorg/jpos/tlv/TLVDataFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lorg/jpos/tlv/TLVDataFormat;->PROPRIETARY:Lorg/jpos/tlv/TLVDataFormat;

    invoke-virtual {v0, v2}, Lorg/jpos/tlv/TLVDataFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 388
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Composite ISOComponent should be used only for CONSTRUCTED data type"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_4
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p2}, Lorg/jpos/iso/ISOComponent;->getMaxField()I

    move-result v3

    invoke-virtual {p0, p2, v0, v4, v3}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->pack(Lorg/jpos/iso/ISOComponent;ZII)[B

    move-result-object v6

    .line 391
    .restart local v6    # "packedValue":[B
    :goto_3
    return-object v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[B)I
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 200
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BZ)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Lorg/jpos/iso/ISOException;

    invoke-direct {v1, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BZ)I
    .locals 19
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "nested"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 207
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v4, "unpack"

    invoke-direct {v0, v1, v4}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    move-object v4, v0

    .line 209
    .local v4, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/jpos/iso/ISOComponent;->getComposite()Lorg/jpos/iso/ISOComponent;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 211
    array-length v0, v3
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 212
    nop

    .line 277
    invoke-static {v4}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 212
    return v5

    .line 213
    :cond_0
    :try_start_1
    iget-object v0, v1, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v0, :cond_1

    .line 214
    invoke-static/range {p2 .. p2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 216
    :cond_1
    array-length v0, v3

    .line 218
    .local v0, "tlvDataLength":I
    const/4 v6, 0x0

    .line 219
    .local v6, "consumed":I
    const/4 v7, 0x1

    .line 220
    .local v7, "subFieldNumber":I
    const/4 v8, 0x1

    if-nez p3, :cond_3

    iget-object v9, v1, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v9, v9

    if-le v9, v8, :cond_3

    .line 221
    iget-object v9, v1, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v9, v9, v8

    .line 222
    .local v9, "packager":Lorg/jpos/iso/ISOFieldPackager;
    if-eqz v9, :cond_2

    .line 223
    invoke-virtual {v9, v8}, Lorg/jpos/iso/ISOFieldPackager;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v10

    .line 224
    .local v10, "subField":Lorg/jpos/iso/ISOComponent;
    invoke-virtual {v9, v10, v3, v6}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v11

    add-int/2addr v6, v11

    .line 225
    invoke-virtual {v2, v10}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 227
    .end local v10    # "subField":Lorg/jpos/iso/ISOComponent;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 230
    .end local v9    # "packager":Lorg/jpos/iso/ISOFieldPackager;
    :cond_3
    :goto_0
    if-ge v6, v0, :cond_6

    .line 232
    if-nez p3, :cond_4

    iget-object v9, v1, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v9, v9

    if-le v9, v8, :cond_4

    iget-object v9, v1, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    iget-object v10, v1, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v10, v10

    sub-int/2addr v10, v8

    aget-object v9, v9, v10

    move-object v10, v9

    .local v10, "packager":Lorg/jpos/iso/ISOFieldPackager;
    if-eqz v9, :cond_4

    .line 233
    invoke-virtual {v10}, Lorg/jpos/iso/ISOFieldPackager;->getLength()I

    move-result v9

    sub-int v11, v0, v6

    if-ne v9, v11, :cond_4

    .line 234
    iget-object v9, v1, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v9, v9

    sub-int/2addr v9, v8

    invoke-virtual {v10, v9}, Lorg/jpos/iso/ISOFieldPackager;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v9

    .line 235
    .local v9, "subField":Lorg/jpos/iso/ISOComponent;
    invoke-virtual {v10, v9, v3, v6}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v11

    add-int/2addr v6, v11

    .line 236
    invoke-virtual {v2, v9}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 237
    nop

    .end local v9    # "subField":Lorg/jpos/iso/ISOComponent;
    add-int/lit8 v7, v7, 0x1

    .line 238
    goto :goto_0

    .line 240
    .end local v10    # "packager":Lorg/jpos/iso/ISOFieldPackager;
    :cond_4
    invoke-direct {v1, v3, v6}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->unpackTag([BI)Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;

    move-result-object v9

    .line 241
    .local v9, "tagUnpackResult":Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;
    invoke-static {v9}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;->access$000(Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;)I

    move-result v10

    add-int/2addr v6, v10

    .line 242
    invoke-static {v9}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;->access$100(Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;)[B

    move-result-object v10

    .line 243
    .local v10, "tagBytes":[B
    invoke-static {v10}, Lorg/jpos/iso/ISOUtil;->byte2hex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 244
    .local v11, "tag":Ljava/lang/String;
    invoke-direct {v1, v3, v6}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->unpackLength([BI)Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;

    move-result-object v12

    .line 245
    .local v12, "lengthUnpackResult":Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;
    invoke-static {v12}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;->access$000(Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;)I

    move-result v13

    add-int/2addr v6, v13

    .line 246
    invoke-static {v12}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;->access$100(Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;)[B

    move-result-object v13

    invoke-static {v13}, Lorg/jpos/iso/ISOUtil;->byte2int([B)I

    move-result v13

    .line 249
    .local v13, "length":I
    new-array v14, v13, [B

    .line 251
    .local v14, "value":[B
    if-lez v13, :cond_5

    .line 252
    array-length v15, v14

    invoke-static {v3, v6, v14, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    :cond_5
    iget-object v15, v1, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->valueInterpreter:Lorg/jpos/iso/BinaryInterpreter;

    invoke-direct {v1, v13, v15}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->getUninterpretLength(ILorg/jpos/iso/BinaryInterpreter;)I

    move-result v15

    .line 256
    .local v15, "uninterpretLength":I
    iget-object v8, v1, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->valueInterpreter:Lorg/jpos/iso/BinaryInterpreter;

    .line 257
    invoke-interface {v8, v14, v5, v15}, Lorg/jpos/iso/BinaryInterpreter;->uninterpret([BII)[B

    move-result-object v8

    .line 259
    .local v8, "rawValueBytes":[B
    invoke-direct {v1, v11, v8, v7, v13}, Lorg/jpos/tlv/packager/bertlv/BERTLVPackager;->unpackValue(Ljava/lang/String;[BII)Lorg/jpos/iso/ISOComponent;

    move-result-object v16

    move-object/from16 v17, v16

    .line 260
    .local v17, "tlvSubFieldData":Lorg/jpos/iso/ISOComponent;
    add-int/2addr v6, v13

    .line 261
    new-instance v5, Lorg/jpos/tlv/ISOTaggedField;

    move/from16 v18, v0

    move-object/from16 v0, v17

    .end local v17    # "tlvSubFieldData":Lorg/jpos/iso/ISOComponent;
    .local v0, "tlvSubFieldData":Lorg/jpos/iso/ISOComponent;
    .local v18, "tlvDataLength":I
    invoke-direct {v5, v11, v0}, Lorg/jpos/tlv/ISOTaggedField;-><init>(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)V

    .line 262
    .local v5, "tlv":Lorg/jpos/tlv/ISOTaggedField;
    invoke-virtual {v2, v5}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 263
    nop

    .end local v0    # "tlvSubFieldData":Lorg/jpos/iso/ISOComponent;
    .end local v5    # "tlv":Lorg/jpos/tlv/ISOTaggedField;
    .end local v8    # "rawValueBytes":[B
    .end local v9    # "tagUnpackResult":Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;
    .end local v10    # "tagBytes":[B
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "lengthUnpackResult":Lorg/jpos/tlv/packager/bertlv/BERTLVPackager$UnpackResult;
    .end local v13    # "length":I
    .end local v14    # "value":[B
    .end local v15    # "uninterpretLength":I
    add-int/lit8 v7, v7, 0x1

    .line 264
    move/from16 v0, v18

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto/16 :goto_0

    .line 266
    .end local v18    # "tlvDataLength":I
    .local v0, "tlvDataLength":I
    :cond_6
    move/from16 v18, v0

    .end local v0    # "tlvDataLength":I
    .restart local v18    # "tlvDataLength":I
    array-length v0, v3

    if-eq v0, v6, :cond_7

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING: unpack len="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " consumed="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :cond_7
    nop

    .line 277
    invoke-static {v4}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 269
    return v6

    .line 210
    .end local v6    # "consumed":I
    .end local v7    # "subFieldNumber":I
    .end local v18    # "tlvDataLength":I
    :cond_8
    :try_start_2
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v5, "Can\'t call packager on non Composite"

    invoke-direct {v0, v5}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    .end local p3    # "nested":Z
    throw v0
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    .restart local v4    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    .restart local p3    # "nested":Z
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 275
    new-instance v5, Lorg/jpos/iso/ISOException;

    invoke-direct {v5, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    .end local v4    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    .end local p3    # "nested":Z
    throw v5

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    .restart local p3    # "nested":Z
    :catch_1
    move-exception v0

    .line 271
    .local v0, "e":Lorg/jpos/iso/ISOException;
    invoke-virtual {v4, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 272
    nop

    .end local v4    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    .end local p3    # "nested":Z
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    .end local v0    # "e":Lorg/jpos/iso/ISOException;
    .restart local v4    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    .restart local p3    # "nested":Z
    :goto_1
    invoke-static {v4}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 278
    throw v0
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 443
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call to unpack(ISOComponent m, InputStream in) was not expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
