.class public Lcom/itextpdf/kernel/pdf/action/PdfWin;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfWin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2a6e83f4fd72d5a8L


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 64
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfString;)V
    .locals 2
    .param p1, "f"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 75
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/action/PdfWin;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 76
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/action/PdfWin;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;)V
    .locals 2
    .param p1, "f"    # Lcom/itextpdf/kernel/pdf/PdfString;
    .param p2, "d"    # Lcom/itextpdf/kernel/pdf/PdfString;
    .param p3, "o"    # Lcom/itextpdf/kernel/pdf/PdfString;
    .param p4, "p"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 92
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/action/PdfWin;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 93
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/action/PdfWin;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 94
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/action/PdfWin;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 95
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/action/PdfWin;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->O:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 96
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/action/PdfWin;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 97
    return-void
.end method


# virtual methods
.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    .line 104
    const/4 v0, 0x0

    return v0
.end method
