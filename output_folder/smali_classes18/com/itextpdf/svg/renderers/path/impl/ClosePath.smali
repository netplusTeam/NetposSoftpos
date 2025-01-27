.class public Lcom/itextpdf/svg/renderers/path/impl/ClosePath;
.super Lcom/itextpdf/svg/renderers/path/impl/LineTo;
.source "ClosePath.java"


# static fields
.field static final ARGUMENT_SIZE:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/path/impl/ClosePath;-><init>(Z)V

    .line 55
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "relative"    # Z

    .line 58
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/path/impl/LineTo;-><init>(Z)V

    .line 59
    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 0
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 63
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closePath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 64
    return-void
.end method
