.class Lcom/itextpdf/pdfa/checker/PdfA2Checker$1;
.super Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
.source "PdfA2Checker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itextpdf/pdfa/checker/PdfA2Checker;->checkColor(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itextpdf/pdfa/checker/PdfA2Checker;

.field final synthetic val$extGStateDict:Lcom/itextpdf/kernel/pdf/PdfDictionary;


# direct methods
.method constructor <init>(Lcom/itextpdf/pdfa/checker/PdfA2Checker;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1
    .param p1, "this$0"    # Lcom/itextpdf/pdfa/checker/PdfA2Checker;

    .line 198
    iput-object p1, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker$1;->this$0:Lcom/itextpdf/pdfa/checker/PdfA2Checker;

    iput-object p2, p0, Lcom/itextpdf/pdfa/checker/PdfA2Checker$1;->val$extGStateDict:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;-><init>()V

    .line 200
    new-instance v0, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    invoke-direct {v0, p2}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA2Checker$1;->updateFromExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)V

    .line 201
    return-void
.end method
