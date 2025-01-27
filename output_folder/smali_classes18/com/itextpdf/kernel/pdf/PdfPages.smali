.class Lcom/itextpdf/kernel/pdf/PdfPages;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfPages.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x59d87f639a8be72L


# instance fields
.field private count:Lcom/itextpdf/kernel/pdf/PdfNumber;

.field private from:I

.field private final kids:Lcom/itextpdf/kernel/pdf/PdfArray;

.field private final parent:Lcom/itextpdf/kernel/pdf/PdfPages;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 46
    return-void
.end method

.method public constructor <init>(IILcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfPages;)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "maxCount"    # I
    .param p3, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p4, "parent"    # Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 77
    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 78
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->setForbidRelease()V

    .line 79
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    .line 80
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Count:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 81
    iput-object p4, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->parent:Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 82
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 84
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Count:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p3, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(I)V

    .line 88
    :cond_1
    :goto_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->kids:Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 89
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Pages:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 90
    return-void
.end method

.method public constructor <init>(ILcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfPages;-><init>(ILcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfPages;)V

    .line 74
    return-void
.end method

.method public constructor <init>(ILcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfPages;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p3, "parent"    # Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 55
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 56
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->setForbidRelease()V

    .line 60
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    .line 61
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 62
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->kids:Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 63
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->parent:Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 64
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Pages:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 65
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 66
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Count:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 67
    if-eqz p3, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 70
    :cond_1
    return-void
.end method


# virtual methods
.method public addPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 93
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->kids:Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 94
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->incrementCount()V

    .line 95
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 96
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 97
    return-void
.end method

.method public addPage(ILcom/itextpdf/kernel/pdf/PdfPage;)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "pdfPage"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 100
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->kids:Lcom/itextpdf/kernel/pdf/PdfArray;

    iget v1, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    sub-int v1, p1, v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(ILcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 103
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 104
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 105
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->incrementCount()V

    .line 106
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPages(Lcom/itextpdf/kernel/pdf/PdfPages;)V
    .locals 3
    .param p1, "pdfPages"    # Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 118
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->kids:Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 119
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(I)V

    .line 120
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 121
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPages;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 122
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 123
    return-void
.end method

.method public compareTo(I)I
    .locals 2
    .param p1, "index"    # I

    .line 171
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    if-ge p1, v0, :cond_0

    .line 172
    const/4 v0, 0x1

    return v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    .line 174
    const/4 v0, -0x1

    return v0

    .line 175
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public correctFrom(I)V
    .locals 1
    .param p1, "correction"    # I

    .line 145
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    .line 146
    return-void
.end method

.method public decrementCount()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->decrement()V

    .line 165
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 166
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->parent:Lcom/itextpdf/kernel/pdf/PdfPages;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPages;->decrementCount()V

    .line 168
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    return v0
.end method

.method public getFrom()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    return v0
.end method

.method public getKids()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/itextpdf/kernel/pdf/PdfPages;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->parent:Lcom/itextpdf/kernel/pdf/PdfPages;

    return-object v0
.end method

.method public incrementCount()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->count:Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->increment()V

    .line 158
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 159
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->parent:Lcom/itextpdf/kernel/pdf/PdfPages;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPages;->incrementCount()V

    .line 161
    :cond_0
    return-void
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public removeFromParent()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->parent:Lcom/itextpdf/kernel/pdf/PdfPages;

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->parent:Lcom/itextpdf/kernel/pdf/PdfPages;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfPages;->kids:Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 130
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->parent:Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->parent:Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPages;->removeFromParent()V

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 134
    :cond_1
    :goto_0
    return-void
.end method

.method public removePage(I)Z
    .locals 2
    .param p1, "pageNum"    # I

    .line 110
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->decrementCount()V

    .line 113
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->kids:Lcom/itextpdf/kernel/pdf/PdfArray;

    iget v1, p0, Lcom/itextpdf/kernel/pdf/PdfPages;->from:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    .line 114
    const/4 v0, 0x1

    return v0

    .line 111
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
