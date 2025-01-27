.class public Lcom/itextpdf/kernel/pdf/annot/PdfFileAttachmentAnnotation;
.super Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
.source "PdfFileAttachmentAnnotation.java"


# static fields
.field private static final serialVersionUID:J = -0x55e983b41237083eL


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 0
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 57
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V
    .locals 2
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "file"    # Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    .line 61
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfFileAttachmentAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 62
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfFileAttachmentAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 63
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 73
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getFileSpecObject()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfFileAttachmentAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getIconName()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfFileAttachmentAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Name:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 78
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FileAttachment:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public setIconName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfFileAttachmentAnnotation;
    .locals 1
    .param p1, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 106
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Name:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfFileAttachmentAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfFileAttachmentAnnotation;

    return-object v0
.end method
