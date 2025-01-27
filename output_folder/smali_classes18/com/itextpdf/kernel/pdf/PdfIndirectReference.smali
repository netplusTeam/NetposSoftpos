.class public Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
.super Lcom/itextpdf/kernel/pdf/PdfObject;
.source "PdfIndirectReference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObject;",
        "Ljava/lang/Comparable<",
        "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LENGTH_OF_INDIRECTS_CHAIN:I = 0x1f

.field private static final serialVersionUID:J = -0x7318cc0cb77dab39L


# instance fields
.field protected genNr:I

.field protected final objNr:I

.field protected objectStreamNumber:I

.field protected offsetOrIndex:J

.field protected pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field protected refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 48
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;I)V
    .locals 1
    .param p1, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "objNr"    # I

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;II)V

    .line 87
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;II)V
    .locals 3
    .param p1, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "objNr"    # I
    .param p3, "genNr"    # I

    .line 90
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objectStreamNumber:I

    .line 78
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->offsetOrIndex:J

    .line 83
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 91
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 92
    iput p2, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objNr:I

    .line 93
    iput p3, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    .line 94
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;IIJ)V
    .locals 3
    .param p1, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "objNr"    # I
    .param p3, "genNr"    # I
    .param p4, "offset"    # J

    .line 97
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objectStreamNumber:I

    .line 78
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->offsetOrIndex:J

    .line 83
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 98
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 99
    iput p2, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objNr:I

    .line 100
    iput p3, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    .line 101
    iput-wide p4, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->offsetOrIndex:J

    .line 102
    cmp-long v0, p4, v1

    if-ltz v0, :cond_0

    .line 103
    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private comparePdfDocumentLinks(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)I
    .locals 8
    .param p1, "toCompare"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 336
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 337
    return v2

    .line 338
    :cond_0
    const/4 v3, -0x1

    if-nez v0, :cond_1

    .line 339
    return v3

    .line 340
    :cond_1
    const/4 v4, 0x1

    if-nez v1, :cond_2

    .line 341
    return v4

    .line 343
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentId()J

    move-result-wide v0

    .line 344
    .local v0, "thisDocumentId":J
    iget-object v5, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentId()J

    move-result-wide v5

    .line 345
    .local v5, "documentIdToCompare":J
    cmp-long v7, v0, v5

    if-nez v7, :cond_3

    .line 346
    return v2

    .line 348
    :cond_3
    cmp-long v2, v0, v5

    if-lez v2, :cond_4

    move v3, v4

    :cond_4
    return v3
.end method


# virtual methods
.method public compareTo(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)I
    .locals 4
    .param p1, "o"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 201
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objNr:I

    iget v1, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objNr:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v1, :cond_2

    .line 202
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    iget v1, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    if-ne v0, v1, :cond_0

    .line 203
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->comparePdfDocumentLinks(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)I

    move-result v0

    return v0

    .line 205
    :cond_0
    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    .line 207
    :cond_2
    if-le v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 48
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->compareTo(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)I

    move-result p1

    return p1
.end method

.method protected copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0
    .param p1, "from"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 306
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 172
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 173
    return v0

    .line 175
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 178
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 179
    .local v2, "that":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v4, v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-ne v3, v4, :cond_2

    move v5, v0

    goto :goto_0

    :cond_2
    move v5, v1

    .line 180
    .local v5, "documentsEquals":Z
    :goto_0
    if-nez v5, :cond_4

    .line 181
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 183
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentId()J

    move-result-wide v3

    iget-object v6, v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentId()J

    move-result-wide v6

    cmp-long v3, v3, v6

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    move v5, v3

    .line 186
    :cond_4
    iget v3, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objNr:I

    iget v4, v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objNr:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    iget v4, v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    if-ne v3, v4, :cond_5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0

    .line 176
    .end local v2    # "that":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v5    # "documentsEquals":Z
    :cond_6
    :goto_3
    return v1
.end method

.method fixOffset(J)V
    .locals 1
    .param p1, "offset"    # J

    .line 330
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->offsetOrIndex:J

    .line 333
    :cond_0
    return-void
.end method

.method public getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public getGenNumber()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    return v0
.end method

.method public getIndex()I
    .locals 2

    .line 167
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objectStreamNumber:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->offsetOrIndex:J

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getObjNumber()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objNr:I

    return v0
.end method

.method public getObjStreamNumber()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objectStreamNumber:I

    return v0
.end method

.method public getOffset()J
    .locals 2

    .line 158
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objectStreamNumber:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->offsetOrIndex:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method protected getReader()Lcom/itextpdf/kernel/pdf/PdfReader;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v0

    return-object v0

    .line 295
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 4
    .param p1, "recursively"    # Z

    .line 127
    if-nez p1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0

    .line 133
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 134
    .local v1, "currentRefersTo":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x1f

    if-ge v2, v3, :cond_2

    .line 135
    instance-of v3, v1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v3, :cond_2

    .line 136
    move-object v3, v1

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public getType()B
    .locals 1

    .line 212
    const/4 v0, 0x5

    return v0
.end method

.method protected getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;
    .locals 1

    .line 282
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    return-object v0

    .line 284
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 191
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objNr:I

    .line 192
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    add-int/2addr v1, v2

    .line 193
    .end local v0    # "result":I
    .local v1, "result":I
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_0

    .line 194
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentId()J

    move-result-wide v3

    long-to-int v0, v3

    add-int v1, v2, v0

    .line 196
    :cond_0
    return v1
.end method

.method public isFree()Z
    .locals 1

    .line 243
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v0

    return v0
.end method

.method protected newInstance()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 300
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    return-object v0
.end method

.method public setFree()V
    .locals 1

    .line 233
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReference(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    .line 234
    return-void
.end method

.method setIndex(J)V
    .locals 0
    .param p1, "index"    # J

    .line 321
    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->offsetOrIndex:J

    .line 322
    return-void
.end method

.method setObjStreamNumber(I)V
    .locals 0
    .param p1, "objectStreamNumber"    # I

    .line 317
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objectStreamNumber:I

    .line 318
    return-void
.end method

.method setOffset(J)V
    .locals 1
    .param p1, "offset"    # J

    .line 325
    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->offsetOrIndex:J

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objectStreamNumber:I

    .line 327
    return-void
.end method

.method protected setRefersTo(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 0
    .param p1, "refersTo"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 145
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 146
    return-void
.end method

.method protected setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1
    .param p1, "state"    # S

    .line 313
    invoke-super {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "states":Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    const-string v2, "Free; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    const-string v2, "Modified; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_1
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    const-string v2, "MustBeFlushed; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_2
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 259
    const-string v2, "Reading; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 262
    const-string v3, "Flushed; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_4
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 265
    const-string v3, "OriginalObjectStream; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_5
    const/16 v3, 0x80

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 268
    const-string v3, "ForbidRelease; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_6
    const/16 v3, 0x100

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 271
    const-string v3, "ReadOnly; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_7
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v5, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string/jumbo v1, "{0} {1} R{2}"

    invoke-static {v1, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
