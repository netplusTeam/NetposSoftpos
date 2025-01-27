.class abstract Lcom/itextpdf/forms/fields/borders/AbstractFormBorder;
.super Lcom/itextpdf/layout/borders/Border;
.source "AbstractFormBorder.java"


# static fields
.field static final FORM_BEVELED:I = 0x3ea

.field static final FORM_INSET:I = 0x3eb

.field static final FORM_UNDERLINE:I = 0x3e9


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "width"    # F

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 72
    return-void
.end method
