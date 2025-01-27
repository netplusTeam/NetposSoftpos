.class public Lcom/itextpdf/forms/util/DrawingUtil;
.super Ljava/lang/Object;
.source "DrawingUtil.java"


# static fields
.field protected static final check:Ljava/lang/String; = "0.8 0 0 0.8 0.3 0.5 cm 0 0 m\n0.066 -0.026 l\n0.137 -0.15 l\n0.259 0.081 0.46 0.391 0.553 0.461 c\n0.604 0.489 l\n0.703 0.492 l\n0.543 0.312 0.255 -0.205 0.154 -0.439 c\n0.069 -0.399 l\n0.035 -0.293 -0.039 -0.136 -0.091 -0.057 c\nh\nf\n"

.field protected static final circle:Ljava/lang/String; = "1 0 0 1 0.86 0.5 cm 0 0 m\n0 0.204 -0.166 0.371 -0.371 0.371 c\n-0.575 0.371 -0.741 0.204 -0.741 0 c\n-0.741 -0.204 -0.575 -0.371 -0.371 -0.371 c\n-0.166 -0.371 0 -0.204 0 0 c\nf\n"

.field protected static final cross:Ljava/lang/String; = "1 0 0 1 0.80 0.8 cm 0 0 m\n-0.172 -0.027 l\n-0.332 -0.184 l\n-0.443 -0.019 l\n-0.475 -0.009 l\n-0.568 -0.168 l\n-0.453 -0.324 l\n-0.58 -0.497 l\n-0.59 -0.641 l\n-0.549 -0.627 l\n-0.543 -0.612 -0.457 -0.519 -0.365 -0.419 c\n-0.163 -0.572 l\n-0.011 -0.536 l\n-0.004 -0.507 l\n-0.117 -0.441 l\n-0.246 -0.294 l\n-0.132 -0.181 l\n0.031 -0.04 l\nh\nf\n"

.field protected static final diamond:Ljava/lang/String; = "1 0 0 1 0.5 0.12 cm 0 0 m\n0.376 0.376 l\n0 0.751 l\n-0.376 0.376 l\nh\nf\n"

.field protected static final square:Ljava/lang/String; = "1 0 0 1 0.835 0.835 cm 0 0 -0.669 -0.67 re\nf\n"

.field protected static final star:Ljava/lang/String; = "0.95 0 0 0.95 0.85 0.6 cm 0 0 m\n-0.291 0 l\n-0.381 0.277 l\n-0.47 0 l\n-0.761 0 l\n-0.526 -0.171 l\n-0.616 -0.448 l\n-0.381 -0.277 l\n-0.145 -0.448 l\n-0.236 -0.171 l\nh\nf\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawCircle(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFF)V
    .locals 7
    .param p0, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F

    .line 185
    float-to-double v1, p1

    float-to-double v3, p2

    float-to-double v5, p3

    .line 186
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->circle(DDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 188
    return-void
.end method

.method public static drawCross(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFF)V
    .locals 7
    .param p0, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "borderWidth"    # F

    .line 175
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p3, v0

    .line 176
    .local v1, "offset":F
    sub-float v2, p1, p2

    div-float/2addr v2, v0

    add-float/2addr v2, v1

    float-to-double v2, v2

    sub-float v4, p2, v1

    float-to-double v4, v4

    .line 177
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    add-float v3, p1, p2

    div-float/2addr v3, v0

    sub-float/2addr v3, v1

    float-to-double v3, v3

    float-to-double v5, v1

    .line 178
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    add-float v3, p1, p2

    div-float/2addr v3, v0

    sub-float/2addr v3, v1

    float-to-double v3, v3

    sub-float v5, p2, v1

    float-to-double v5, v5

    .line 179
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    sub-float v3, p1, p2

    div-float/2addr v3, v0

    add-float/2addr v3, v1

    float-to-double v3, v3

    float-to-double v5, v1

    .line 180
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 182
    return-void
.end method

.method private static drawPdfAAppearanceString(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLjava/lang/String;)V
    .locals 20
    .param p0, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "moveX"    # F
    .param p4, "moveY"    # F
    .param p5, "appearanceString"    # Ljava/lang/String;

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resetFillColorRgb()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 121
    move/from16 v0, p1

    float-to-double v2, v0

    move/from16 v14, p2

    float-to-double v8, v14

    move/from16 v15, p3

    float-to-double v10, v15

    move/from16 v12, p4

    float-to-double v6, v12

    const-wide/16 v4, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v18, v6

    move-wide/from16 v6, v16

    move-wide/from16 v12, v18

    invoke-virtual/range {v1 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    move-object/from16 v3, p5

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 124
    return-void
.end method

.method public static drawPdfACheck(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V
    .locals 6
    .param p0, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 131
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "0.8 0 0 0.8 0.3 0.5 cm 0 0 m\n0.066 -0.026 l\n0.137 -0.15 l\n0.259 0.081 0.46 0.391 0.553 0.461 c\n0.604 0.489 l\n0.703 0.492 l\n0.543 0.312 0.255 -0.205 0.154 -0.439 c\n0.069 -0.399 l\n0.035 -0.293 -0.039 -0.136 -0.091 -0.057 c\nh\nf\n"

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfAAppearanceString(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLjava/lang/String;)V

    .line 132
    return-void
.end method

.method public static drawPdfACheck(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFF)V
    .locals 6
    .param p0, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "moveX"    # F
    .param p4, "moveY"    # F

    .line 127
    const-string v5, "0.8 0 0 0.8 0.3 0.5 cm 0 0 m\n0.066 -0.026 l\n0.137 -0.15 l\n0.259 0.081 0.46 0.391 0.553 0.461 c\n0.604 0.489 l\n0.703 0.492 l\n0.543 0.312 0.255 -0.205 0.154 -0.439 c\n0.069 -0.399 l\n0.035 -0.293 -0.039 -0.136 -0.091 -0.057 c\nh\nf\n"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfAAppearanceString(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLjava/lang/String;)V

    .line 128
    return-void
.end method

.method public static drawPdfACircle(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V
    .locals 6
    .param p0, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 139
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "1 0 0 1 0.86 0.5 cm 0 0 m\n0 0.204 -0.166 0.371 -0.371 0.371 c\n-0.575 0.371 -0.741 0.204 -0.741 0 c\n-0.741 -0.204 -0.575 -0.371 -0.371 -0.371 c\n-0.166 -0.371 0 -0.204 0 0 c\nf\n"

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfAAppearanceString(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLjava/lang/String;)V

    .line 140
    return-void
.end method

.method public static drawPdfACircle(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFF)V
    .locals 6
    .param p0, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "moveX"    # F
    .param p4, "moveY"    # F

    .line 135
    const-string v5, "1 0 0 1 0.86 0.5 cm 0 0 m\n0 0.204 -0.166 0.371 -0.371 0.371 c\n-0.575 0.371 -0.741 0.204 -0.741 0 c\n-0.741 -0.204 -0.575 -0.371 -0.371 -0.371 c\n-0.166 -0.371 0 -0.204 0 0 c\nf\n"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfAAppearanceString(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLjava/lang/String;)V

    .line 136
    return-void
.end method

.method public static drawPdfACross(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V
    .locals 6
    .param p0, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 147
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "1 0 0 1 0.80 0.8 cm 0 0 m\n-0.172 -0.027 l\n-0.332 -0.184 l\n-0.443 -0.019 l\n-0.475 -0.009 l\n-0.568 -0.168 l\n-0.453 -0.324 l\n-0.58 -0.497 l\n-0.59 -0.641 l\n-0.549 -0.627 l\n-0.543 -0.612 -0.457 -0.519 -0.365 -0.419 c\n-0.163 -0.572 l\n-0.011 -0.536 l\n-0.004 -0.507 l\n-0.117 -0.441 l\n-0.246 -0.294 l\n-0.132 -0.181 l\n0.031 -0.04 l\nh\nf\n"

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfAAppearanceString(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLjava/lang/String;)V

    .line 148
    return-void
.end method

.method public static drawPdfACross(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFF)V
    .locals 6
    .param p0, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "moveX"    # F
    .param p4, "moveY"    # F

    .line 143
    const-string v5, "1 0 0 1 0.80 0.8 cm 0 0 m\n-0.172 -0.027 l\n-0.332 -0.184 l\n-0.443 -0.019 l\n-0.475 -0.009 l\n-0.568 -0.168 l\n-0.453 -0.324 l\n-0.58 -0.497 l\n-0.59 -0.641 l\n-0.549 -0.627 l\n-0.543 -0.612 -0.457 -0.519 -0.365 -0.419 c\n-0.163 -0.572 l\n-0.011 -0.536 l\n-0.004 -0.507 l\n-0.117 -0.441 l\n-0.246 -0.294 l\n-0.132 -0.181 l\n0.031 -0.04 l\nh\nf\n"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfAAppearanceString(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLjava/lang/String;)V

    .line 144
    return-void
.end method

.method public static drawPdfADiamond(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V
    .locals 6
    .param p0, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 155
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "1 0 0 1 0.5 0.12 cm 0 0 m\n0.376 0.376 l\n0 0.751 l\n-0.376 0.376 l\nh\nf\n"

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfAAppearanceString(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLjava/lang/String;)V

    .line 156
    return-void
.end method

.method public static drawPdfADiamond(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFF)V
    .locals 6
    .param p0, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "moveX"    # F
    .param p4, "moveY"    # F

    .line 151
    const-string v5, "1 0 0 1 0.5 0.12 cm 0 0 m\n0.376 0.376 l\n0 0.751 l\n-0.376 0.376 l\nh\nf\n"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfAAppearanceString(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLjava/lang/String;)V

    .line 152
    return-void
.end method

.method public static drawPdfASquare(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V
    .locals 6
    .param p0, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 163
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "1 0 0 1 0.835 0.835 cm 0 0 -0.669 -0.67 re\nf\n"

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfAAppearanceString(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLjava/lang/String;)V

    .line 164
    return-void
.end method

.method public static drawPdfASquare(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFF)V
    .locals 6
    .param p0, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "moveX"    # F
    .param p4, "moveY"    # F

    .line 159
    const-string v5, "1 0 0 1 0.835 0.835 cm 0 0 -0.669 -0.67 re\nf\n"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfAAppearanceString(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLjava/lang/String;)V

    .line 160
    return-void
.end method

.method public static drawPdfAStar(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V
    .locals 6
    .param p0, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 171
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "0.95 0 0 0.95 0.85 0.6 cm 0 0 m\n-0.291 0 l\n-0.381 0.277 l\n-0.47 0 l\n-0.761 0 l\n-0.526 -0.171 l\n-0.616 -0.448 l\n-0.381 -0.277 l\n-0.145 -0.448 l\n-0.236 -0.171 l\nh\nf\n"

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfAAppearanceString(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLjava/lang/String;)V

    .line 172
    return-void
.end method

.method public static drawPdfAStar(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFF)V
    .locals 6
    .param p0, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "moveX"    # F
    .param p4, "moveY"    # F

    .line 167
    const-string v5, "0.95 0 0 0.95 0.85 0.6 cm 0 0 m\n-0.291 0 l\n-0.381 0.277 l\n-0.47 0 l\n-0.761 0 l\n-0.526 -0.171 l\n-0.616 -0.448 l\n-0.381 -0.277 l\n-0.145 -0.448 l\n-0.236 -0.171 l\nh\nf\n"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/forms/util/DrawingUtil;->drawPdfAAppearanceString(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLjava/lang/String;)V

    .line 168
    return-void
.end method
