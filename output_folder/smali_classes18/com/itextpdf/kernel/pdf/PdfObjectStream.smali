.class Lcom/itextpdf/kernel/pdf/PdfObjectStream;
.super Lcom/itextpdf/kernel/pdf/PdfStream;
.source "PdfObjectStream.java"


# static fields
.field public static final MAX_OBJ_STREAM_SIZE:I = 0xc8

.field private static final serialVersionUID:J = -0x30c26b0024e574caL


# instance fields
.field protected indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

.field protected size:Lcom/itextpdf/kernel/pdf/PdfNumber;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 2
    .param p1, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 70
    new-instance v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/io/OutputStream;)V

    .line 71
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    new-instance v1, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 72
    return-void
.end method

.method private constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .line 89
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->size:Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 91
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->createNewIndirectReference(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 92
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    iput-object p1, v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 93
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ObjStm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 94
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->size:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 95
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->First:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 96
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfObjectStream;)V
    .locals 2
    .param p1, "prev"    # Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    .line 80
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/io/OutputStream;)V

    .line 81
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 82
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->reset()V

    .line 83
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->reset()V

    .line 85
    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->releaseContent(Z)V

    .line 86
    return-void
.end method

.method private releaseContent(Z)V
    .locals 1
    .param p1, "close"    # Z

    .line 139
    if-eqz p1, :cond_0

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->outputStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 141
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 142
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->releaseContent()V

    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method public addObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 4
    .param p1, "object"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 104
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->size:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 108
    .local v0, "outputStream":Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 109
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 110
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getCurrentPos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeLong(J)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 111
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    .line 112
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 113
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setObjStreamNumber(I)V

    .line 114
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->size:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setIndex(J)V

    .line 115
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    .line 116
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->size:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->increment()V

    .line 117
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->First:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getCurrentPos()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(D)V

    .line 118
    return-void

    .line 105
    .end local v0    # "outputStream":Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "PdfObjectStream reach max size."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndexStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->indexStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->size:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    return v0
.end method

.method protected releaseContent()V
    .locals 1

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->releaseContent(Z)V

    .line 136
    return-void
.end method
