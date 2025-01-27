.class public Lcom/itextpdf/kernel/pdf/PdfOutputStream;
.super Lcom/itextpdf/io/source/OutputStream;
.source "PdfOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/io/source/OutputStream<",
        "Lcom/itextpdf/kernel/pdf/PdfOutputStream;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final closeDict:[B

.field private static final endIndirect:[B

.field private static final endIndirectWithZeroGenNr:[B

.field private static final endstream:[B

.field private static final openDict:[B

.field private static final serialVersionUID:J = -0x79b873ddfbee4b0L

.field private static final stream:[B


# instance fields
.field protected crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

.field protected document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private duplicateContentBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    nop

    .line 64
    const-string/jumbo v0, "stream\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->stream:[B

    .line 65
    const-string v0, "\nendstream"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->endstream:[B

    .line 66
    const-string v0, "<<"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->openDict:[B

    .line 67
    const-string v0, ">>"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->closeDict:[B

    .line 68
    const-string v0, " R"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->endIndirect:[B

    .line 69
    const-string v0, " 0 R"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->endIndirectWithZeroGenNr:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 89
    invoke-direct {p0, p1}, Lcom/itextpdf/io/source/OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->duplicateContentBuffer:[B

    .line 77
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 90
    return-void
.end method

.method private isNotMetadataPdfStream(Lcom/itextpdf/kernel/pdf/PdfStream;)Z
    .locals 2
    .param p1, "pdfStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 277
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 278
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 277
    :goto_1
    return v0
.end method

.method private isXRefStream(Lcom/itextpdf/kernel/pdf/PdfStream;)Z
    .locals 2
    .param p1, "pdfStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 282
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XRef:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 547
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 548
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->duplicateContentBuffer:[B

    if-eqz v0, :cond_0

    .line 549
    new-instance v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->outputStream:Ljava/io/OutputStream;

    .line 550
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->duplicateContentBuffer:[B

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write([B)V

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->duplicateContentBuffer:[B

    .line 553
    :cond_0
    return-void
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 4
    .param p1, "pdfArray"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 165
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 167
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 169
    .local v1, "value":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    move-object v3, v2

    .local v3, "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v2, :cond_0

    .line 170
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    goto :goto_1

    .line 172
    :cond_0
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 174
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    .line 166
    .end local v1    # "value":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v3    # "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "i":I
    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 178
    return-void
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 7
    .param p1, "pdfDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 181
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->openDict:[B

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 182
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 183
    .local v1, "key":Lcom/itextpdf/kernel/pdf/PdfName;
    const/4 v2, 0x0

    .line 184
    .local v2, "isAlreadyWriteSpace":Z
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 185
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    .line 186
    .local v4, "value":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-nez v4, :cond_0

    .line 187
    const-class v5, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-static {v5}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 188
    .local v5, "logger":Lorg/slf4j/Logger;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    const-string v3, "Invalid key value: key {0} has null value."

    invoke-static {v3, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 189
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    .line 191
    .end local v5    # "logger":Lorg/slf4j/Logger;
    :cond_0
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1

    .line 192
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1

    .line 193
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    .line 194
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v3

    const/4 v5, 0x7

    if-eq v3, v5, :cond_1

    .line 195
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_1

    const/16 v3, 0x40

    .line 196
    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    :cond_1
    const/4 v2, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    .line 202
    :cond_2
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    move-object v5, v3

    .local v5, "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v3, :cond_4

    .line 203
    if-nez v2, :cond_3

    .line 204
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    .line 206
    :cond_3
    invoke-direct {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    goto :goto_1

    .line 208
    :cond_4
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 210
    .end local v1    # "key":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v2    # "isAlreadyWriteSpace":Z
    .end local v4    # "value":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v5    # "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :goto_1
    goto :goto_0

    .line 211
    :cond_5
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->closeDict:[B

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 212
    return-void
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V
    .locals 5
    .param p1, "indirectReference"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 215
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Pdf indirect object belongs to other PDF document. Copy object to current pdf document."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 220
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "Flushed object contains indirect reference which is free. Null object will be written instead."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 221
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;)V

    .line 222
    .end local v0    # "logger":Lorg/slf4j/Logger;
    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    if-nez v1, :cond_4

    const/16 v1, 0x8

    .line 223
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 224
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getIndex()I

    move-result v1

    if-gez v1, :cond_4

    .line 225
    :cond_3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 226
    .restart local v0    # "logger":Lorg/slf4j/Logger;
    const-string v1, "Flushed object contains indirect reference which doesn\'t refer to any other object. Null object will be written instead."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 227
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;)V

    .line 228
    .end local v0    # "logger":Lorg/slf4j/Logger;
    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v0

    if-nez v0, :cond_5

    .line 229
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->endIndirectWithZeroGenNr:[B

    .line 230
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_1

    .line 232
    :cond_5
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 233
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 234
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->endIndirect:[B

    .line 235
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 237
    :goto_1
    return-void
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfLiteral;)V
    .locals 2
    .param p1, "literal"    # Lcom/itextpdf/kernel/pdf/PdfLiteral;

    .line 244
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getCurrentPos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->setPosition(J)V

    .line 245
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->getInternalContent()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 246
    return-void
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 1
    .param p1, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 262
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 263
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfName;->getInternalContent()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 264
    return-void
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfNumber;)V
    .locals 2
    .param p1, "pdfNumber"    # Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 267
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getInternalContent()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDoubleNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    .line 274
    :goto_0
    return-void
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;)V
    .locals 1
    .param p1, "pdfPrimitive"    # Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;

    .line 240
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->getInternalContent()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 241
    return-void
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 12
    .param p1, "pdfStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 287
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getCompressionLevel()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 288
    .local v0, "userDefinedCompression":Z
    :goto_0
    if-nez v0, :cond_2

    .line 289
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getCompressionLevel()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    .line 292
    .local v1, "defaultCompressionLevel":I
    :goto_1
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->setCompressionLevel(I)V

    .line 294
    .end local v1    # "defaultCompressionLevel":I
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getCompressionLevel()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    .line 295
    .local v1, "toCompress":Z
    :goto_2
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->isNotMetadataPdfStream(Lcom/itextpdf/kernel/pdf/PdfStream;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    .line 297
    .local v2, "allowCompression":Z
    :goto_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 298
    move-object v4, p0

    .line 299
    .local v4, "fout":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 300
    .local v5, "def":Lcom/itextpdf/io/source/DeflaterOutputStream;
    const/4 v6, 0x0

    .line 301
    .local v6, "ose":Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isEmbeddedFilesOnly()Z

    move-result v7

    if-nez v7, :cond_5

    .line 302
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v7, v4}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;

    move-result-object v7

    move-object v6, v7

    move-object v4, v7

    .line 304
    :cond_5
    if-eqz v1, :cond_7

    if-nez v2, :cond_6

    if-eqz v0, :cond_7

    .line 305
    :cond_6
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->updateCompressionFilter(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 306
    new-instance v7, Lcom/itextpdf/io/source/DeflaterOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getCompressionLevel()I

    move-result v8

    const v9, 0x8000

    invoke-direct {v7, v4, v8, v9}, Lcom/itextpdf/io/source/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;II)V

    move-object v5, v7

    move-object v4, v7

    .line 308
    :cond_7
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 309
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->stream:[B

    invoke-virtual {p0, v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 310
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getCurrentPos()J

    move-result-wide v7

    .line 311
    .local v7, "beginStreamContent":J
    const/16 v9, 0x1060

    new-array v9, v9, [B

    .line 313
    .local v9, "buf":[B
    :goto_4
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .line 314
    .local v10, "n":I
    if-gtz v10, :cond_a

    .line 315
    nop

    .line 318
    .end local v10    # "n":I
    if-eqz v5, :cond_8

    .line 319
    invoke-virtual {v5}, Lcom/itextpdf/io/source/DeflaterOutputStream;->finish()V

    .line 321
    :cond_8
    if-eqz v6, :cond_9

    .line 322
    invoke-virtual {v6}, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;->finish()V

    .line 324
    :cond_9
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    .line 325
    .local v3, "length":Lcom/itextpdf/kernel/pdf/PdfNumber;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getCurrentPos()J

    move-result-wide v10

    sub-long/2addr v10, v7

    long-to-int v10, v10

    invoke-virtual {v3, v10}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(I)V

    .line 326
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->updateLength(I)V

    .line 327
    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->endstream:[B

    invoke-virtual {p0, v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 328
    nop

    .end local v3    # "length":Lcom/itextpdf/kernel/pdf/PdfNumber;
    .end local v4    # "fout":Ljava/io/OutputStream;
    .end local v5    # "def":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .end local v6    # "ose":Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
    .end local v7    # "beginStreamContent":J
    .end local v9    # "buf":[B
    goto/16 :goto_7

    .line 316
    .restart local v4    # "fout":Ljava/io/OutputStream;
    .restart local v5    # "def":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .restart local v6    # "ose":Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
    .restart local v7    # "beginStreamContent":J
    .restart local v9    # "buf":[B
    .restart local v10    # "n":I
    :cond_a
    invoke-virtual {v4, v9, v3, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 317
    .end local v10    # "n":I
    goto :goto_4

    .line 331
    .end local v4    # "fout":Ljava/io/OutputStream;
    .end local v5    # "def":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .end local v6    # "ose":Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
    .end local v7    # "beginStreamContent":J
    .end local v9    # "buf":[B
    :cond_b
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v4

    if-nez v4, :cond_d

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 334
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfReader;->readStreamBytes(Lcom/itextpdf/kernel/pdf/PdfStream;Z)[B

    move-result-object v3

    .line 335
    .local v3, "bytes":[B
    if-eqz v0, :cond_c

    .line 336
    invoke-virtual {p0, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->decodeFlateBytes(Lcom/itextpdf/kernel/pdf/PdfStream;[B)[B

    move-result-object v4

    move-object v3, v4

    .line 338
    :cond_c
    new-instance v4, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    array-length v5, v3

    invoke-direct {v4, v5}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->initOutputStream(Ljava/io/OutputStream;)V

    .line 339
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write([B)V

    .line 341
    .end local v3    # "bytes":[B
    :cond_d
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_15

    .line 344
    const-string v3, "Error in outputStream"

    if-eqz v1, :cond_11

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->containsFlateFilter(Lcom/itextpdf/kernel/pdf/PdfStream;)Z

    move-result v4

    if-nez v4, :cond_11

    if-nez v2, :cond_e

    if-eqz v0, :cond_11

    .line 346
    :cond_e
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->updateCompressionFilter(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 347
    new-instance v4, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v4}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    .line 348
    .local v4, "byteArrayStream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    new-instance v5, Lcom/itextpdf/io/source/DeflaterOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getCompressionLevel()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/itextpdf/io/source/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 349
    .local v5, "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    instance-of v6, p1, Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    if-eqz v6, :cond_f

    .line 350
    move-object v3, p1

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    .line 351
    .local v3, "objectStream":Lcom/itextpdf/kernel/pdf/PdfObjectStream;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getIndexStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v6, v5}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 352
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v6, v5}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 353
    .end local v3    # "objectStream":Lcom/itextpdf/kernel/pdf/PdfObjectStream;
    goto :goto_5

    .line 354
    :cond_f
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 355
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v3, v5}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 357
    :goto_5
    invoke-virtual {v5}, Lcom/itextpdf/io/source/DeflaterOutputStream;->finish()V

    .line 358
    .end local v5    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    goto :goto_6

    .line 354
    .restart local v5    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    :cond_10
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "userDefinedCompression":Z
    .end local v1    # "toCompress":Z
    .end local v2    # "allowCompression":Z
    .end local p1    # "pdfStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    throw v6

    .line 359
    .end local v4    # "byteArrayStream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .end local v5    # "zip":Lcom/itextpdf/io/source/DeflaterOutputStream;
    .restart local v0    # "userDefinedCompression":Z
    .restart local v1    # "toCompress":Z
    .restart local v2    # "allowCompression":Z
    .restart local p1    # "pdfStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :cond_11
    instance-of v4, p1, Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    if-eqz v4, :cond_12

    .line 360
    move-object v3, p1

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    .line 361
    .restart local v3    # "objectStream":Lcom/itextpdf/kernel/pdf/PdfObjectStream;
    new-instance v4, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v4}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    .line 362
    .restart local v4    # "byteArrayStream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getIndexStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v5, v4}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 363
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v5, v4}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 364
    .end local v3    # "objectStream":Lcom/itextpdf/kernel/pdf/PdfObjectStream;
    goto :goto_6

    .line 365
    .end local v4    # "byteArrayStream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    :cond_12
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 366
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    move-object v4, v3

    .line 369
    .restart local v4    # "byteArrayStream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    :goto_6
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->checkEncryption(Lcom/itextpdf/kernel/pdf/PdfStream;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 370
    new-instance v3, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v3}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    .line 371
    .local v3, "encodedStream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;

    move-result-object v5

    .line 372
    .local v5, "ose":Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
    invoke-virtual {v4, v5}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 373
    invoke-virtual {v5}, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;->finish()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 374
    move-object v4, v3

    .line 378
    .end local v3    # "encodedStream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    .end local v5    # "ose":Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
    :cond_13
    nop

    .line 379
    :try_start_2
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v3, v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 380
    invoke-virtual {v4}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->updateLength(I)V

    .line 381
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 382
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->stream:[B

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 383
    invoke-virtual {v4, p0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 384
    invoke-virtual {v4}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->close()V

    .line 385
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->endstream:[B

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 389
    .end local v0    # "userDefinedCompression":Z
    .end local v1    # "toCompress":Z
    .end local v2    # "allowCompression":Z
    .end local v4    # "byteArrayStream":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    :goto_7
    nop

    .line 390
    return-void

    .line 365
    .restart local v0    # "userDefinedCompression":Z
    .restart local v1    # "toCompress":Z
    .restart local v2    # "allowCompression":Z
    :cond_14
    :try_start_3
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "userDefinedCompression":Z
    .end local v1    # "toCompress":Z
    .end local v2    # "allowCompression":Z
    .end local p1    # "pdfStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 376
    .restart local v0    # "userDefinedCompression":Z
    .restart local v1    # "toCompress":Z
    .restart local v2    # "allowCompression":Z
    .restart local p1    # "pdfStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :catch_0
    move-exception v3

    .line 377
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_4
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "I/O exception."

    invoke-direct {v4, v5, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "pdfStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    throw v4

    .line 341
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local p1    # "pdfStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :cond_15
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "PdfStream lost OutputStream"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "pdfStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 387
    .end local v0    # "userDefinedCompression":Z
    .end local v1    # "toCompress":Z
    .end local v2    # "allowCompression":Z
    .restart local p1    # "pdfStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :catch_1
    move-exception v0

    .line 388
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Cannot write to PdfStream."

    invoke-direct {v1, v2, v0, p1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v1
.end method

.method private write(Lcom/itextpdf/kernel/pdf/PdfString;)V
    .locals 1
    .param p1, "pdfString"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 249
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfString;->encrypt(Lcom/itextpdf/kernel/pdf/PdfEncryption;)Z

    .line 250
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->isHexWriting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 252
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getInternalContent()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 253
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    goto :goto_0

    .line 255
    :cond_0
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 256
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getInternalContent()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 257
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 259
    :goto_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->outputStream:Ljava/io/OutputStream;

    .line 563
    .local v0, "tempOutputStream":Ljava/io/OutputStream;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v1, v1, Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->outputStream:Ljava/io/OutputStream;

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->duplicateContentBuffer:[B

    .line 566
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->outputStream:Ljava/io/OutputStream;

    .line 567
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 568
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->outputStream:Ljava/io/OutputStream;

    .line 569
    return-void
.end method


# virtual methods
.method protected checkEncryption(Lcom/itextpdf/kernel/pdf/PdfStream;)Z
    .locals 6
    .param p1, "pdfStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 393
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isEmbeddedFilesOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->isXRefStream(Lcom/itextpdf/kernel/pdf/PdfStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    return v1

    .line 399
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 400
    .local v0, "filter":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v0, :cond_3

    .line 401
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    return v1

    .line 403
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v3

    if-ne v3, v2, :cond_3

    .line 404
    move-object v3, v0

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 405
    .local v3, "filters":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 406
    return v1

    .line 410
    .end local v3    # "filters":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_3
    return v2

    .line 394
    .end local v0    # "filter":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_4
    :goto_0
    return v1
.end method

.method protected containsFlateFilter(Lcom/itextpdf/kernel/pdf/PdfStream;)Z
    .locals 4
    .param p1, "pdfStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 415
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 416
    .local v0, "filter":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 418
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FlateDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    return v3

    .line 421
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    if-ne v1, v3, :cond_1

    .line 422
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FlateDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->contains(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    return v3

    .line 425
    :cond_1
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "filter is not a name or array."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method protected decodeFlateBytes(Lcom/itextpdf/kernel/pdf/PdfStream;[B)[B
    .locals 10
    .param p1, "stream"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p2, "bytes"    # [B

    .line 461
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 462
    .local v0, "filterObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-nez v0, :cond_0

    .line 463
    return-object p2

    .line 467
    :cond_0
    const/4 v1, 0x0

    .line 468
    .local v1, "filtersArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    instance-of v2, v0, Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 469
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    .local v2, "filterName":Lcom/itextpdf/kernel/pdf/PdfName;
    goto :goto_0

    .line 470
    .end local v2    # "filterName":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_1
    instance-of v2, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v2, :cond_d

    .line 471
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 472
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    .line 477
    .restart local v2    # "filterName":Lcom/itextpdf/kernel/pdf/PdfName;
    :goto_0
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->FlateDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 478
    return-object p2

    .line 483
    :cond_2
    const/4 v4, 0x0

    .line 484
    .local v4, "decodeParamsArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    .line 485
    .local v5, "decodeParamsObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v6, 0x1

    if-nez v5, :cond_3

    .line 486
    const/4 v7, 0x0

    .local v7, "decodeParams":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    goto :goto_1

    .line 487
    .end local v7    # "decodeParams":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_3
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    .line 488
    move-object v7, v5

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .restart local v7    # "decodeParams":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    goto :goto_1

    .line 489
    .end local v7    # "decodeParams":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_4
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v7

    if-ne v7, v6, :cond_c

    .line 490
    move-object v4, v5

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 491
    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    .line 497
    .restart local v7    # "decodeParams":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :goto_1
    invoke-static {p2, v6}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->flateDecode([BZ)[B

    move-result-object v8

    .line 498
    .local v8, "res":[B
    if-nez v8, :cond_5

    .line 499
    invoke-static {p2, v3}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->flateDecode([BZ)[B

    move-result-object v8

    .line 500
    :cond_5
    invoke-static {v8, v7}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->decodePredictor([BLcom/itextpdf/kernel/pdf/PdfObject;)[B

    move-result-object p2

    .line 504
    const/4 v0, 0x0

    .line 505
    if-eqz v1, :cond_7

    .line 506
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    .line 507
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v9

    if-ne v9, v6, :cond_6

    .line 508
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    goto :goto_2

    .line 509
    :cond_6
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 510
    move-object v0, v1

    .line 514
    :cond_7
    :goto_2
    const/4 v5, 0x0

    .line 515
    if-eqz v4, :cond_9

    .line 516
    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    .line 517
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v9

    if-ne v9, v6, :cond_8

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v6

    const/4 v9, 0x7

    if-eq v6, v9, :cond_8

    .line 518
    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    goto :goto_3

    .line 519
    :cond_8
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 520
    move-object v5, v4

    .line 524
    :cond_9
    :goto_3
    if-nez v0, :cond_a

    .line 525
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_4

    .line 527
    :cond_a
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 530
    :goto_4
    if-nez v5, :cond_b

    .line 531
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_5

    .line 533
    :cond_b
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3, v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 536
    :goto_5
    return-object p2

    .line 493
    .end local v7    # "decodeParams":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v8    # "res":[B
    :cond_c
    new-instance v7, Lcom/itextpdf/kernel/PdfException;

    const-string v8, "Decode parameter type {0} is not supported."

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-virtual {v7, v6}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v3

    throw v3

    .line 474
    .end local v2    # "filterName":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v4    # "decodeParamsArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v5    # "decodeParamsObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_d
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "filter is not a name or array."

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected updateCompressionFilter(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 7
    .param p1, "pdfStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 432
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 433
    .local v0, "filter":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-nez v0, :cond_0

    .line 434
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FlateDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_2

    .line 436
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 437
    .local v1, "filters":Lcom/itextpdf/kernel/pdf/PdfArray;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FlateDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 438
    instance-of v2, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v2, :cond_1

    .line 439
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->addAll(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    goto :goto_0

    .line 441
    :cond_1
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 443
    :goto_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 444
    .local v2, "decodeParms":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v2, :cond_4

    .line 445
    instance-of v3, v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v3, :cond_2

    .line 446
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 447
    .local v3, "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfNull;-><init>()V

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 448
    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 449
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 450
    .end local v3    # "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    goto :goto_1

    :cond_2
    instance-of v3, v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 451
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfNull;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(ILcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 453
    :cond_3
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "Decode parameter type {0} is not supported."

    invoke-direct {v3, v5}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v3

    throw v3

    .line 456
    :cond_4
    :goto_1
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 458
    .end local v1    # "filters":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v2    # "decodeParms":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_2
    return-void
.end method

.method public write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    .locals 2
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 100
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 102
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    .line 104
    :cond_0
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 129
    goto :goto_0

    .line 134
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_0

    .line 131
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfNumber;)V

    .line 132
    goto :goto_0

    .line 118
    :pswitch_3
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 119
    goto :goto_0

    .line 115
    :pswitch_4
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    .line 116
    goto :goto_0

    .line 125
    :pswitch_5
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfLiteral;)V

    .line 126
    goto :goto_0

    .line 112
    :pswitch_6
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 113
    goto :goto_0

    .line 122
    :pswitch_7
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;)V

    .line 123
    goto :goto_0

    .line 109
    :pswitch_8
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 110
    nop

    .line 137
    :goto_0
    return-object p0

    .line 105
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Cannot write object after it was released. In normal situation the object must be read once again before being written."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method write(II)V
    .locals 4
    .param p1, "bytes"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-virtual {p0, v0, v1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(JI)V

    .line 162
    return-void
.end method

.method write(JI)V
    .locals 4
    .param p1, "bytes"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 148
    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_0

    .line 149
    mul-int/lit8 v0, p3, 0x8

    shr-long v0, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    goto :goto_0

    .line 151
    :cond_0
    return-void

    .line 147
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
