.class public Lcom/itextpdf/svg/utils/TextRectangle;
.super Lcom/itextpdf/kernel/geom/Rectangle;
.source "TextRectangle.java"


# static fields
.field private static final serialVersionUID:J = -0x118a59d734248837L


# instance fields
.field private textBaseLineYCoordinate:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "textBaseLineYCoordinate"    # F

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 51
    iput p5, p0, Lcom/itextpdf/svg/utils/TextRectangle;->textBaseLineYCoordinate:F

    .line 52
    return-void
.end method


# virtual methods
.method public getTextBaseLineRightPoint()Lcom/itextpdf/kernel/geom/Point;
    .locals 5

    .line 60
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {p0}, Lcom/itextpdf/svg/utils/TextRectangle;->getRight()F

    move-result v1

    float-to-double v1, v1

    iget v3, p0, Lcom/itextpdf/svg/utils/TextRectangle;->textBaseLineYCoordinate:F

    float-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    return-object v0
.end method
