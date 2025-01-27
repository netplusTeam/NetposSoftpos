.class public Lcom/itextpdf/kernel/pdf/PdfString;
.super Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;
.source "PdfString.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x56c5cfbd107cea2L


# instance fields
.field private decryptInfoGen:I

.field private decryptInfoNum:I

.field private decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

.field protected encoding:Ljava/lang/String;

.field protected hexWriting:Z

.field protected value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 69
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    .line 84
    if-eqz p1, :cond_0

    .line 85
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfString;->encoding:Ljava/lang/String;

    .line 87
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "content"    # [B

    .line 94
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    .line 95
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 97
    .local v1, "str":Ljava/lang/StringBuilder;
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p1, v0

    .line 98
    .local v3, "b":B
    and-int/lit16 v4, v3, 0xff

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .end local v3    # "b":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    .line 101
    .end local v1    # "str":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 102
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    .line 104
    :goto_1
    return-void
.end method

.method protected constructor <init>([BZ)V
    .locals 1
    .param p1, "content"    # [B
    .param p2, "hexWriting"    # Z

    .line 113
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>([B)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    .line 114
    iput-boolean p2, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    .line 115
    return-void
.end method


# virtual methods
.method protected copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 2
    .param p1, "from"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 321
    invoke-super {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 322
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfString;

    .line 323
    .local v0, "string":Lcom/itextpdf/kernel/pdf/PdfString;
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    .line 324
    iget-boolean v1, v0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    .line 325
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    .line 326
    iget v1, v0, Lcom/itextpdf/kernel/pdf/PdfString;->decryptInfoNum:I

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryptInfoNum:I

    .line 327
    iget v1, v0, Lcom/itextpdf/kernel/pdf/PdfString;->decryptInfoGen:I

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryptInfoGen:I

    .line 328
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfString;->encoding:Ljava/lang/String;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->encoding:Ljava/lang/String;

    .line 329
    return-void
.end method

.method protected decodeContent()[B
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->content:[B

    iget-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    invoke-static {v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->decodeStringContent([BZ)[B

    move-result-object v0

    .line 287
    .local v0, "decodedBytes":[B
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v1, :cond_0

    const/16 v1, 0x200

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfString;->checkState(S)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iget v2, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryptInfoNum:I

    iget v3, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryptInfoGen:I

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setHashKeyForNextObject(II)V

    .line 289
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->decryptByteArray([B)[B

    move-result-object v0

    .line 291
    :cond_0
    return-object v0
.end method

.method protected encodeBytes([B)[B
    .locals 4
    .param p1, "bytes"    # [B

    .line 302
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    if-eqz v0, :cond_1

    .line 303
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    .line 304
    .local v0, "buf":Lcom/itextpdf/io/source/ByteBuffer;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 305
    .local v3, "b":B
    invoke-virtual {v0, v3}, Lcom/itextpdf/io/source/ByteBuffer;->appendHex(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 304
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v1

    return-object v1

    .line 309
    .end local v0    # "buf":Lcom/itextpdf/io/source/ByteBuffer;
    :cond_1
    invoke-static {p1}, Lcom/itextpdf/io/util/StreamUtil;->createBufferedEscapedString([B)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v0

    .line 310
    .restart local v0    # "buf":Lcom/itextpdf/io/source/ByteBuffer;
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray(II)[B

    move-result-object v1

    return-object v1
.end method

.method protected encrypt(Lcom/itextpdf/kernel/pdf/PdfEncryption;)Z
    .locals 2
    .param p1, "encrypt"    # Lcom/itextpdf/kernel/pdf/PdfEncryption;

    .line 269
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfString;->checkState(S)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 270
    return v1

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eq p1, v0, :cond_2

    .line 273
    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->generateValue()V

    .line 276
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isEmbeddedFilesOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptByteArray([B)[B

    move-result-object v0

    .line 278
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfString;->encodeBytes([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->content:[B

    .line 279
    const/4 v1, 0x1

    return v1

    .line 282
    .end local v0    # "b":[B
    :cond_2
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 194
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 195
    return v0

    .line 196
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 198
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfString;

    .line 199
    .local v2, "that":Lcom/itextpdf/kernel/pdf/PdfString;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "v1":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "v2":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 202
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getEncoding()Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "e1":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfString;->getEncoding()Ljava/lang/String;

    move-result-object v6

    .line 204
    .local v6, "e2":Ljava/lang/String;
    if-nez v5, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    if-eqz v5, :cond_4

    .line 205
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 206
    :cond_3
    return v0

    .line 209
    .end local v5    # "e1":Ljava/lang/String;
    .end local v6    # "e2":Ljava/lang/String;
    :cond_4
    return v1

    .line 197
    .end local v2    # "that":Lcom/itextpdf/kernel/pdf/PdfString;
    .end local v3    # "v1":Ljava/lang/String;
    .end local v4    # "v2":Ljava/lang/String;
    :cond_5
    :goto_0
    return v1
.end method

.method protected generateContent()V
    .locals 1

    .line 259
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfString;->encodeBytes([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->content:[B

    .line 260
    return-void
.end method

.method protected generateValue()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->content:[B

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->decodeContent()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v0, :cond_0

    .line 252
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    .line 253
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->content:[B

    .line 255
    :cond_0
    return-void

    .line 249
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No byte[] content to generate value"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getType()B
    .locals 1

    .line 123
    const/16 v0, 0xa

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->generateValue()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValueBytes()[B
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->generateValue()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "UnicodeBig"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/io/font/PdfEncodings;->isPdfDocEncoding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    const-string v1, "PDF"

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->encoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 223
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "v":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "e":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 226
    .local v3, "result":I
    :goto_0
    mul-int/lit8 v4, v3, 0x1f

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v4, v2

    return v4
.end method

.method public isHexWriting()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    return v0
.end method

.method public markAsUnencryptedObject()V
    .locals 1

    .line 239
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfString;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 240
    return-void
.end method

.method protected newInstance()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 316
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>()V

    return-object v0
.end method

.method setDecryption(IILcom/itextpdf/kernel/pdf/PdfEncryption;)V
    .locals 0
    .param p1, "decryptInfoNum"    # I
    .param p2, "decryptInfoGen"    # I
    .param p3, "decryption"    # Lcom/itextpdf/kernel/pdf/PdfEncryption;

    .line 243
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryptInfoNum:I

    .line 244
    iput p2, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryptInfoGen:I

    .line 245
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfString;->decryption:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    .line 246
    return-void
.end method

.method public setHexWriting(Z)Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 1
    .param p1, "hexWriting"    # Z

    .line 131
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->generateValue()V

    .line 134
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->content:[B

    .line 135
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfString;->hexWriting:Z

    .line 136
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->decodeContent()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnicodeString()Ljava/lang/String;
    .locals 6

    .line 161
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfString;->content:[B

    if-nez v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->generateContent()V

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->decodeContent()[B

    move-result-object v0

    .line 168
    .local v0, "b":[B
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lt v1, v4, :cond_2

    aget-byte v1, v0, v3

    const/4 v5, -0x2

    if-ne v1, v5, :cond_2

    aget-byte v1, v0, v2

    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    .line 169
    const-string v1, "UnicodeBig"

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 170
    :cond_2
    array-length v1, v0

    const/4 v5, 0x3

    if-lt v1, v5, :cond_3

    aget-byte v1, v0, v3

    const/16 v3, -0x11

    if-ne v1, v3, :cond_3

    aget-byte v1, v0, v2

    const/16 v2, -0x45

    if-ne v1, v2, :cond_3

    aget-byte v1, v0, v4

    const/16 v2, -0x41

    if-ne v1, v2, :cond_3

    .line 171
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 173
    :cond_3
    const-string v1, "PDF"

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
