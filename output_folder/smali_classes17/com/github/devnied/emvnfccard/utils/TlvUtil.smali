.class public final Lcom/github/devnied/emvnfccard/utils/TlvUtil;
.super Ljava/lang/Object;
.source "TlvUtil.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/github/devnied/emvnfccard/utils/TlvUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    return-void
.end method

.method public static getFormattedTagAndLength([BI)Ljava/lang/String;
    .locals 10
    .param p0, "data"    # [B
    .param p1, "indentLength"    # I

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getSpaces(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "indent":Ljava/lang/String;
    new-instance v2, Lnet/sf/scuba/tlv/TLVInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    .local v2, "stream":Lnet/sf/scuba/tlv/TLVInputStream;
    const/4 v3, 0x1

    .line 71
    .local v3, "firstLine":Z
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lnet/sf/scuba/tlv/TLVInputStream;->available()I

    move-result v4

    if-lez v4, :cond_1

    .line 72
    if-eqz v3, :cond_0

    .line 73
    const/4 v3, 0x0

    goto :goto_1

    .line 75
    :cond_0
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v2}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    move-result v4

    invoke-static {v4}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->searchTagById(I)Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v4

    .line 80
    .local v4, "tag":Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    invoke-virtual {v2}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    move-result v5

    .line 82
    .local v5, "length":I
    invoke-interface {v4}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag;->getTagBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->prettyPrintHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v6, " -- "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-interface {v4}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    nop

    .end local v4    # "tag":Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    .end local v5    # "length":I
    goto :goto_0

    .line 91
    :cond_1
    :goto_2
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 92
    goto :goto_3

    .line 91
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 88
    :catch_0
    move-exception v4

    .line 89
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v5, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 93
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 91
    :goto_4
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 92
    throw v4
.end method

.method public static getLength(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;",
            ">;)I"
        }
    .end annotation

    .line 449
    .local p0, "pList":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;>;"
    const/4 v0, 0x0

    .line 450
    .local v0, "ret":I
    if-eqz p0, :cond_0

    .line 451
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;

    .line 452
    .local v2, "tl":Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;
    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getLength()I

    move-result v3

    add-int/2addr v0, v3

    .line 453
    .end local v2    # "tl":Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;
    goto :goto_0

    .line 455
    :cond_0
    return v0
.end method

.method public static getNextTLV(Lnet/sf/scuba/tlv/TLVInputStream;)Lcom/github/devnied/emvnfccard/iso7816emv/TLV;
    .locals 7
    .param p0, "stream"    # Lnet/sf/scuba/tlv/TLVInputStream;

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "tlv":Lcom/github/devnied/emvnfccard/iso7816emv/TLV;
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/scuba/tlv/TLVInputStream;->available()I

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .local v1, "left":I
    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 101
    nop

    .line 113
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 101
    return-object v0

    .line 103
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    move-result v2

    invoke-static {v2}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->searchTagById(I)Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v2

    .line 104
    .local v2, "tag":Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    invoke-virtual {p0}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    move-result v3

    .line 105
    .local v3, "length":I
    invoke-virtual {p0}, Lnet/sf/scuba/tlv/TLVInputStream;->available()I

    move-result v4

    if-lt v4, v3, :cond_1

    .line 106
    new-instance v4, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;

    invoke-static {v3}, Lnet/sf/scuba/tlv/TLVUtil;->getLengthAsBytes(I)[B

    move-result-object v5

    invoke-virtual {p0}, Lnet/sf/scuba/tlv/TLVInputStream;->readValue()[B

    move-result-object v6

    invoke-direct {v4, v2, v3, v5, v6}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;-><init>(Lcom/github/devnied/emvnfccard/iso7816emv/ITag;I[B[B)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    .line 113
    .end local v1    # "left":I
    .end local v2    # "tag":Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    .end local v3    # "length":I
    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 114
    goto :goto_1

    .line 113
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v2, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 108
    :catch_1
    move-exception v1

    .line 109
    .local v1, "eof":Ljava/io/EOFException;
    sget-object v2, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "eof":Ljava/io/EOFException;
    goto :goto_0

    .line 115
    :goto_1
    return-object v0

    .line 113
    :goto_2
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 114
    throw v1
.end method

.method public static getSafePrintChars([B)Ljava/lang/String;
    .locals 2
    .param p0, "byteArray"    # [B

    .line 416
    if-nez p0, :cond_0

    .line 417
    const-string v0, ""

    return-object v0

    .line 419
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getSafePrintChars([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSafePrintChars([BII)Ljava/lang/String;
    .locals 4
    .param p0, "byteArray"    # [B
    .param p1, "startPos"    # I
    .param p2, "length"    # I

    .line 423
    if-nez p0, :cond_0

    .line 424
    const-string v0, ""

    return-object v0

    .line 426
    :cond_0
    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_3

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .local v0, "buf":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_2

    .line 432
    aget-byte v2, p0, v1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    aget-byte v2, p0, v1

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_1

    .line 433
    aget-byte v2, p0, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 435
    :cond_1
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 427
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPos("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")+length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > byteArray.length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSpaces(I)Ljava/lang/String;
    .locals 1
    .param p0, "length"    # I

    .line 387
    const-string v0, ""

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTagValueAsString(Lcom/github/devnied/emvnfccard/iso7816emv/ITag;[B)Ljava/lang/String;
    .locals 3
    .param p0, "tag"    # Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    .param p1, "value"    # [B

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "buf":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/github/devnied/emvnfccard/utils/TlvUtil$1;->$SwitchMap$com$github$devnied$emvnfccard$enums$TagValueTypeEnum:[I

    invoke-interface {p0}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag;->getTagValueType()Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "="

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 146
    :pswitch_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    goto :goto_0

    .line 142
    :pswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-static {p1}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getSafePrintChars([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    goto :goto_0

    .line 139
    :pswitch_2
    const-string v1, "BINARY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    goto :goto_0

    .line 136
    :pswitch_3
    const-string v1, "NUMERIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    goto :goto_0

    .line 132
    :pswitch_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    nop

    .line 152
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B
    .locals 5
    .param p0, "pData"    # [B
    .param p1, "pTag"    # [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "ret":[B
    if-eqz p0, :cond_4

    .line 281
    new-instance v1, Lnet/sf/scuba/tlv/TLVInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    .line 284
    .local v1, "stream":Lnet/sf/scuba/tlv/TLVInputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lnet/sf/scuba/tlv/TLVInputStream;->available()I

    move-result v2

    if-lez v2, :cond_3

    .line 286
    invoke-static {v1}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getNextTLV(Lnet/sf/scuba/tlv/TLVInputStream;)Lcom/github/devnied/emvnfccard/iso7816emv/TLV;

    move-result-object v2

    .line 287
    .local v2, "tlv":Lcom/github/devnied/emvnfccard/iso7816emv/TLV;
    if-nez v2, :cond_0

    .line 288
    goto :goto_1

    .line 290
    :cond_0
    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getValueBytes()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 291
    return-object v3

    .line 292
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v3

    invoke-interface {v3}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 293
    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getValueBytes()[B

    move-result-object v3

    invoke-static {v3, p1}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    .line 294
    if-eqz v0, :cond_2

    .line 295
    goto :goto_1

    .line 299
    .end local v2    # "tlv":Lcom/github/devnied/emvnfccard/iso7816emv/TLV;
    :cond_2
    goto :goto_0

    .line 303
    :cond_3
    :goto_1
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 304
    goto :goto_3

    .line 303
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 300
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 303
    :goto_2
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 304
    throw v2

    .line 307
    .end local v1    # "stream":Lnet/sf/scuba/tlv/TLVInputStream;
    :cond_4
    :goto_3
    return-object v0
.end method

.method public static getlistTLV([BLcom/github/devnied/emvnfccard/iso7816emv/ITag;Z)Ljava/util/List;
    .locals 5
    .param p0, "pData"    # [B
    .param p1, "pTag"    # Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    .param p2, "pAdd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/github/devnied/emvnfccard/iso7816emv/ITag;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/github/devnied/emvnfccard/iso7816emv/TLV;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/iso7816emv/TLV;>;"
    new-instance v1, Lnet/sf/scuba/tlv/TLVInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    .line 209
    .local v1, "stream":Lnet/sf/scuba/tlv/TLVInputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lnet/sf/scuba/tlv/TLVInputStream;->available()I

    move-result v2

    if-lez v2, :cond_4

    .line 211
    invoke-static {v1}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getNextTLV(Lnet/sf/scuba/tlv/TLVInputStream;)Lcom/github/devnied/emvnfccard/iso7816emv/TLV;

    move-result-object v2

    .line 212
    .local v2, "tlv":Lcom/github/devnied/emvnfccard/iso7816emv/TLV;
    if-nez v2, :cond_0

    .line 213
    goto :goto_3

    .line 215
    :cond_0
    if-eqz p2, :cond_1

    .line 216
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 217
    :cond_1
    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v3

    invoke-interface {v3}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 218
    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getValueBytes()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v4

    if-ne v4, p1, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-static {v3, p1, v4}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getlistTLV([BLcom/github/devnied/emvnfccard/iso7816emv/ITag;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    .end local v2    # "tlv":Lcom/github/devnied/emvnfccard/iso7816emv/TLV;
    :cond_3
    :goto_2
    goto :goto_0

    .line 224
    :cond_4
    :goto_3
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 225
    goto :goto_4

    .line 224
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v3, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 227
    :goto_4
    return-object v0

    .line 224
    :goto_5
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 225
    throw v2
.end method

.method public static varargs getlistTLV([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)Ljava/util/List;
    .locals 5
    .param p0, "pData"    # [B
    .param p1, "pTag"    # [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[",
            "Lcom/github/devnied/emvnfccard/iso7816emv/ITag;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/devnied/emvnfccard/iso7816emv/TLV;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/iso7816emv/TLV;>;"
    new-instance v1, Lnet/sf/scuba/tlv/TLVInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    .line 246
    .local v1, "stream":Lnet/sf/scuba/tlv/TLVInputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lnet/sf/scuba/tlv/TLVInputStream;->available()I

    move-result v2

    if-lez v2, :cond_3

    .line 248
    invoke-static {v1}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getNextTLV(Lnet/sf/scuba/tlv/TLVInputStream;)Lcom/github/devnied/emvnfccard/iso7816emv/TLV;

    move-result-object v2

    .line 249
    .local v2, "tlv":Lcom/github/devnied/emvnfccard/iso7816emv/TLV;
    if-nez v2, :cond_0

    .line 250
    goto :goto_2

    .line 252
    :cond_0
    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    :cond_1
    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v3

    invoke-interface {v3}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getValueBytes()[B

    move-result-object v3

    invoke-static {v3, p1}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getlistTLV([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .end local v2    # "tlv":Lcom/github/devnied/emvnfccard/iso7816emv/TLV;
    :cond_2
    :goto_1
    goto :goto_0

    .line 261
    :cond_3
    :goto_2
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 262
    goto :goto_3

    .line 261
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v3, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 264
    :goto_3
    return-object v0

    .line 261
    :goto_4
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 262
    throw v2
.end method

.method public static parseTagAndLength([B)Ljava/util/List;
    .locals 5
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "tagAndLengthList":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;>;"
    if-eqz p0, :cond_2

    .line 165
    new-instance v1, Lnet/sf/scuba/tlv/TLVInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    .line 168
    .local v1, "stream":Lnet/sf/scuba/tlv/TLVInputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lnet/sf/scuba/tlv/TLVInputStream;->available()I

    move-result v2

    if-lez v2, :cond_1

    .line 169
    invoke-virtual {v1}, Lnet/sf/scuba/tlv/TLVInputStream;->available()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 173
    invoke-virtual {v1}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    move-result v2

    invoke-static {v2}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->searchTagById(I)Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v2

    .line 174
    .local v2, "tag":Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    invoke-virtual {v1}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    move-result v3

    .line 176
    .local v3, "tagValueLength":I
    new-instance v4, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;

    invoke-direct {v4, v2, v3}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;-><init>(Lcom/github/devnied/emvnfccard/iso7816emv/ITag;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    nop

    .end local v2    # "tag":Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    .end local v3    # "tagValueLength":I
    goto :goto_0

    .line 170
    :cond_0
    new-instance v2, Lcom/github/devnied/emvnfccard/exception/TlvException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data length < 2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/scuba/tlv/TLVInputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/github/devnied/emvnfccard/exception/TlvException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tagAndLengthList":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;>;"
    .end local v1    # "stream":Lnet/sf/scuba/tlv/TLVInputStream;
    .end local p0    # "data":[B
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .restart local v0    # "tagAndLengthList":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;>;"
    .restart local v1    # "stream":Lnet/sf/scuba/tlv/TLVInputStream;
    .restart local p0    # "data":[B
    :cond_1
    :goto_1
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 182
    goto :goto_3

    .line 181
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v3, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 181
    :goto_2
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 182
    throw v2

    .line 184
    .end local v1    # "stream":Lnet/sf/scuba/tlv/TLVInputStream;
    :cond_2
    :goto_3
    return-object v0
.end method

.method public static prettyPrintAPDUResponse([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 188
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->prettyPrintAPDUResponse([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prettyPrintAPDUResponse([BI)Ljava/lang/String;
    .locals 12
    .param p0, "data"    # [B
    .param p1, "indentLength"    # I

    .line 311
    const-string v0, "\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .local v1, "buf":Ljava/lang/StringBuilder;
    new-instance v2, Lnet/sf/scuba/tlv/TLVInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    .line 315
    .local v2, "stream":Lnet/sf/scuba/tlv/TLVInputStream;
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Lnet/sf/scuba/tlv/TLVInputStream;->available()I

    move-result v4

    if-lez v4, :cond_5

    .line 316
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v2}, Lnet/sf/scuba/tlv/TLVInputStream;->available()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/github/devnied/emvnfccard/exception/TlvException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, " -- "

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 318
    :try_start_1
    invoke-virtual {v2, v3}, Lnet/sf/scuba/tlv/TLVInputStream;->mark(I)V

    .line 319
    new-array v4, v6, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/github/devnied/emvnfccard/exception/TlvException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    .local v4, "value":[B
    :try_start_2
    invoke-virtual {v2, v4}, Lnet/sf/scuba/tlv/TLVInputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/github/devnied/emvnfccard/exception/TlvException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    goto :goto_1

    .line 322
    :catch_0
    move-exception v6

    .line 324
    :goto_1
    :try_start_3
    invoke-static {v4}, Lcom/github/devnied/emvnfccard/enums/SwEnum;->getSW([B)Lcom/github/devnied/emvnfccard/enums/SwEnum;

    move-result-object v6

    .line 325
    .local v6, "sw":Lcom/github/devnied/emvnfccard/enums/SwEnum;
    if-eqz v6, :cond_0

    .line 326
    invoke-static {v3}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getSpaces(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-static {v4}, Lfr/devnied/bitlib/BytesUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v6}, Lcom/github/devnied/emvnfccard/enums/SwEnum;->getDetail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {v2}, Lnet/sf/scuba/tlv/TLVInputStream;->reset()V

    .line 334
    .end local v4    # "value":[B
    .end local v6    # "sw":Lcom/github/devnied/emvnfccard/enums/SwEnum;
    :cond_1
    invoke-static {p1}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getSpaces(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-static {v2}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getNextTLV(Lnet/sf/scuba/tlv/TLVInputStream;)Lcom/github/devnied/emvnfccard/iso7816emv/TLV;

    move-result-object v4

    .line 338
    .local v4, "tlv":Lcom/github/devnied/emvnfccard/iso7816emv/TLV;
    if-nez v4, :cond_2

    .line 339
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 340
    sget-object v0, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "TLV format error"

    invoke-interface {v0, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 341
    goto/16 :goto_3

    .line 344
    :cond_2
    invoke-virtual {v4}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getTagBytes()[B

    move-result-object v6

    .line 345
    .local v6, "tagBytes":[B
    invoke-virtual {v4}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getRawEncodedLengthBytes()[B

    move-result-object v7

    .line 346
    .local v7, "lengthBytes":[B
    invoke-virtual {v4}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getValueBytes()[B

    move-result-object v8

    .line 348
    .local v8, "valueBytes":[B
    invoke-virtual {v4}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v9

    .line 350
    .local v9, "tag":Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    invoke-static {v6}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->prettyPrintHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-static {v7}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->prettyPrintHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-interface {v9}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    array-length v5, v7

    array-length v10, v6

    add-int/2addr v5, v10

    mul-int/lit8 v5, v5, 0x3

    .line 358
    .local v5, "extraIndent":I
    invoke-interface {v9}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag;->isConstructed()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 361
    add-int v10, p1, v5

    invoke-static {v8, v10}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->prettyPrintAPDUResponse([BI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 363
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-interface {v9}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag;->getTagValueType()Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    move-result-object v10

    sget-object v11, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;->DOL:Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    if-ne v10, v11, :cond_4

    .line 365
    add-int v10, p1, v5

    invoke-static {v8, v10}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getFormattedTagAndLength([BI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 367
    :cond_4
    add-int v10, p1, v5

    invoke-static {v10}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getSpaces(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-static {v8}, Lfr/devnied/bitlib/BytesUtils;->bytesToStringNoSpace([B)Ljava/lang/String;

    move-result-object v10

    add-int v11, p1, v5

    invoke-static {v10, v11}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->prettyPrintHex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v10, " ("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-static {v9, v8}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getTagValueAsString(Lcom/github/devnied/emvnfccard/iso7816emv/ITag;[B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/github/devnied/emvnfccard/exception/TlvException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 374
    .end local v4    # "tlv":Lcom/github/devnied/emvnfccard/iso7816emv/TLV;
    .end local v5    # "extraIndent":I
    .end local v6    # "tagBytes":[B
    .end local v7    # "lengthBytes":[B
    .end local v8    # "valueBytes":[B
    .end local v9    # "tag":Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    :goto_2
    goto/16 :goto_0

    .line 381
    :cond_5
    :goto_3
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 382
    goto :goto_4

    .line 381
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 377
    :catch_1
    move-exception v0

    .line 378
    .local v0, "exce":Lcom/github/devnied/emvnfccard/exception/TlvException;
    :try_start_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 379
    sget-object v3, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Lcom/github/devnied/emvnfccard/exception/TlvException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "exce":Lcom/github/devnied/emvnfccard/exception/TlvException;
    goto :goto_3

    .line 375
    :catch_2
    move-exception v0

    .line 376
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 383
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 381
    :goto_5
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 382
    throw v0
.end method

.method public static prettyPrintHex(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "indent"    # I

    .line 391
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->prettyPrintHex(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prettyPrintHex(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "indent"    # I
    .param p2, "wrapLines"    # Z

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 402
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 403
    .local v2, "c":C
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    add-int/lit8 v3, v1, 0x1

    .line 406
    .local v3, "nextPos":I
    if-eqz p2, :cond_0

    rem-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 407
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getSpaces(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 408
    :cond_0
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 409
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .end local v2    # "c":C
    .end local v3    # "nextPos":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static prettyPrintHex([B)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B

    .line 395
    invoke-static {p0}, Lfr/devnied/bitlib/BytesUtils;->bytesToStringNoSpace([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->prettyPrintHex(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static searchTagById(I)Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    .locals 1
    .param p0, "tagId"    # I

    .line 60
    invoke-static {p0}, Lnet/sf/scuba/tlv/TLVUtil;->getTagAsBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->getNotNull([B)Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v0

    return-object v0
.end method
