.class Lcom/itextpdf/kernel/utils/PdfSplitter$2;
.super Ljava/lang/Object;
.source "PdfSplitter.java"

# interfaces
.implements Lcom/itextpdf/kernel/utils/PdfSplitter$IDocumentReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itextpdf/kernel/utils/PdfSplitter;->splitByPageCount(I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itextpdf/kernel/utils/PdfSplitter;

.field final synthetic val$splitDocuments:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/itextpdf/kernel/utils/PdfSplitter;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/itextpdf/kernel/utils/PdfSplitter;

    .line 208
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/PdfSplitter$2;->this$0:Lcom/itextpdf/kernel/utils/PdfSplitter;

    iput-object p2, p0, Lcom/itextpdf/kernel/utils/PdfSplitter$2;->val$splitDocuments:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public documentReady(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/PageRange;)V
    .locals 1
    .param p1, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "pageRange"    # Lcom/itextpdf/kernel/utils/PageRange;

    .line 211
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/PdfSplitter$2;->val$splitDocuments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method
