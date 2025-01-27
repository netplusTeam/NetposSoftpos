.class Lcom/itextpdf/pdfa/PdfAPage;
.super Lcom/itextpdf/kernel/pdf/PdfPage;
.source "PdfAPage.java"


# direct methods
.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 57
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPage;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/PageSize;)V
    .locals 0
    .param p1, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "pageSize"    # Lcom/itextpdf/kernel/geom/PageSize;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfPage;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/PageSize;)V

    .line 54
    return-void
.end method


# virtual methods
.method public flush(Z)V
    .locals 2
    .param p1, "flushResourcesContentStreams"    # Z

    .line 65
    if-nez p1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/itextpdf/pdfa/PdfAPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/pdfa/PdfADocument;

    invoke-virtual {v0}, Lcom/itextpdf/pdfa/PdfADocument;->isClosing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/itextpdf/pdfa/PdfAPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/pdfa/PdfADocument;

    iget-object v0, v0, Lcom/itextpdf/pdfa/PdfADocument;->checker:Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-virtual {p0}, Lcom/itextpdf/pdfa/PdfAPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;->objectIsChecked(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/pdfa/PdfAPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/pdfa/PdfADocument;

    invoke-virtual {v0}, Lcom/itextpdf/pdfa/PdfADocument;->logThatPdfAPageFlushingWasNotPerformed()V

    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->flush(Z)V

    .line 72
    :goto_1
    return-void
.end method
