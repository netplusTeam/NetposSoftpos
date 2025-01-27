.class public abstract Lcom/itextpdf/layout/borders/Border;
.super Ljava/lang/Object;
.source "Border.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/borders/Border$Side;
    }
.end annotation


# static fields
.field private static final CURV:F = 0.447f

.field public static final DASHED:I = 0x1

.field public static final DASHED_FIXED:I = 0x9

.field public static final DOTTED:I = 0x2

.field public static final DOUBLE:I = 0x3

.field public static final NO_BORDER:Lcom/itextpdf/layout/borders/Border;

.field public static final ROUND_DOTS:I = 0x4

.field public static final SOLID:I = 0x0

.field public static final _3D_GROOVE:I = 0x5

.field public static final _3D_INSET:I = 0x6

.field public static final _3D_OUTSET:I = 0x7

.field public static final _3D_RIDGE:I = 0x8


# instance fields
.field private hash:I

.field protected transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

.field protected type:I

.field protected width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/itextpdf/layout/borders/Border;->NO_BORDER:Lcom/itextpdf/layout/borders/Border;

    return-void
.end method

.method protected constructor <init>(F)V
    .locals 1
    .param p1, "width"    # F

    .line 159
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/layout/borders/Border;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 160
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 1
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "width"    # F

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Lcom/itextpdf/layout/property/TransparentColor;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/property/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;)V

    iput-object v0, p0, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 170
    iput p2, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    .line 171
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/colors/Color;FF)V
    .locals 1
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "width"    # F
    .param p3, "opacity"    # F

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Lcom/itextpdf/layout/property/TransparentColor;

    invoke-direct {v0, p1, p3}, Lcom/itextpdf/layout/property/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    iput-object v0, p0, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 182
    iput p2, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    .line 183
    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 10
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "horizontalRadius1"    # F
    .param p7, "verticalRadius1"    # F
    .param p8, "horizontalRadius2"    # F
    .param p9, "verticalRadius2"    # F
    .param p10, "defaultSide"    # Lcom/itextpdf/layout/borders/Border$Side;
    .param p11, "borderWidthBefore"    # F
    .param p12, "borderWidthAfter"    # F

    .line 285
    const-class v0, Lcom/itextpdf/layout/borders/Border;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 286
    .local v0, "logger":Lorg/slf4j/Logger;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Border#draw(PdfCanvas, float, float, float, float, float, float, float, float, Side, float, float"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Border#draw(PdfCanvas, float, float, float, float, Side, float, float)"

    aput-object v3, v1, v2

    const-string v2, "Method {0} is not implemented by default: please, override and implement it. {1} will be used instead."

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 289
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p12

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 290
    return-void
.end method

.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 13
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "borderRadius"    # F
    .param p7, "defaultSide"    # Lcom/itextpdf/layout/borders/Border$Side;
    .param p8, "borderWidthBefore"    # F
    .param p9, "borderWidthAfter"    # F

    .line 252
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p6

    move/from16 v8, p6

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFFFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 253
    return-void
.end method

.method public abstract draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V
.end method

.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 13
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "rectangle"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 216
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v9

    .line 217
    .local v9, "left":F
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v10

    .line 218
    .local v10, "bottom":F
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    add-float v11, v0, v1

    .line 219
    .local v11, "right":F
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    add-float v12, v0, v1

    .line 220
    .local v12, "top":F
    sget-object v6, Lcom/itextpdf/layout/borders/Border$Side;->TOP:Lcom/itextpdf/layout/borders/Border$Side;

    iget v8, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    move-object v0, p0

    move-object v1, p1

    move v2, v9

    move v3, v12

    move v4, v11

    move v5, v12

    move v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 221
    sget-object v6, Lcom/itextpdf/layout/borders/Border$Side;->RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

    iget v8, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    move v2, v11

    move v5, v10

    move v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 222
    sget-object v6, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    iget v8, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    move v3, v10

    move v4, v9

    move v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 223
    sget-object v6, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    iget v8, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    move v2, v9

    move v5, v12

    move v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/layout/borders/Border;->draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;FF)V

    .line 224
    return-void
.end method

.method public abstract drawCellBorder(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFFFLcom/itextpdf/layout/borders/Border$Side;)V
.end method

.method protected drawDiscontinuousBorders(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;[F[FLcom/itextpdf/layout/borders/Border$Side;FF)V
    .locals 46
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "boundingRectangle"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "horizontalRadii"    # [F
    .param p4, "verticalRadii"    # [F
    .param p5, "defaultSide"    # Lcom/itextpdf/layout/borders/Border$Side;
    .param p6, "borderWidthBefore"    # F
    .param p7, "borderWidthAfter"    # F

    .line 490
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v8

    .line 491
    .local v8, "x1":F
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v9

    .line 492
    .local v9, "y1":F
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v10

    .line 493
    .local v10, "x2":F
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v11

    .line 495
    .local v11, "y2":F
    const/4 v0, 0x0

    aget v12, p3, v0

    .line 496
    .local v12, "horizontalRadius1":F
    const/4 v1, 0x1

    aget v13, p3, v1

    .line 498
    .local v13, "horizontalRadius2":F
    aget v14, p4, v0

    .line 499
    .local v14, "verticalRadius1":F
    aget v15, p4, v1

    .line 502
    .local v15, "verticalRadius2":F
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v16

    .line 503
    .local v16, "x0":F
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v17

    .line 504
    .local v17, "y0":F
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v18

    .line 505
    .local v18, "x3":F
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v19

    .line 512
    .local v19, "y3":F
    iget v0, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    const/high16 v20, 0x40000000    # 2.0f

    div-float v21, v0, v20

    .line 517
    .local v21, "widthHalf":F
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/borders/Border;->getBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)Lcom/itextpdf/layout/borders/Border$Side;

    move-result-object v0

    .line 518
    .local v0, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    sget-object v1, Lcom/itextpdf/layout/borders/Border$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {v0}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    move-object/from16 v24, v0

    move v4, v8

    move/from16 v31, v9

    move v7, v10

    move/from16 v33, v11

    move/from16 v28, v12

    move/from16 v25, v13

    move/from16 v27, v14

    move/from16 v26, v15

    .end local v0    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .end local v8    # "x1":F
    .end local v9    # "y1":F
    .end local v10    # "x2":F
    .end local v11    # "y2":F
    .end local v12    # "horizontalRadius1":F
    .end local v13    # "horizontalRadius2":F
    .end local v14    # "verticalRadius1":F
    .end local v15    # "verticalRadius2":F
    .local v4, "x1":F
    .local v7, "x2":F
    .local v24, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .local v25, "horizontalRadius2":F
    .local v26, "verticalRadius2":F
    .local v27, "verticalRadius1":F
    .local v28, "horizontalRadius1":F
    .local v31, "y1":F
    .local v33, "y2":F
    goto/16 :goto_4

    .line 623
    .end local v4    # "x1":F
    .end local v7    # "x2":F
    .end local v24    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .end local v25    # "horizontalRadius2":F
    .end local v26    # "verticalRadius2":F
    .end local v27    # "verticalRadius1":F
    .end local v28    # "horizontalRadius1":F
    .end local v31    # "y1":F
    .end local v33    # "y2":F
    .restart local v0    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .restart local v8    # "x1":F
    .restart local v9    # "y1":F
    .restart local v10    # "x2":F
    .restart local v11    # "y2":F
    .restart local v12    # "horizontalRadius1":F
    .restart local v13    # "horizontalRadius2":F
    .restart local v14    # "verticalRadius1":F
    .restart local v15    # "verticalRadius2":F
    :pswitch_0
    sub-float v1, v14, p6

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 624
    .local v1, "innerRadiusBefore":F
    iget v5, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v5, v12, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 625
    .local v5, "innerRadiusFirst":F
    iget v3, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v3, v13, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 626
    .local v3, "innerRadiusSecond":F
    sub-float v2, v15, p7

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 628
    .local v2, "innerRadiusAfter":F
    add-float v4, v16, v5

    .line 629
    .end local v16    # "x0":F
    .local v4, "x0":F
    div-float v16, p6, v20

    move-object/from16 v24, v0

    .end local v0    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .restart local v24    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    sub-float v0, v17, v16

    .line 631
    .end local v17    # "y0":F
    .local v0, "y0":F
    move/from16 v25, v13

    .end local v13    # "horizontalRadius2":F
    .restart local v25    # "horizontalRadius2":F
    add-float v13, v18, v3

    .line 632
    .end local v18    # "x3":F
    .local v13, "x3":F
    div-float v16, p7, v20

    move/from16 v26, v15

    .end local v15    # "verticalRadius2":F
    .restart local v26    # "verticalRadius2":F
    add-float v15, v19, v16

    .line 634
    .end local v19    # "y3":F
    .local v15, "y3":F
    move/from16 v27, v14

    .end local v14    # "verticalRadius1":F
    .restart local v27    # "verticalRadius1":F
    new-instance v14, Lcom/itextpdf/kernel/geom/Point;

    move/from16 v28, v12

    .end local v12    # "horizontalRadius1":F
    .restart local v28    # "horizontalRadius1":F
    iget v12, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v12, v8, v12

    move/from16 v30, v2

    move/from16 v29, v3

    .end local v2    # "innerRadiusAfter":F
    .end local v3    # "innerRadiusSecond":F
    .local v29, "innerRadiusSecond":F
    .local v30, "innerRadiusAfter":F
    float-to-double v2, v12

    sub-float v12, v9, p6

    move/from16 v16, v13

    .end local v13    # "x3":F
    .local v16, "x3":F
    float-to-double v12, v12

    invoke-direct {v14, v2, v3, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v12, v8

    move v3, v8

    .end local v8    # "x1":F
    .local v3, "x1":F
    float-to-double v7, v9

    invoke-direct {v2, v12, v13, v7, v8}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v7, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v12, v4

    move/from16 v31, v9

    .end local v9    # "y1":F
    .restart local v31    # "y1":F
    float-to-double v8, v0

    invoke-direct {v7, v12, v13, v8, v9}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v8, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v12, v4

    move/from16 v32, v5

    const/high16 v9, 0x41200000    # 10.0f

    .end local v5    # "innerRadiusFirst":F
    .local v32, "innerRadiusFirst":F
    add-float v5, v0, v9

    move v9, v4

    .end local v4    # "x0":F
    .local v9, "x0":F
    float-to-double v4, v5

    invoke-direct {v8, v12, v13, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v14, v2, v7, v8}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    .line 635
    .local v2, "clipPoint1":Lcom/itextpdf/kernel/geom/Point;
    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    iget v5, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v5, v10, v5

    float-to-double v7, v5

    add-float v5, v11, p7

    float-to-double v12, v5

    invoke-direct {v4, v7, v8, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v7, v10

    float-to-double v12, v11

    invoke-direct {v5, v7, v8, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v7, Lcom/itextpdf/kernel/geom/Point;

    move/from16 v8, v16

    .end local v16    # "x3":F
    .local v8, "x3":F
    float-to-double v12, v8

    move/from16 v16, v0

    move v14, v1

    .end local v0    # "y0":F
    .end local v1    # "innerRadiusBefore":F
    .local v14, "innerRadiusBefore":F
    .local v16, "y0":F
    float-to-double v0, v15

    invoke-direct {v7, v12, v13, v0, v1}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v12, v8

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr v1, v15

    move/from16 v18, v8

    move/from16 v17, v9

    .end local v8    # "x3":F
    .end local v9    # "x0":F
    .local v17, "x0":F
    .restart local v18    # "x3":F
    float-to-double v8, v1

    invoke-direct {v0, v12, v13, v8, v9}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v4, v5, v7, v0}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 636
    .local v0, "clipPoint2":Lcom/itextpdf/kernel/geom/Point;
    iget-wide v4, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v7, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    cmpl-double v1, v4, v7

    if-lez v1, :cond_0

    .line 637
    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    iget v4, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v8, v3, v4

    float-to-double v4, v8

    sub-float v9, v31, p6

    float-to-double v7, v9

    invoke-direct {v1, v4, v5, v7, v8}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    iget v5, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v5, v10, v5

    float-to-double v7, v5

    add-float v5, v11, p7

    float-to-double v12, v5

    invoke-direct {v4, v7, v8, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v6, v1, v2, v0, v4}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    .line 638
    .local v1, "clipPoint":Lcom/itextpdf/kernel/geom/Point;
    iget v4, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v8, v3, v4

    float-to-double v4, v8

    sub-float v9, v31, p6

    float-to-double v7, v9

    move-object/from16 v9, p1

    invoke-virtual {v9, v4, v5, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    iget-wide v7, v1, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v12, v1, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v4, v7, v8, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    iget v5, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v5, v10, v5

    float-to-double v7, v5

    add-float v5, v11, p7

    float-to-double v12, v5

    invoke-virtual {v4, v7, v8, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    iget v5, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v8, v3, v5

    float-to-double v7, v8

    sub-float v5, v31, p6

    float-to-double v12, v5

    invoke-virtual {v4, v7, v8, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 640
    .end local v1    # "clipPoint":Lcom/itextpdf/kernel/geom/Point;
    :cond_0
    move-object/from16 v9, p1

    iget v1, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v8, v3, v1

    float-to-double v4, v8

    sub-float v1, v31, p6

    float-to-double v7, v1

    invoke-virtual {v9, v4, v5, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    iget-wide v4, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v7, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v1, v4, v5, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    iget-wide v4, v0, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v7, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v1, v4, v5, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    iget v4, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v4, v10, v4

    float-to-double v4, v4

    add-float v7, v11, p7

    float-to-double v7, v7

    invoke-virtual {v1, v4, v5, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    iget v4, v6, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v8, v3, v4

    float-to-double v4, v8

    sub-float v7, v31, p6

    float-to-double v7, v7

    invoke-virtual {v1, v4, v5, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 642
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 644
    sub-float v8, v3, v21

    .line 645
    .end local v3    # "x1":F
    .local v8, "x1":F
    add-float v1, v31, v14

    .line 647
    .end local v31    # "y1":F
    .local v1, "y1":F
    sub-float v10, v10, v21

    .line 648
    sub-float v11, v11, v30

    .line 650
    move/from16 v3, v17

    .end local v17    # "x0":F
    .local v3, "x0":F
    float-to-double v4, v3

    move/from16 v7, v16

    .end local v16    # "y0":F
    .local v7, "y0":F
    float-to-double v12, v7

    .line 651
    invoke-virtual {v9, v4, v5, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v33

    const v4, 0x3ee4dd2f    # 0.447f

    mul-float v5, v32, v4

    sub-float v5, v3, v5

    float-to-double v12, v5

    move-object v5, v2

    .end local v2    # "clipPoint1":Lcom/itextpdf/kernel/geom/Point;
    .end local v3    # "x0":F
    .local v5, "clipPoint1":Lcom/itextpdf/kernel/geom/Point;
    .restart local v17    # "x0":F
    float-to-double v2, v7

    move-object/from16 v16, v5

    .end local v5    # "clipPoint1":Lcom/itextpdf/kernel/geom/Point;
    .local v16, "clipPoint1":Lcom/itextpdf/kernel/geom/Point;
    float-to-double v5, v8

    mul-float v19, v14, v4

    sub-float v4, v1, v19

    move/from16 v20, v14

    move/from16 v19, v15

    .end local v14    # "innerRadiusBefore":F
    .end local v15    # "y3":F
    .restart local v19    # "y3":F
    .local v20, "innerRadiusBefore":F
    float-to-double v14, v4

    move v4, v10

    .end local v10    # "x2":F
    .local v4, "x2":F
    float-to-double v9, v8

    move/from16 v31, v7

    move/from16 v23, v8

    .end local v7    # "y0":F
    .end local v8    # "x1":F
    .local v23, "x1":F
    .local v31, "y0":F
    float-to-double v7, v1

    move-wide/from16 v34, v12

    move-wide/from16 v36, v2

    move-wide/from16 v38, v5

    move-wide/from16 v40, v14

    move-wide/from16 v42, v9

    move-wide/from16 v44, v7

    invoke-virtual/range {v33 .. v45}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    float-to-double v5, v4

    float-to-double v7, v11

    .line 652
    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v33

    float-to-double v2, v4

    const v5, 0x3ee4dd2f    # 0.447f

    mul-float v6, v30, v5

    add-float/2addr v6, v11

    float-to-double v6, v6

    mul-float v5, v5, v29

    sub-float v13, v18, v5

    float-to-double v8, v13

    move/from16 v5, v19

    .end local v19    # "y3":F
    .local v5, "y3":F
    float-to-double v12, v5

    move/from16 v10, v18

    .end local v18    # "x3":F
    .local v10, "x3":F
    float-to-double v14, v10

    move-object/from16 v18, v0

    move/from16 v19, v1

    .end local v0    # "clipPoint2":Lcom/itextpdf/kernel/geom/Point;
    .end local v1    # "y1":F
    .local v18, "clipPoint2":Lcom/itextpdf/kernel/geom/Point;
    .local v19, "y1":F
    float-to-double v0, v5

    .line 653
    move-wide/from16 v34, v2

    move-wide/from16 v36, v6

    move-wide/from16 v38, v8

    move-wide/from16 v40, v12

    move-wide/from16 v42, v14

    move-wide/from16 v44, v0

    invoke-virtual/range {v33 .. v45}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 654
    move/from16 v18, v10

    move/from16 v16, v17

    move/from16 v9, v19

    move/from16 v8, v23

    move/from16 v17, v31

    move v10, v4

    move/from16 v19, v5

    goto/16 :goto_4

    .line 589
    .end local v4    # "x2":F
    .end local v5    # "y3":F
    .end local v20    # "innerRadiusBefore":F
    .end local v23    # "x1":F
    .end local v24    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .end local v25    # "horizontalRadius2":F
    .end local v26    # "verticalRadius2":F
    .end local v27    # "verticalRadius1":F
    .end local v28    # "horizontalRadius1":F
    .end local v29    # "innerRadiusSecond":F
    .end local v30    # "innerRadiusAfter":F
    .end local v31    # "y0":F
    .end local v32    # "innerRadiusFirst":F
    .local v0, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .restart local v8    # "x1":F
    .local v9, "y1":F
    .local v10, "x2":F
    .restart local v12    # "horizontalRadius1":F
    .local v13, "horizontalRadius2":F
    .local v14, "verticalRadius1":F
    .local v15, "verticalRadius2":F
    .local v16, "x0":F
    .local v17, "y0":F
    .local v18, "x3":F
    .local v19, "y3":F
    :pswitch_1
    move-object/from16 v24, v0

    move v3, v8

    move/from16 v31, v9

    move/from16 v28, v12

    move/from16 v25, v13

    move/from16 v27, v14

    move/from16 v26, v15

    .end local v0    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .end local v8    # "x1":F
    .end local v9    # "y1":F
    .end local v12    # "horizontalRadius1":F
    .end local v13    # "horizontalRadius2":F
    .end local v14    # "verticalRadius1":F
    .end local v15    # "verticalRadius2":F
    .local v3, "x1":F
    .restart local v24    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .restart local v25    # "horizontalRadius2":F
    .restart local v26    # "verticalRadius2":F
    .restart local v27    # "verticalRadius1":F
    .restart local v28    # "horizontalRadius1":F
    .local v31, "y1":F
    sub-float v12, v28, p6

    invoke-static {v4, v12}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 590
    .local v0, "innerRadiusBefore":F
    move-object/from16 v1, p0

    iget v2, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v14, v27, v2

    invoke-static {v4, v14}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 591
    .local v2, "innerRadiusFirst":F
    iget v5, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v15, v26, v5

    invoke-static {v4, v15}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 592
    .local v5, "innerRadiusSecond":F
    sub-float v13, v25, p7

    invoke-static {v4, v13}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 594
    .local v4, "innerRadiusAfter":F
    div-float v6, p6, v20

    add-float v6, v16, v6

    .line 595
    .end local v16    # "x0":F
    .local v6, "x0":F
    add-float v7, v17, v2

    .line 597
    .end local v17    # "y0":F
    .restart local v7    # "y0":F
    div-float v8, p7, v20

    sub-float v8, v18, v8

    .line 598
    .end local v18    # "x3":F
    .local v8, "x3":F
    add-float v9, v19, v5

    .line 600
    .end local v19    # "y3":F
    .local v9, "y3":F
    new-instance v12, Lcom/itextpdf/kernel/geom/Point;

    add-float v13, v3, p6

    float-to-double v13, v13

    iget v15, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v15, v31, v15

    move/from16 v30, v4

    move/from16 v29, v5

    .end local v4    # "innerRadiusAfter":F
    .end local v5    # "innerRadiusSecond":F
    .restart local v29    # "innerRadiusSecond":F
    .restart local v30    # "innerRadiusAfter":F
    float-to-double v4, v15

    invoke-direct {v12, v13, v14, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v13, v3

    move v15, v3

    move/from16 v5, v31

    move/from16 v31, v2

    .end local v2    # "innerRadiusFirst":F
    .end local v3    # "x1":F
    .local v5, "y1":F
    .local v15, "x1":F
    .local v31, "innerRadiusFirst":F
    float-to-double v2, v5

    invoke-direct {v4, v13, v14, v2, v3}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v13, v6

    move v3, v8

    move/from16 v16, v9

    .end local v8    # "x3":F
    .end local v9    # "y3":F
    .local v3, "x3":F
    .local v16, "y3":F
    float-to-double v8, v7

    invoke-direct {v2, v13, v14, v8, v9}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v8, Lcom/itextpdf/kernel/geom/Point;

    const/high16 v9, 0x41200000    # 10.0f

    sub-float v13, v6, v9

    float-to-double v13, v13

    move/from16 v32, v5

    move v9, v6

    .end local v5    # "y1":F
    .end local v6    # "x0":F
    .local v9, "x0":F
    .local v32, "y1":F
    float-to-double v5, v7

    invoke-direct {v8, v13, v14, v5, v6}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v1, v12, v4, v2, v8}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    .line 601
    .local v2, "clipPoint1":Lcom/itextpdf/kernel/geom/Point;
    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    sub-float v5, v10, p7

    float-to-double v5, v5

    iget v8, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v8, v11, v8

    float-to-double v12, v8

    invoke-direct {v4, v5, v6, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v12, v10

    move v6, v9

    .end local v9    # "x0":F
    .restart local v6    # "x0":F
    float-to-double v8, v11

    invoke-direct {v5, v12, v13, v8, v9}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v8, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v12, v3

    move v14, v7

    move/from16 v9, v16

    move/from16 v16, v6

    .end local v6    # "x0":F
    .end local v7    # "y0":F
    .local v9, "y3":F
    .local v14, "y0":F
    .local v16, "x0":F
    float-to-double v6, v9

    invoke-direct {v8, v12, v13, v6, v7}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v6, Lcom/itextpdf/kernel/geom/Point;

    const/high16 v7, 0x41200000    # 10.0f

    add-float/2addr v7, v3

    float-to-double v12, v7

    move v7, v10

    move/from16 v33, v11

    .end local v10    # "x2":F
    .end local v11    # "y2":F
    .local v7, "x2":F
    .restart local v33    # "y2":F
    float-to-double v10, v9

    invoke-direct {v6, v12, v13, v10, v11}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v1, v4, v5, v8, v6}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v4

    .line 602
    .local v4, "clipPoint2":Lcom/itextpdf/kernel/geom/Point;
    iget-wide v5, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v10, v4, Lcom/itextpdf/kernel/geom/Point;->x:D

    cmpg-double v5, v5, v10

    if-gez v5, :cond_1

    .line 603
    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    add-float v8, v15, p6

    float-to-double v10, v8

    iget v6, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v6, v32, v6

    float-to-double v12, v6

    invoke-direct {v5, v10, v11, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v6, Lcom/itextpdf/kernel/geom/Point;

    sub-float v10, v7, p7

    float-to-double v10, v10

    iget v8, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v8, v33, v8

    float-to-double v12, v8

    invoke-direct {v6, v10, v11, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v1, v5, v2, v4, v6}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v5

    .line 604
    .local v5, "clipPoint":Lcom/itextpdf/kernel/geom/Point;
    add-float v8, v15, p6

    float-to-double v10, v8

    iget v6, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v6, v32, v6

    float-to-double v12, v6

    move-object/from16 v6, p1

    invoke-virtual {v6, v10, v11, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v8

    iget-wide v10, v5, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v12, v5, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v8, v10, v11, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v8

    sub-float v10, v7, p7

    float-to-double v10, v10

    iget v12, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v12, v33, v12

    float-to-double v12, v12

    invoke-virtual {v8, v10, v11, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v8

    add-float v10, v15, p6

    float-to-double v10, v10

    iget v12, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v12, v32, v12

    float-to-double v12, v12

    invoke-virtual {v8, v10, v11, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 606
    .end local v5    # "clipPoint":Lcom/itextpdf/kernel/geom/Point;
    :cond_1
    move-object/from16 v6, p1

    add-float v8, v15, p6

    float-to-double v10, v8

    iget v5, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v5, v32, v5

    float-to-double v12, v5

    invoke-virtual {v6, v10, v11, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    iget-wide v10, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v12, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v5, v10, v11, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    iget-wide v10, v4, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v12, v4, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v5, v10, v11, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    sub-float v10, v7, p7

    float-to-double v10, v10

    iget v8, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v8, v33, v8

    float-to-double v12, v8

    invoke-virtual {v5, v10, v11, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    add-float v8, v15, p6

    float-to-double v10, v8

    iget v8, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v8, v32, v8

    float-to-double v12, v8

    invoke-virtual {v5, v10, v11, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 608
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 610
    sub-float v8, v15, v0

    .line 611
    .end local v15    # "x1":F
    .local v8, "x1":F
    sub-float v5, v32, v21

    .line 613
    .end local v32    # "y1":F
    .local v5, "y1":F
    add-float v10, v7, v30

    .line 614
    .end local v7    # "x2":F
    .restart local v10    # "x2":F
    sub-float v11, v33, v21

    .line 616
    .end local v33    # "y2":F
    .restart local v11    # "y2":F
    move/from16 v7, v16

    .end local v16    # "x0":F
    .local v7, "x0":F
    float-to-double v12, v7

    move-object/from16 v16, v2

    .end local v2    # "clipPoint1":Lcom/itextpdf/kernel/geom/Point;
    .local v16, "clipPoint1":Lcom/itextpdf/kernel/geom/Point;
    float-to-double v1, v14

    .line 617
    invoke-virtual {v6, v12, v13, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v32

    float-to-double v1, v7

    const v12, 0x3ee4dd2f    # 0.447f

    mul-float v13, v31, v12

    sub-float v13, v14, v13

    move v15, v14

    .end local v14    # "y0":F
    .local v15, "y0":F
    float-to-double v13, v13

    mul-float v17, v0, v12

    add-float v12, v8, v17

    move/from16 v17, v7

    .end local v7    # "x0":F
    .local v17, "x0":F
    float-to-double v6, v12

    move v12, v3

    move-object/from16 v18, v4

    .end local v3    # "x3":F
    .end local v4    # "clipPoint2":Lcom/itextpdf/kernel/geom/Point;
    .local v12, "x3":F
    .local v18, "clipPoint2":Lcom/itextpdf/kernel/geom/Point;
    float-to-double v3, v5

    move/from16 v19, v11

    move/from16 v20, v12

    .end local v11    # "y2":F
    .end local v12    # "x3":F
    .local v19, "y2":F
    .local v20, "x3":F
    float-to-double v11, v8

    move/from16 v45, v8

    move/from16 v23, v9

    .end local v8    # "x1":F
    .end local v9    # "y3":F
    .local v23, "y3":F
    .local v45, "x1":F
    float-to-double v8, v5

    move-wide/from16 v33, v1

    move-wide/from16 v35, v13

    move-wide/from16 v37, v6

    move-wide/from16 v39, v3

    move-wide/from16 v41, v11

    move-wide/from16 v43, v8

    invoke-virtual/range {v32 .. v44}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    float-to-double v2, v10

    move/from16 v11, v19

    .end local v19    # "y2":F
    .restart local v11    # "y2":F
    float-to-double v6, v11

    .line 618
    invoke-virtual {v1, v2, v3, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v32

    const v1, 0x3ee4dd2f    # 0.447f

    mul-float v4, v30, v1

    sub-float v2, v10, v4

    float-to-double v2, v2

    float-to-double v6, v11

    move/from16 v4, v20

    .end local v20    # "x3":F
    .local v4, "x3":F
    float-to-double v8, v4

    mul-float v1, v1, v29

    sub-float v1, v23, v1

    float-to-double v12, v1

    move v14, v0

    .end local v0    # "innerRadiusBefore":F
    .local v14, "innerRadiusBefore":F
    float-to-double v0, v4

    move/from16 v19, v10

    move/from16 v22, v11

    move/from16 v4, v23

    .end local v10    # "x2":F
    .end local v11    # "y2":F
    .end local v23    # "y3":F
    .local v4, "y3":F
    .local v19, "x2":F
    .restart local v20    # "x3":F
    .local v22, "y2":F
    float-to-double v10, v4

    .line 619
    move-wide/from16 v33, v2

    move-wide/from16 v35, v6

    move-wide/from16 v37, v8

    move-wide/from16 v39, v12

    move-wide/from16 v41, v0

    move-wide/from16 v43, v10

    invoke-virtual/range {v32 .. v44}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 621
    move v9, v5

    move/from16 v16, v17

    move/from16 v10, v19

    move/from16 v18, v20

    move/from16 v11, v22

    move/from16 v8, v45

    move/from16 v19, v4

    move/from16 v17, v15

    goto/16 :goto_4

    .line 555
    .end local v4    # "y3":F
    .end local v5    # "y1":F
    .end local v20    # "x3":F
    .end local v22    # "y2":F
    .end local v24    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .end local v25    # "horizontalRadius2":F
    .end local v26    # "verticalRadius2":F
    .end local v27    # "verticalRadius1":F
    .end local v28    # "horizontalRadius1":F
    .end local v29    # "innerRadiusSecond":F
    .end local v30    # "innerRadiusAfter":F
    .end local v31    # "innerRadiusFirst":F
    .end local v45    # "x1":F
    .local v0, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .restart local v8    # "x1":F
    .local v9, "y1":F
    .restart local v10    # "x2":F
    .restart local v11    # "y2":F
    .local v12, "horizontalRadius1":F
    .restart local v13    # "horizontalRadius2":F
    .local v14, "verticalRadius1":F
    .local v15, "verticalRadius2":F
    .local v16, "x0":F
    .local v17, "y0":F
    .local v18, "x3":F
    .local v19, "y3":F
    :pswitch_2
    move-object/from16 v24, v0

    move/from16 v32, v9

    move v7, v10

    move/from16 v33, v11

    move/from16 v28, v12

    move/from16 v25, v13

    move/from16 v27, v14

    move/from16 v26, v15

    move v15, v8

    .end local v0    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .end local v8    # "x1":F
    .end local v9    # "y1":F
    .end local v10    # "x2":F
    .end local v11    # "y2":F
    .end local v12    # "horizontalRadius1":F
    .end local v13    # "horizontalRadius2":F
    .end local v14    # "verticalRadius1":F
    .local v7, "x2":F
    .local v15, "x1":F
    .restart local v24    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .restart local v25    # "horizontalRadius2":F
    .restart local v26    # "verticalRadius2":F
    .restart local v27    # "verticalRadius1":F
    .restart local v28    # "horizontalRadius1":F
    .restart local v32    # "y1":F
    .restart local v33    # "y2":F
    sub-float v14, v27, p6

    invoke-static {v4, v14}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 556
    .local v0, "innerRadiusBefore":F
    move-object/from16 v1, p0

    iget v2, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v12, v28, v2

    invoke-static {v4, v12}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 557
    .local v2, "innerRadiusFirst":F
    iget v3, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v13, v25, v3

    invoke-static {v4, v13}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 558
    .local v3, "innerRadiusSecond":F
    sub-float v5, v26, p7

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 560
    .local v4, "innerRadiusAfter":F
    sub-float v5, v16, v2

    .line 561
    .end local v16    # "x0":F
    .local v5, "x0":F
    div-float v6, p6, v20

    add-float v6, v17, v6

    .line 563
    .end local v17    # "y0":F
    .local v6, "y0":F
    sub-float v8, v18, v3

    .line 564
    .end local v18    # "x3":F
    .local v8, "x3":F
    div-float v9, p7, v20

    sub-float v9, v19, v9

    .line 566
    .end local v19    # "y3":F
    .local v9, "y3":F
    new-instance v10, Lcom/itextpdf/kernel/geom/Point;

    iget v11, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float/2addr v11, v15

    float-to-double v11, v11

    add-float v13, v32, p6

    float-to-double v13, v13

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v11, Lcom/itextpdf/kernel/geom/Point;

    move v12, v15

    .end local v15    # "x1":F
    .local v12, "x1":F
    float-to-double v13, v12

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v15, v32

    .end local v2    # "innerRadiusFirst":F
    .end local v3    # "innerRadiusSecond":F
    .end local v32    # "y1":F
    .local v15, "y1":F
    .local v29, "innerRadiusFirst":F
    .local v30, "innerRadiusSecond":F
    float-to-double v2, v15

    invoke-direct {v11, v13, v14, v2, v3}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v13, v5

    move/from16 v31, v4

    .end local v4    # "innerRadiusAfter":F
    .local v31, "innerRadiusAfter":F
    float-to-double v3, v6

    invoke-direct {v2, v13, v14, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v13, v5

    move/from16 v16, v5

    const/high16 v4, 0x41200000    # 10.0f

    .end local v5    # "x0":F
    .restart local v16    # "x0":F
    sub-float v5, v6, v4

    float-to-double v4, v5

    invoke-direct {v3, v13, v14, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v1, v10, v11, v2, v3}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    .line 567
    .local v2, "clipPoint1":Lcom/itextpdf/kernel/geom/Point;
    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    iget v4, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float v10, v7, v4

    float-to-double v4, v10

    sub-float v11, v33, p7

    float-to-double v10, v11

    invoke-direct {v3, v4, v5, v10, v11}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v10, v7

    move/from16 v5, v33

    .end local v33    # "y2":F
    .local v5, "y2":F
    float-to-double v13, v5

    invoke-direct {v4, v10, v11, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v10, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v13, v8

    move v11, v6

    .end local v5    # "y2":F
    .end local v6    # "y0":F
    .local v11, "y0":F
    .restart local v33    # "y2":F
    float-to-double v5, v9

    invoke-direct {v10, v13, v14, v5, v6}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v13, v8

    const/high16 v6, 0x41200000    # 10.0f

    sub-float v6, v9, v6

    move/from16 v17, v8

    move/from16 v18, v9

    .end local v8    # "x3":F
    .end local v9    # "y3":F
    .local v17, "x3":F
    .local v18, "y3":F
    float-to-double v8, v6

    invoke-direct {v5, v13, v14, v8, v9}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v1, v3, v4, v10, v5}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v3

    .line 568
    .local v3, "clipPoint2":Lcom/itextpdf/kernel/geom/Point;
    iget-wide v4, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v8, v3, Lcom/itextpdf/kernel/geom/Point;->y:D

    cmpg-double v4, v4, v8

    if-gez v4, :cond_2

    .line 569
    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    iget v5, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float v8, v12, v5

    float-to-double v5, v8

    add-float v9, v15, p6

    float-to-double v8, v9

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    iget v6, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float v10, v7, v6

    float-to-double v8, v10

    sub-float v6, v33, p7

    float-to-double v13, v6

    invoke-direct {v5, v8, v9, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v4

    .line 570
    .local v4, "clipPoint":Lcom/itextpdf/kernel/geom/Point;
    iget v5, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float v8, v12, v5

    float-to-double v5, v8

    add-float v9, v15, p6

    float-to-double v8, v9

    move-object/from16 v10, p1

    invoke-virtual {v10, v5, v6, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    iget-wide v8, v4, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v13, v4, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v5, v8, v9, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    iget v6, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float/2addr v6, v7

    float-to-double v8, v6

    sub-float v6, v33, p7

    float-to-double v13, v6

    invoke-virtual {v5, v8, v9, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    iget v6, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float v8, v12, v6

    float-to-double v8, v8

    add-float v6, v15, p6

    float-to-double v13, v6

    invoke-virtual {v5, v8, v9, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_2

    .line 572
    .end local v4    # "clipPoint":Lcom/itextpdf/kernel/geom/Point;
    :cond_2
    move-object/from16 v10, p1

    iget v4, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float v8, v12, v4

    float-to-double v4, v8

    add-float v9, v15, p6

    float-to-double v8, v9

    invoke-virtual {v10, v4, v5, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    iget-wide v5, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v8, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    iget-wide v5, v3, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v8, v3, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    iget v5, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float/2addr v5, v7

    float-to-double v5, v5

    sub-float v8, v33, p7

    float-to-double v8, v8

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    iget v5, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float v8, v12, v5

    float-to-double v5, v8

    add-float v9, v15, p6

    float-to-double v8, v9

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 574
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 576
    add-float v8, v12, v21

    .line 577
    .end local v12    # "x1":F
    .local v8, "x1":F
    sub-float v9, v15, v0

    .line 579
    .end local v15    # "y1":F
    .local v9, "y1":F
    add-float v4, v7, v21

    .line 580
    .end local v7    # "x2":F
    .local v4, "x2":F
    add-float v5, v33, v31

    .line 582
    .end local v33    # "y2":F
    .restart local v5    # "y2":F
    move/from16 v6, v16

    .end local v16    # "x0":F
    .local v6, "x0":F
    float-to-double v12, v6

    move v7, v11

    .end local v11    # "y0":F
    .local v7, "y0":F
    float-to-double v14, v7

    .line 583
    invoke-virtual {v10, v12, v13, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v32

    const v11, 0x3ee4dd2f    # 0.447f

    mul-float v12, v29, v11

    add-float/2addr v12, v6

    float-to-double v12, v12

    float-to-double v14, v7

    move-object/from16 v16, v2

    move-object/from16 v19, v3

    .end local v2    # "clipPoint1":Lcom/itextpdf/kernel/geom/Point;
    .end local v3    # "clipPoint2":Lcom/itextpdf/kernel/geom/Point;
    .local v16, "clipPoint1":Lcom/itextpdf/kernel/geom/Point;
    .local v19, "clipPoint2":Lcom/itextpdf/kernel/geom/Point;
    float-to-double v2, v8

    mul-float v20, v0, v11

    add-float v11, v9, v20

    move/from16 v20, v6

    move/from16 v23, v7

    .end local v6    # "x0":F
    .end local v7    # "y0":F
    .local v20, "x0":F
    .local v23, "y0":F
    float-to-double v6, v11

    float-to-double v10, v8

    move/from16 v45, v0

    .end local v0    # "innerRadiusBefore":F
    .local v45, "innerRadiusBefore":F
    float-to-double v0, v9

    move-wide/from16 v33, v12

    move-wide/from16 v35, v14

    move-wide/from16 v37, v2

    move-wide/from16 v39, v6

    move-wide/from16 v41, v10

    move-wide/from16 v43, v0

    invoke-virtual/range {v32 .. v44}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    float-to-double v1, v4

    float-to-double v6, v5

    .line 584
    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v32

    float-to-double v0, v4

    const v2, 0x3ee4dd2f    # 0.447f

    mul-float v3, v31, v2

    sub-float v3, v5, v3

    float-to-double v6, v3

    mul-float v3, v30, v2

    add-float v2, v17, v3

    float-to-double v2, v2

    move/from16 v10, v18

    .end local v18    # "y3":F
    .local v10, "y3":F
    float-to-double v11, v10

    move/from16 v13, v17

    .end local v17    # "x3":F
    .local v13, "x3":F
    float-to-double v14, v13

    move/from16 v17, v4

    move/from16 v18, v5

    .end local v4    # "x2":F
    .end local v5    # "y2":F
    .local v17, "x2":F
    .local v18, "y2":F
    float-to-double v4, v10

    .line 585
    move-wide/from16 v33, v0

    move-wide/from16 v35, v6

    move-wide/from16 v37, v2

    move-wide/from16 v39, v11

    move-wide/from16 v41, v14

    move-wide/from16 v43, v4

    invoke-virtual/range {v32 .. v44}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 587
    move/from16 v19, v10

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v16, v20

    move/from16 v17, v23

    move/from16 v18, v13

    goto/16 :goto_4

    .line 521
    .end local v20    # "x0":F
    .end local v23    # "y0":F
    .end local v24    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .end local v25    # "horizontalRadius2":F
    .end local v26    # "verticalRadius2":F
    .end local v27    # "verticalRadius1":F
    .end local v28    # "horizontalRadius1":F
    .end local v29    # "innerRadiusFirst":F
    .end local v30    # "innerRadiusSecond":F
    .end local v31    # "innerRadiusAfter":F
    .end local v45    # "innerRadiusBefore":F
    .local v0, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .local v10, "x2":F
    .local v11, "y2":F
    .local v12, "horizontalRadius1":F
    .local v13, "horizontalRadius2":F
    .restart local v14    # "verticalRadius1":F
    .local v15, "verticalRadius2":F
    .local v16, "x0":F
    .local v17, "y0":F
    .local v18, "x3":F
    .local v19, "y3":F
    :pswitch_3
    move-object/from16 v24, v0

    move v7, v10

    move/from16 v33, v11

    move/from16 v28, v12

    move/from16 v25, v13

    move/from16 v27, v14

    move/from16 v26, v15

    move v12, v8

    move v15, v9

    .end local v0    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .end local v8    # "x1":F
    .end local v9    # "y1":F
    .end local v10    # "x2":F
    .end local v11    # "y2":F
    .end local v13    # "horizontalRadius2":F
    .end local v14    # "verticalRadius1":F
    .local v7, "x2":F
    .local v12, "x1":F
    .local v15, "y1":F
    .restart local v24    # "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    .restart local v25    # "horizontalRadius2":F
    .restart local v26    # "verticalRadius2":F
    .restart local v27    # "verticalRadius1":F
    .restart local v28    # "horizontalRadius1":F
    .restart local v33    # "y2":F
    sub-float v0, v28, p6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 522
    .local v0, "innerRadiusBefore":F
    move-object/from16 v1, p0

    iget v2, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v14, v27, v2

    invoke-static {v4, v14}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 523
    .local v2, "innerRadiusFirst":F
    iget v3, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    sub-float v3, v26, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 524
    .local v3, "innerRadiusSecond":F
    sub-float v13, v25, p7

    invoke-static {v4, v13}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 527
    .local v4, "innerRadiusAfter":F
    div-float v5, p6, v20

    sub-float v5, v16, v5

    .line 528
    .end local v16    # "x0":F
    .local v5, "x0":F
    sub-float v6, v17, v2

    .line 530
    .end local v17    # "y0":F
    .local v6, "y0":F
    div-float v8, p7, v20

    add-float v8, v18, v8

    .line 531
    .end local v18    # "x3":F
    .local v8, "x3":F
    sub-float v9, v19, v3

    .line 533
    .end local v19    # "y3":F
    .local v9, "y3":F
    new-instance v10, Lcom/itextpdf/kernel/geom/Point;

    sub-float v11, v12, p6

    float-to-double v13, v11

    iget v11, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float/2addr v11, v15

    move/from16 v20, v2

    move/from16 v29, v3

    .end local v2    # "innerRadiusFirst":F
    .end local v3    # "innerRadiusSecond":F
    .local v20, "innerRadiusFirst":F
    .local v29, "innerRadiusSecond":F
    float-to-double v2, v11

    invoke-direct {v10, v13, v14, v2, v3}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v13, v12

    move v11, v4

    .end local v4    # "innerRadiusAfter":F
    .local v11, "innerRadiusAfter":F
    float-to-double v3, v15

    invoke-direct {v2, v13, v14, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v13, v5

    move/from16 v16, v11

    move v4, v12

    .end local v11    # "innerRadiusAfter":F
    .end local v12    # "x1":F
    .local v4, "x1":F
    .local v16, "innerRadiusAfter":F
    float-to-double v11, v6

    invoke-direct {v3, v13, v14, v11, v12}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v11, Lcom/itextpdf/kernel/geom/Point;

    const/high16 v12, 0x41200000    # 10.0f

    add-float v13, v5, v12

    float-to-double v12, v13

    move/from16 v31, v15

    .end local v15    # "y1":F
    .local v31, "y1":F
    float-to-double v14, v6

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v1, v10, v2, v3, v11}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    .line 534
    .local v2, "clipPoint1":Lcom/itextpdf/kernel/geom/Point;
    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    add-float v10, v7, p7

    float-to-double v10, v10

    iget v12, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float v12, v33, v12

    float-to-double v12, v12

    invoke-direct {v3, v10, v11, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v10, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v11, v7

    move/from16 v13, v33

    .end local v33    # "y2":F
    .local v13, "y2":F
    float-to-double v14, v13

    invoke-direct {v10, v11, v12, v14, v15}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v11, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v14, v8

    move v12, v5

    move/from16 v17, v6

    .end local v5    # "x0":F
    .end local v6    # "y0":F
    .local v12, "x0":F
    .restart local v17    # "y0":F
    float-to-double v5, v9

    invoke-direct {v11, v14, v15, v5, v6}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    const/high16 v6, 0x41200000    # 10.0f

    sub-float v6, v8, v6

    float-to-double v14, v6

    move v6, v12

    .end local v12    # "x0":F
    .end local v13    # "y2":F
    .local v6, "x0":F
    .restart local v33    # "y2":F
    float-to-double v12, v9

    invoke-direct {v5, v14, v15, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v1, v3, v10, v11, v5}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v3

    .line 535
    .local v3, "clipPoint2":Lcom/itextpdf/kernel/geom/Point;
    iget-wide v10, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v12, v3, Lcom/itextpdf/kernel/geom/Point;->x:D

    cmpl-double v5, v10, v12

    if-lez v5, :cond_3

    .line 536
    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    sub-float v10, v4, p6

    float-to-double v10, v10

    iget v12, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float v12, v31, v12

    float-to-double v12, v12

    invoke-direct {v5, v10, v11, v12, v13}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    new-instance v10, Lcom/itextpdf/kernel/geom/Point;

    add-float v11, v7, p7

    float-to-double v11, v11

    iget v13, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float v13, v33, v13

    float-to-double v13, v13

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-virtual {v1, v5, v2, v3, v10}, Lcom/itextpdf/layout/borders/Border;->getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v5

    .line 537
    .local v5, "clipPoint":Lcom/itextpdf/kernel/geom/Point;
    sub-float v10, v4, p6

    float-to-double v10, v10

    iget v12, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float v12, v31, v12

    float-to-double v12, v12

    move-object/from16 v14, p1

    invoke-virtual {v14, v10, v11, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v10

    iget-wide v11, v5, Lcom/itextpdf/kernel/geom/Point;->x:D

    move v13, v8

    move v15, v9

    .end local v8    # "x3":F
    .end local v9    # "y3":F
    .local v13, "x3":F
    .local v15, "y3":F
    iget-wide v8, v5, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v10, v11, v12, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v8

    add-float v10, v7, p7

    float-to-double v9, v10

    iget v11, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float v11, v33, v11

    float-to-double v11, v11

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v8

    sub-float v9, v4, p6

    float-to-double v9, v9

    iget v11, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float v11, v31, v11

    float-to-double v11, v11

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_3

    .line 539
    .end local v5    # "clipPoint":Lcom/itextpdf/kernel/geom/Point;
    .end local v13    # "x3":F
    .end local v15    # "y3":F
    .restart local v8    # "x3":F
    .restart local v9    # "y3":F
    :cond_3
    move-object/from16 v14, p1

    move v13, v8

    move v15, v9

    .end local v8    # "x3":F
    .end local v9    # "y3":F
    .restart local v13    # "x3":F
    .restart local v15    # "y3":F
    sub-float v8, v4, p6

    float-to-double v8, v8

    iget v5, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float v5, v31, v5

    float-to-double v10, v5

    invoke-virtual {v14, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    iget-wide v8, v2, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v10, v2, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    iget-wide v8, v3, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v10, v3, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    add-float v10, v7, p7

    float-to-double v8, v10

    iget v10, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float v11, v33, v10

    float-to-double v10, v11

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    sub-float v8, v4, p6

    float-to-double v8, v8

    iget v10, v1, Lcom/itextpdf/layout/borders/Border;->width:F

    add-float v10, v31, v10

    float-to-double v10, v10

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 541
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 543
    add-float v8, v4, v0

    .line 544
    .end local v4    # "x1":F
    .local v8, "x1":F
    add-float v9, v31, v21

    .line 546
    .end local v31    # "y1":F
    .local v9, "y1":F
    sub-float v10, v7, v16

    .line 547
    .end local v7    # "x2":F
    .restart local v10    # "x2":F
    add-float v11, v33, v21

    .line 549
    .end local v33    # "y2":F
    .local v11, "y2":F
    move v4, v6

    .end local v6    # "x0":F
    .local v4, "x0":F
    float-to-double v5, v4

    move-object v12, v2

    move/from16 v7, v17

    .end local v2    # "clipPoint1":Lcom/itextpdf/kernel/geom/Point;
    .end local v17    # "y0":F
    .local v7, "y0":F
    .local v12, "clipPoint1":Lcom/itextpdf/kernel/geom/Point;
    float-to-double v1, v7

    .line 550
    invoke-virtual {v14, v5, v6, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v30

    float-to-double v1, v4

    const v5, 0x3ee4dd2f    # 0.447f

    mul-float v6, v20, v5

    add-float/2addr v6, v7

    move-object/from16 v17, v3

    move/from16 v18, v4

    .end local v3    # "clipPoint2":Lcom/itextpdf/kernel/geom/Point;
    .end local v4    # "x0":F
    .local v17, "clipPoint2":Lcom/itextpdf/kernel/geom/Point;
    .local v18, "x0":F
    float-to-double v3, v6

    mul-float v6, v0, v5

    sub-float v5, v8, v6

    float-to-double v5, v5

    move-object/from16 v23, v12

    move/from16 v19, v13

    .end local v12    # "clipPoint1":Lcom/itextpdf/kernel/geom/Point;
    .end local v13    # "x3":F
    .local v19, "x3":F
    .local v23, "clipPoint1":Lcom/itextpdf/kernel/geom/Point;
    float-to-double v12, v9

    move/from16 v43, v15

    .end local v15    # "y3":F
    .local v43, "y3":F
    float-to-double v14, v8

    move/from16 v45, v7

    move/from16 v44, v8

    .end local v7    # "y0":F
    .end local v8    # "x1":F
    .local v44, "x1":F
    .local v45, "y0":F
    float-to-double v7, v9

    move-wide/from16 v31, v1

    move-wide/from16 v33, v3

    move-wide/from16 v35, v5

    move-wide/from16 v37, v12

    move-wide/from16 v39, v14

    move-wide/from16 v41, v7

    invoke-virtual/range {v30 .. v42}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v1

    float-to-double v2, v10

    float-to-double v4, v11

    .line 551
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v30

    const v1, 0x3ee4dd2f    # 0.447f

    mul-float v4, v16, v1

    add-float/2addr v4, v10

    float-to-double v2, v4

    float-to-double v4, v11

    move/from16 v6, v19

    .end local v19    # "x3":F
    .local v6, "x3":F
    float-to-double v7, v6

    mul-float v1, v1, v29

    add-float v1, v43, v1

    float-to-double v12, v1

    float-to-double v14, v6

    move/from16 v19, v9

    move/from16 v22, v10

    move/from16 v1, v43

    .end local v9    # "y1":F
    .end local v10    # "x2":F
    .end local v43    # "y3":F
    .local v1, "y3":F
    .local v19, "y1":F
    .local v22, "x2":F
    float-to-double v9, v1

    .line 552
    move-wide/from16 v31, v2

    move-wide/from16 v33, v4

    move-wide/from16 v35, v7

    move-wide/from16 v37, v12

    move-wide/from16 v39, v14

    move-wide/from16 v41, v9

    invoke-virtual/range {v30 .. v42}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 553
    move/from16 v16, v18

    move/from16 v9, v19

    move/from16 v10, v22

    move/from16 v8, v44

    move/from16 v17, v45

    move/from16 v19, v1

    move/from16 v18, v6

    .line 658
    .end local v0    # "innerRadiusBefore":F
    .end local v1    # "y3":F
    .end local v6    # "x3":F
    .end local v20    # "innerRadiusFirst":F
    .end local v22    # "x2":F
    .end local v23    # "clipPoint1":Lcom/itextpdf/kernel/geom/Point;
    .end local v29    # "innerRadiusSecond":F
    .end local v44    # "x1":F
    .end local v45    # "y0":F
    .restart local v8    # "x1":F
    .restart local v9    # "y1":F
    .restart local v10    # "x2":F
    .local v16, "x0":F
    .local v17, "y0":F
    .local v18, "x3":F
    .local v19, "y3":F
    :goto_4
    nop

    .line 659
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 660
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 661
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "anObject"    # Ljava/lang/Object;

    .line 362
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 363
    return v0

    .line 365
    :cond_0
    instance-of v1, p1, Lcom/itextpdf/layout/borders/Border;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 366
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/layout/borders/Border;

    .line 367
    .local v1, "anotherBorder":Lcom/itextpdf/layout/borders/Border;
    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getType()I

    move-result v3

    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/Border;->getType()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 368
    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v3

    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/Border;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/colors/Color;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 369
    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 370
    invoke-virtual {v3}, Lcom/itextpdf/layout/property/TransparentColor;->getOpacity()F

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v4}, Lcom/itextpdf/layout/property/TransparentColor;->getOpacity()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    goto :goto_0

    .line 373
    .end local v1    # "anotherBorder":Lcom/itextpdf/layout/borders/Border;
    :cond_1
    nop

    .line 376
    return v0

    .line 371
    .restart local v1    # "anotherBorder":Lcom/itextpdf/layout/borders/Border;
    :cond_2
    :goto_0
    return v2

    .line 374
    .end local v1    # "anotherBorder":Lcom/itextpdf/layout/borders/Border;
    :cond_3
    return v2
.end method

.method protected getBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)Lcom/itextpdf/layout/borders/Border$Side;
    .locals 9
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "defaultSide"    # Lcom/itextpdf/layout/borders/Border$Side;

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "isLeft":Z
    const/4 v1, 0x0

    .line 410
    .local v1, "isRight":Z
    sub-float v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a03126f    # 5.0E-4f

    cmpl-float v2, v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-lez v2, :cond_2

    .line 411
    sub-float v2, p4, p2

    cmpl-float v2, v2, v6

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    move v0, v2

    .line 412
    sub-float v2, p4, p2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    move v1, v2

    .line 415
    :cond_2
    const/4 v2, 0x0

    .line 416
    .local v2, "isTop":Z
    const/4 v7, 0x0

    .line 417
    .local v7, "isBottom":Z
    sub-float v8, p3, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v3, v8, v3

    if-lez v3, :cond_5

    .line 418
    sub-float v3, p3, p1

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    move v2, v3

    .line 419
    sub-float v3, p3, p1

    cmpg-float v3, v3, v6

    if-gez v3, :cond_4

    goto :goto_3

    :cond_4
    move v4, v5

    :goto_3
    move v7, v4

    .line 422
    :cond_5
    if-eqz v2, :cond_7

    .line 423
    if-eqz v0, :cond_6

    sget-object v3, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    goto :goto_4

    :cond_6
    sget-object v3, Lcom/itextpdf/layout/borders/Border$Side;->TOP:Lcom/itextpdf/layout/borders/Border$Side;

    :goto_4
    return-object v3

    .line 424
    :cond_7
    if-eqz v1, :cond_8

    .line 425
    sget-object v3, Lcom/itextpdf/layout/borders/Border$Side;->RIGHT:Lcom/itextpdf/layout/borders/Border$Side;

    return-object v3

    .line 426
    :cond_8
    if-eqz v7, :cond_9

    .line 427
    sget-object v3, Lcom/itextpdf/layout/borders/Border$Side;->BOTTOM:Lcom/itextpdf/layout/borders/Border$Side;

    return-object v3

    .line 428
    :cond_9
    if-eqz v0, :cond_a

    .line 429
    sget-object v3, Lcom/itextpdf/layout/borders/Border$Side;->LEFT:Lcom/itextpdf/layout/borders/Border$Side;

    return-object v3

    .line 432
    :cond_a
    return-object p5
.end method

.method public getColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    return-object v0
.end method

.method protected getDotsGap(DF)F
    .locals 4
    .param p1, "distance"    # D
    .param p3, "initialGap"    # F

    .line 463
    float-to-double v0, p3

    div-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 464
    .local v0, "gapsNum":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 465
    return p3

    .line 467
    :cond_0
    div-double v2, p1, v0

    double-to-float v2, v2

    return v2
.end method

.method protected getIntersectionPoint(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;
    .locals 21
    .param p1, "lineBeg"    # Lcom/itextpdf/kernel/geom/Point;
    .param p2, "lineEnd"    # Lcom/itextpdf/kernel/geom/Point;
    .param p3, "clipLineBeg"    # Lcom/itextpdf/kernel/geom/Point;
    .param p4, "clipLineEnd"    # Lcom/itextpdf/kernel/geom/Point;

    .line 445
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .local v0, "A1":D
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 446
    .local v2, "A2":D
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .local v4, "B1":D
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    .line 447
    .local v6, "B2":D
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    .line 448
    .local v8, "C1":D
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v10

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v12

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    .line 450
    .local v10, "C2":D
    mul-double v12, v4, v2

    mul-double v14, v6, v0

    sub-double/2addr v12, v14

    .line 452
    .local v12, "M":D
    new-instance v14, Lcom/itextpdf/kernel/geom/Point;

    mul-double v15, v6, v8

    mul-double v17, v4, v10

    sub-double v15, v15, v17

    move-wide/from16 v17, v4

    .end local v4    # "B1":D
    .local v17, "B1":D
    div-double v4, v15, v12

    mul-double v15, v10, v0

    mul-double v19, v8, v2

    sub-double v15, v15, v19

    move-wide/from16 v19, v0

    .end local v0    # "A1":D
    .local v19, "A1":D
    div-double v0, v15, v12

    invoke-direct {v14, v4, v5, v0, v1}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    return-object v14
.end method

.method public getOpacity()F
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/TransparentColor;->getOpacity()F

    move-result v0

    return v0
.end method

.method protected getStartingPointsForBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)[F
    .locals 4
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "defaultSide"    # Lcom/itextpdf/layout/borders/Border$Side;

    .line 674
    iget v0, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 676
    .local v0, "widthHalf":F
    invoke-virtual/range {p0 .. p5}, Lcom/itextpdf/layout/borders/Border;->getBorderSide(FFFFLcom/itextpdf/layout/borders/Border$Side;)Lcom/itextpdf/layout/borders/Border$Side;

    move-result-object v1

    .line 677
    .local v1, "borderSide":Lcom/itextpdf/layout/borders/Border$Side;
    sget-object v2, Lcom/itextpdf/layout/borders/Border$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {v1}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 691
    :pswitch_0
    sub-float/2addr p1, v0

    .line 692
    sub-float/2addr p3, v0

    .line 693
    goto :goto_0

    .line 687
    :pswitch_1
    sub-float/2addr p2, v0

    .line 688
    sub-float/2addr p4, v0

    .line 689
    goto :goto_0

    .line 683
    :pswitch_2
    add-float/2addr p1, v0

    .line 684
    add-float/2addr p3, v0

    .line 685
    goto :goto_0

    .line 679
    :pswitch_3
    add-float/2addr p2, v0

    .line 680
    add-float/2addr p4, v0

    .line 681
    nop

    .line 697
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    const/4 v3, 0x2

    aput p3, v2, v3

    const/4 v3, 0x3

    aput p4, v2, v3

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract getType()I
.end method

.method public getWidth()F
    .locals 1

    .line 335
    iget v0, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 384
    iget v0, p0, Lcom/itextpdf/layout/borders/Border;->hash:I

    .line 386
    .local v0, "h":I
    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/Border;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/colors/Color;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 388
    .end local v0    # "h":I
    .local v1, "h":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/TransparentColor;->getOpacity()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    .line 389
    .end local v1    # "h":I
    .restart local v0    # "h":I
    iput v0, p0, Lcom/itextpdf/layout/borders/Border;->hash:I

    .line 392
    :cond_0
    return v0
.end method

.method public setColor(Lcom/itextpdf/kernel/colors/Color;)V
    .locals 2
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;

    .line 344
    new-instance v0, Lcom/itextpdf/layout/property/TransparentColor;

    iget-object v1, p0, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/TransparentColor;->getOpacity()F

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/layout/property/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    iput-object v0, p0, Lcom/itextpdf/layout/borders/Border;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 345
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .line 353
    iput p1, p0, Lcom/itextpdf/layout/borders/Border;->width:F

    .line 354
    return-void
.end method
