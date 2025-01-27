.class public Lcom/itextpdf/svg/renderers/path/impl/SmoothSCurveTo;
.super Lcom/itextpdf/svg/renderers/path/impl/CurveTo;
.source "SmoothSCurveTo.java"


# static fields
.field static final ARGUMENT_SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/path/impl/SmoothSCurveTo;-><init>(Z)V

    .line 55
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "relative"    # Z

    .line 58
    new-instance v0, Lcom/itextpdf/svg/renderers/path/impl/SmoothOperatorConverter;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/path/impl/SmoothOperatorConverter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;-><init>(ZLcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;)V

    .line 59
    return-void
.end method
