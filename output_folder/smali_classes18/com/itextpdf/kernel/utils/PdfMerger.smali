.class public Lcom/itextpdf/kernel/utils/PdfMerger;
.super Ljava/lang/Object;
.source "PdfMerger.java"


# instance fields
.field private closeSrcDocuments:Z

.field private mergeOutlines:Z

.field private mergeTags:Z

.field private pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/itextpdf/kernel/utils/PdfMerger;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;ZZ)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;ZZ)V
    .locals 0
    .param p1, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "mergeTags"    # Z
    .param p3, "mergeOutlines"    # Z

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/PdfMerger;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 82
    iput-boolean p2, p0, Lcom/itextpdf/kernel/utils/PdfMerger;->mergeTags:Z

    .line 83
    iput-boolean p3, p0, Lcom/itextpdf/kernel/utils/PdfMerger;->mergeOutlines:Z

    .line 84
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/PdfMerger;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 157
    return-void
.end method

.method public merge(Lcom/itextpdf/kernel/pdf/PdfDocument;II)Lcom/itextpdf/kernel/utils/PdfMerger;
    .locals 3
    .param p1, "from"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "fromPage"    # I
    .param p3, "toPage"    # I

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    sub-int v1, p3, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v0, "pages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v1, p2

    .local v1, "pageNum":I
    :goto_0
    if-gt v1, p3, :cond_0

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "pageNum":I
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/utils/PdfMerger;->merge(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;)Lcom/itextpdf/kernel/utils/PdfMerger;

    move-result-object v1

    return-object v1
.end method

.method public merge(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;)Lcom/itextpdf/kernel/utils/PdfMerger;
    .locals 1
    .param p1, "from"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/itextpdf/kernel/utils/PdfMerger;"
        }
    .end annotation

    .line 133
    .local p2, "pages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/itextpdf/kernel/utils/PdfMerger;->mergeTags:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/PdfMerger;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->setTagged()Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/kernel/utils/PdfMerger;->mergeOutlines:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->hasOutlines()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/PdfMerger;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->initializeOutlines()V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/PdfMerger;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;)Ljava/util/List;

    .line 141
    iget-boolean v0, p0, Lcom/itextpdf/kernel/utils/PdfMerger;->closeSrcDocuments:Z

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 144
    :cond_2
    return-object p0
.end method

.method public setCloseSourceDocuments(Z)Lcom/itextpdf/kernel/utils/PdfMerger;
    .locals 0
    .param p1, "closeSourceDocuments"    # Z

    .line 95
    iput-boolean p1, p0, Lcom/itextpdf/kernel/utils/PdfMerger;->closeSrcDocuments:Z

    .line 96
    return-object p0
.end method
