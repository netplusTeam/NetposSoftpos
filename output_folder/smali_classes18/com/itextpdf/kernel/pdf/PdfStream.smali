.class public Lcom/itextpdf/kernel/pdf/PdfStream;
.super Lcom/itextpdf/kernel/pdf/PdfDictionary;
.source "PdfStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x72a129cd02177b4dL


# instance fields
.field protected compressionLevel:I

.field private inputStream:Ljava/io/InputStream;

.field private length:I

.field private offset:J

.field protected outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 160
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [B

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 161
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "compressionLevel"    # I

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([BI)V

    .line 154
    return-void
.end method

.method constructor <init>(JLcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2
    .param p1, "offset"    # J
    .param p3, "keys"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 171
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->length:I

    .line 172
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->compressionLevel:I

    .line 173
    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->offset:J

    .line 174
    invoke-virtual {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfStream;->putAll(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 175
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 176
    .local v0, "length":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-nez v0, :cond_0

    .line 177
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->length:I

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->length:I

    .line 181
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .line 144
    const/high16 v0, -0x80000000

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/io/InputStream;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "compressionLevel"    # I

    .line 115
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->length:I

    .line 116
    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 120
    if-eqz p2, :cond_0

    .line 123
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    .line 124
    iput p3, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->compressionLevel:I

    .line 125
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 126
    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input stream in PdfStream constructor can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Cannot create pdfstream by InputStream without PdfDocument."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 163
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->length:I

    .line 164
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 165
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->compressionLevel:I

    .line 166
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 167
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .line 94
    const/high16 v0, -0x80000000

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([BI)V

    .line 95
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "compressionLevel"    # I

    .line 77
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->length:I

    .line 78
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 79
    iput p2, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->compressionLevel:I

    .line 80
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 81
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    new-instance v1, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    array-length v2, p1

    invoke-direct {v1, v2}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 82
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    new-instance v1, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 86
    :goto_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    instance-of v0, v0, Ljava/io/Serializable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    .line 406
    .local v0, "backup":Ljava/io/InputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    .line 407
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "PdfStream contains not null input stream. It\'s content will be lost in serialized object."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 408
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    goto :goto_1

    .line 403
    .end local v0    # "backup":Ljava/io/InputStream;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 411
    :goto_1
    return-void
.end method


# virtual methods
.method protected copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 5
    .param p1, "from"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 366
    invoke-super {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 367
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 368
    .local v0, "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 369
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes(Z)[B

    move-result-object v1

    .line 371
    .local v1, "bytes":[B
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    nop

    .line 375
    return-void

    .line 372
    :catch_0
    move-exception v2

    .line 373
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    const-string v4, "Cannot copy object content."

    invoke-direct {v3, v4, v2, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v3

    .line 368
    .end local v1    # "bytes":[B
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Try to copy the PdfStream that has been just created."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getBytes()[B
    .locals 1

    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Z)[B
    .locals 5
    .param p1, "decoded"    # Z

    .line 241
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 244
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 245
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "PdfStream was created by InputStream.getBytes() always returns null in this case"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    return-object v0

    .line 249
    :cond_0
    const/4 v0, 0x0

    .line 250
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    const-string v2, "Cannot get PdfStream bytes."

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 251
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    if-eqz v1, :cond_2

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 255
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object v0, v1

    .line 256
    if-eqz p1, :cond_1

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    invoke-static {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->decodeBytes([BLcom/itextpdf/kernel/pdf/PdfDictionary;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 261
    :cond_1
    goto :goto_0

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v3, v2, v1, p0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v3

    .line 251
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Invalid OutputStream: ByteArrayByteArrayOutputStream expected"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 262
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 265
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v1

    .line 266
    .local v1, "reader":Lcom/itextpdf/kernel/pdf/PdfReader;
    if-eqz v1, :cond_4

    .line 268
    :try_start_1
    invoke-virtual {v1, p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readStreamBytes(Lcom/itextpdf/kernel/pdf/PdfStream;Z)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 271
    goto :goto_0

    .line 269
    :catch_1
    move-exception v3

    .line 270
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v4, v2, v3, p0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v4

    .line 274
    .end local v1    # "reader":Lcom/itextpdf/kernel/pdf/PdfReader;
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_4
    :goto_0
    return-object v0

    .line 242
    .end local v0    # "bytes":[B
    :cond_5
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Cannot operate with the flushed PdfStream."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompressionLevel()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->compressionLevel:I

    return v0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->length:I

    return v0
.end method

.method protected getOffset()J
    .locals 2

    .line 351
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->offset:J

    return-wide v0
.end method

.method public getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    return-object v0
.end method

.method public getType()B
    .locals 1

    .line 214
    const/16 v0, 0x9

    return v0
.end method

.method protected initOutputStream(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;

    .line 378
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 379
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 380
    :cond_1
    return-void
.end method

.method protected newInstance()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 347
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    return-object v0
.end method

.method protected releaseContent()V
    .locals 3

    .line 386
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->releaseContent()V

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->close()V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_0
    nop

    .line 395
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCompressionLevel(I)V
    .locals 0
    .param p1, "compressionLevel"    # I

    .line 209
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->compressionLevel:I

    .line 210
    return-void
.end method

.method public setData([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->setData([BZ)V

    .line 285
    return-void
.end method

.method public setData([BZ)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "append"    # Z

    .line 300
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 303
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_8

    .line 307
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 308
    .local v0, "outputStreamIsUninitialized":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 309
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    new-instance v2, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v2}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 312
    :cond_1
    if-eqz p2, :cond_5

    .line 313
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    if-nez v0, :cond_4

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 314
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 320
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v1
    :try_end_0
    .catch Lcom/itextpdf/kernel/PdfException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .local v1, "oldBytes":[B
    nop

    .line 324
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    array-length v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->assignBytes([BI)V

    goto :goto_1

    .line 321
    .end local v1    # "oldBytes":[B
    :catch_0
    move-exception v1

    .line 322
    .local v1, "ex":Lcom/itextpdf/kernel/PdfException;
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "Cannot read a stream in order to append new bytes."

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 327
    .end local v1    # "ex":Lcom/itextpdf/kernel/PdfException;
    :cond_4
    :goto_1
    if-eqz p1, :cond_7

    .line 328
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_2

    .line 331
    :cond_5
    if-eqz p1, :cond_6

    .line 332
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    array-length v2, p1

    invoke-virtual {v1, p1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->assignBytes([BI)V

    goto :goto_2

    .line 334
    :cond_6
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->reset()V

    .line 338
    :cond_7
    :goto_2
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->offset:J

    .line 341
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 342
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 343
    return-void

    .line 304
    .end local v0    # "outputStreamIsUninitialized":Z
    :cond_8
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Cannot set data to PdfStream which was created by InputStream."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_9
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Cannot operate with the flushed PdfStream."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected updateLength(I)V
    .locals 0
    .param p1, "length"    # I

    .line 361
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;->length:I

    .line 362
    return-void
.end method
