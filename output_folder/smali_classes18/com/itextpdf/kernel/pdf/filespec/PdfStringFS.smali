.class public Lcom/itextpdf/kernel/pdf/filespec/PdfStringFS;
.super Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
.source "PdfStringFS.java"


# static fields
.field private static final serialVersionUID:J = 0x2fbe68b181d52cf0L


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfString;)V
    .locals 0
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 57
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method
