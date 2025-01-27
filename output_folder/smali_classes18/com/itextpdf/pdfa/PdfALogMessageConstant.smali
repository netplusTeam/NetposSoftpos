.class public Lcom/itextpdf/pdfa/PdfALogMessageConstant;
.super Ljava/lang/Object;
.source "PdfALogMessageConstant.java"


# static fields
.field public static final PDFA_OBJECT_FLUSHING_WAS_NOT_PERFORMED:Ljava/lang/String; = "Object flushing was not performed. Object in PDF/A mode can only be flushed if the document is closed or if this object has already been checked for compliance with PDF/A rules."

.field public static final PDFA_PAGE_FLUSHING_WAS_NOT_PERFORMED:Ljava/lang/String; = "Page flushing was not performed. Pages flushing in PDF/A mode works only with explicit calls to PdfPage#flush(boolean) with flushResourcesContentStreams argument set to true"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
