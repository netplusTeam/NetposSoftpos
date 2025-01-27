.class public Lcom/itextpdf/kernel/geom/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static EPS:F = 0.0f

.field private static final serialVersionUID:J = 0x6f60ef166ce11626L


# instance fields
.field protected height:F

.field protected width:F

.field protected x:F

.field protected y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const v0, 0x38d1b717    # 1.0E-4f

    sput v0, Lcom/itextpdf/kernel/geom/Rectangle;->EPS:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 93
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    .line 80
    iput p2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    .line 81
    iput p3, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    .line 82
    iput p4, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 4
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 101
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 102
    return-void
.end method

.method public static calculateBBox(Ljava/util/List;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;)",
            "Lcom/itextpdf/kernel/geom/Rectangle;"
        }
    .end annotation

    .line 173
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "xs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v1, "ys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/geom/Point;

    .line 176
    .local v3, "point":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v3    # "point":Lcom/itextpdf/kernel/geom/Point;
    goto :goto_0

    .line 180
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 181
    .local v2, "left":D
    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 182
    .local v4, "bottom":D
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 183
    .local v6, "right":D
    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 185
    .local v8, "top":D
    new-instance v10, Lcom/itextpdf/kernel/geom/Rectangle;

    double-to-float v11, v2

    double-to-float v12, v4

    sub-double v13, v6, v2

    double-to-float v13, v13

    sub-double v14, v8, v4

    double-to-float v14, v14

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v10
.end method

.method public static createBoundingRectangleFromQuadPoint(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 9
    .param p0, "quadPoints"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/PdfException;
        }
    .end annotation

    .line 709
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    const/16 v1, 0x8

    rem-int/2addr v0, v1

    if-nez v0, :cond_5

    .line 712
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 713
    .local v0, "llx":F
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 714
    .local v2, "lly":F
    const v3, -0x800001

    .line 715
    .local v3, "urx":F
    const v4, -0x800001

    .line 718
    .local v4, "ury":F
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, v1, :cond_4

    .line 719
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v6

    .line 720
    .local v6, "x":F
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v7

    .line 722
    .local v7, "y":F
    cmpg-float v8, v6, v0

    if-gez v8, :cond_0

    move v0, v6

    .line 723
    :cond_0
    cmpl-float v8, v6, v3

    if-lez v8, :cond_1

    move v3, v6

    .line 724
    :cond_1
    cmpg-float v8, v7, v2

    if-gez v8, :cond_2

    move v2, v7

    .line 725
    :cond_2
    cmpl-float v8, v7, v4

    if-lez v8, :cond_3

    move v4, v7

    .line 718
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_3
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 727
    .end local v5    # "j":I
    :cond_4
    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    sub-float v5, v3, v0

    sub-float v6, v4, v2

    invoke-direct {v1, v0, v2, v5, v6}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v1

    .line 710
    .end local v0    # "llx":F
    .end local v2    # "lly":F
    .end local v3    # "urx":F
    .end local v4    # "ury":F
    :cond_5
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "The QuadPoint Array length is not a multiple of 8."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createBoundingRectanglesFromQuadPoint(Lcom/itextpdf/kernel/pdf/PdfArray;)Ljava/util/List;
    .locals 5
    .param p0, "quadPoints"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/PdfException;
        }
    .end annotation

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v0, "boundingRectangles":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 692
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v2

    add-int/lit8 v3, v1, 0x8

    invoke-static {v2, v1, v3}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v2

    .line 694
    .local v2, "quadPointEntry":[F
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    .line 695
    .local v3, "quadPointEntryFA":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-static {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->createBoundingRectangleFromQuadPoint(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    .end local v2    # "quadPointEntry":[F
    .end local v3    # "quadPointEntryFA":Lcom/itextpdf/kernel/pdf/PdfArray;
    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 697
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 690
    :cond_1
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "The QuadPoint Array length is not a multiple of 8."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 10
    .param p0, "rectangles"    # [Lcom/itextpdf/kernel/geom/Rectangle;

    .line 111
    const v0, -0x800001

    .line 112
    .local v0, "ury":F
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 113
    .local v1, "llx":F
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 114
    .local v2, "lly":F
    const v3, -0x800001

    .line 115
    .local v3, "urx":F
    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, p0, v5

    .line 116
    .local v6, "rectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    if-nez v6, :cond_0

    .line 117
    goto :goto_1

    .line 118
    :cond_0
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    .line 119
    .local v7, "rec":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v8

    cmpg-float v8, v8, v2

    if-gez v8, :cond_1

    .line 120
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    .line 121
    :cond_1
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v8

    cmpg-float v8, v8, v1

    if-gez v8, :cond_2

    .line 122
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    .line 123
    :cond_2
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v8

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    cmpl-float v8, v8, v0

    if-lez v8, :cond_3

    .line 124
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v8

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v9

    add-float v0, v8, v9

    .line 125
    :cond_3
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v8

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v9

    add-float/2addr v8, v9

    cmpl-float v8, v8, v3

    if-lez v8, :cond_4

    .line 126
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v8

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v9

    add-float/2addr v8, v9

    move v3, v8

    .line 115
    .end local v6    # "rectangle":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v7    # "rec":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 129
    :cond_5
    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    sub-float v5, v3, v1

    sub-float v6, v0, v2

    invoke-direct {v4, v1, v2, v5, v6}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v4
.end method

.method public static getRectangleOnRotatedPage(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 8
    .param p0, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 143
    move-object v0, p0

    .line 144
    .local v0, "resultRect":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getRotation()I

    move-result v1

    .line 145
    .local v1, "rotation":I
    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPageSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 147
    .local v2, "pageSize":Lcom/itextpdf/kernel/geom/Rectangle;
    div-int/lit8 v3, v1, 0x5a

    rem-int/lit8 v3, v3, 0x4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_0
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v0, v3

    .line 156
    goto :goto_0

    .line 152
    :pswitch_1
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v0, v3

    .line 153
    goto :goto_0

    .line 149
    :pswitch_2
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v5

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v0, v3

    .line 162
    .end local v2    # "pageSize":Lcom/itextpdf/kernel/geom/Rectangle;
    :cond_0
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static linesIntersect(DDDDDDDD)Z
    .locals 25
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "x2"    # D
    .param p6, "y2"    # D
    .param p8, "x3"    # D
    .param p10, "y3"    # D
    .param p12, "x4"    # D
    .param p14, "y4"    # D

    .line 647
    sub-double v0, p4, p0

    .line 648
    .end local p4    # "x2":D
    .local v0, "x2":D
    sub-double v2, p6, p2

    .line 650
    .end local p6    # "y2":D
    .local v2, "y2":D
    sub-double v4, p8, p0

    .line 651
    .end local p8    # "x3":D
    .local v4, "x3":D
    sub-double v6, p10, p2

    .line 653
    .end local p10    # "y3":D
    .local v6, "y3":D
    sub-double v8, p12, p0

    .line 654
    .end local p12    # "x4":D
    .local v8, "x4":D
    sub-double v10, p14, p2

    .line 656
    .end local p14    # "y4":D
    .local v10, "y4":D
    mul-double v12, v0, v6

    mul-double v14, v4, v2

    sub-double/2addr v12, v14

    .line 657
    .local v12, "AvB":D
    mul-double v14, v0, v10

    mul-double v16, v8, v2

    sub-double v14, v14, v16

    .line 660
    .local v14, "AvC":D
    const-wide/16 v16, 0x0

    cmpl-double v18, v12, v16

    const/16 v19, 0x1

    const/16 v20, 0x0

    if-nez v18, :cond_8

    cmpl-double v18, v14, v16

    if-nez v18, :cond_8

    .line 661
    cmpl-double v18, v0, v16

    if-eqz v18, :cond_3

    .line 662
    mul-double v21, v8, v4

    cmpg-double v18, v21, v16

    if-lez v18, :cond_2

    mul-double v21, v4, v0

    cmpl-double v18, v21, v16

    if-ltz v18, :cond_1

    cmpl-double v16, v0, v16

    if-lez v16, :cond_0

    cmpg-double v16, v4, v0

    if-lez v16, :cond_2

    cmpg-double v16, v8, v0

    if-gtz v16, :cond_1

    goto :goto_0

    :cond_0
    cmpl-double v16, v4, v0

    if-gez v16, :cond_2

    cmpl-double v16, v8, v0

    if-ltz v16, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v19, v20

    :cond_2
    :goto_0
    return v19

    .line 667
    :cond_3
    cmpl-double v18, v2, v16

    if-eqz v18, :cond_7

    .line 668
    mul-double v21, v10, v6

    cmpg-double v18, v21, v16

    if-lez v18, :cond_6

    mul-double v21, v6, v2

    cmpl-double v18, v21, v16

    if-ltz v18, :cond_5

    cmpl-double v16, v2, v16

    if-lez v16, :cond_4

    cmpg-double v16, v6, v2

    if-lez v16, :cond_6

    cmpg-double v16, v10, v2

    if-gtz v16, :cond_5

    goto :goto_1

    :cond_4
    cmpl-double v16, v6, v2

    if-gez v16, :cond_6

    cmpl-double v16, v10, v2

    if-ltz v16, :cond_5

    goto :goto_1

    :cond_5
    move/from16 v19, v20

    :cond_6
    :goto_1
    return v19

    .line 673
    :cond_7
    return v20

    .line 676
    :cond_8
    mul-double v21, v4, v10

    mul-double v23, v8, v6

    sub-double v21, v21, v23

    .line 678
    .local v21, "BvC":D
    mul-double v23, v12, v14

    cmpg-double v18, v23, v16

    if-gtz v18, :cond_9

    add-double v23, v12, v21

    sub-double v23, v23, v14

    mul-double v23, v23, v21

    cmpg-double v16, v23, v16

    if-gtz v16, :cond_9

    goto :goto_2

    :cond_9
    move/from16 v19, v20

    :goto_2
    return v19
.end method


# virtual methods
.method public applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 5
    .param p1, "topIndent"    # F
    .param p2, "rightIndent"    # F
    .param p3, "bottomIndent"    # F
    .param p4, "leftIndent"    # F
    .param p5, "reverse"    # Z

    .line 552
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p5, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    int-to-float v3, v3

    mul-float/2addr v3, p4

    add-float/2addr v0, v3

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    .line 553
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    add-float v3, p4, p2

    if-eqz p5, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    .line 554
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    if-eqz p5, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    .line 555
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    add-float v3, p1, p3

    if-eqz p5, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    int-to-float v1, v1

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    .line 556
    return-object p0
.end method

.method public clone()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2

    .line 602
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Rectangle;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 603
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public contains(Lcom/itextpdf/kernel/geom/Rectangle;)Z
    .locals 10
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 246
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    .line 247
    .local v0, "llx":F
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    .line 248
    .local v1, "lly":F
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    add-float/2addr v2, v0

    .line 249
    .local v2, "urx":F
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    add-float/2addr v3, v1

    .line 251
    .local v3, "ury":F
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v4

    .line 252
    .local v4, "rllx":F
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v5

    .line 253
    .local v5, "rlly":F
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    add-float/2addr v6, v4

    .line 254
    .local v6, "rurx":F
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v7

    add-float/2addr v7, v5

    .line 256
    .local v7, "rury":F
    sget v8, Lcom/itextpdf/kernel/geom/Rectangle;->EPS:F

    sub-float v9, v0, v8

    cmpg-float v9, v9, v4

    if-gtz v9, :cond_0

    sub-float v9, v1, v8

    cmpg-float v9, v9, v5

    if-gtz v9, :cond_0

    add-float v9, v2, v8

    cmpg-float v9, v6, v9

    if-gtz v9, :cond_0

    add-float/2addr v8, v3

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    return v8
.end method

.method public decreaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "extra"    # F

    .line 434
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    .line 435
    return-object p0
.end method

.method public decreaseWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "extra"    # F

    .line 456
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    .line 457
    return-object p0
.end method

.method public equalsWithEpsilon(Lcom/itextpdf/kernel/geom/Rectangle;)Z
    .locals 1
    .param p1, "that"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 616
    sget v0, Lcom/itextpdf/kernel/geom/Rectangle;->EPS:F

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->equalsWithEpsilon(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result v0

    return v0
.end method

.method public equalsWithEpsilon(Lcom/itextpdf/kernel/geom/Rectangle;F)Z
    .locals 5
    .param p1, "that"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "eps"    # F

    .line 627
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    iget v1, p1, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 628
    .local v0, "dx":F
    iget v1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    iget v2, p1, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 629
    .local v1, "dy":F
    iget v2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    iget v3, p1, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 630
    .local v2, "dw":F
    iget v3, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    iget v4, p1, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 631
    .local v3, "dh":F
    cmpg-float v4, v0, p2

    if-gez v4, :cond_0

    cmpg-float v4, v1, p2

    if-gez v4, :cond_0

    cmpg-float v4, v2, p2

    if-gez v4, :cond_0

    cmpg-float v4, v3, p2

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public getBottom()F
    .locals 1

    .line 493
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .line 402
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    return v0
.end method

.method public getIntersection(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 9
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 208
    const/4 v0, 0x0

    .line 211
    .local v0, "result":Lcom/itextpdf/kernel/geom/Rectangle;
    iget v1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    iget v2, p1, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 212
    .local v1, "llx":F
    iget v2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    iget v3, p1, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 213
    .local v2, "lly":F
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 214
    .local v3, "urx":F
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 217
    .local v4, "ury":F
    sub-float v5, v3, v1

    .line 218
    .local v5, "width":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/itextpdf/kernel/geom/Rectangle;->EPS:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 219
    const/4 v5, 0x0

    .line 222
    :cond_0
    sub-float v6, v4, v2

    .line 223
    .local v6, "height":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/itextpdf/kernel/geom/Rectangle;->EPS:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 224
    const/4 v6, 0x0

    .line 227
    :cond_1
    const/4 v7, 0x0

    invoke-static {v5, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-ltz v8, :cond_4

    .line 228
    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-ltz v8, :cond_4

    .line 229
    invoke-static {v5, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-gez v8, :cond_2

    const/4 v5, 0x0

    .line 230
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-gez v7, :cond_3

    const/4 v6, 0x0

    .line 231
    :cond_3
    new-instance v7, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v7, v1, v2, v5, v6}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v0, v7

    .line 234
    :cond_4
    return-object v0
.end method

.method public getLeft()F
    .locals 1

    .line 466
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    return v0
.end method

.method public getRight()F
    .locals 2

    .line 475
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    iget v1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTop()F
    .locals 2

    .line 484
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    iget v1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 382
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .line 342
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 362
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    return v0
.end method

.method public increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "extra"    # F

    .line 423
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    .line 424
    return-object p0
.end method

.method public increaseWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "extra"    # F

    .line 445
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    .line 446
    return-object p0
.end method

.method public intersectsLine(FFFF)Z
    .locals 29
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 569
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v4

    float-to-double v13, v4

    .line 570
    .local v13, "rx1":D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v4

    float-to-double v11, v4

    .line 571
    .local v11, "ry1":D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    float-to-double v4, v4

    add-double v21, v13, v4

    .line 572
    .local v21, "rx2":D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v4

    float-to-double v4, v4

    add-double v23, v11, v4

    .line 573
    .local v23, "ry2":D
    float-to-double v4, v0

    cmpg-double v4, v13, v4

    if-gtz v4, :cond_1

    float-to-double v4, v0

    cmpg-double v4, v4, v21

    if-gtz v4, :cond_1

    float-to-double v4, v1

    cmpg-double v4, v11, v4

    if-gtz v4, :cond_1

    float-to-double v4, v1

    cmpg-double v4, v4, v23

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide/from16 v25, v11

    move-wide/from16 v27, v13

    goto :goto_1

    :cond_1
    :goto_0
    float-to-double v4, v2

    cmpg-double v4, v13, v4

    if-gtz v4, :cond_2

    float-to-double v4, v2

    cmpg-double v4, v4, v21

    if-gtz v4, :cond_2

    float-to-double v4, v3

    cmpg-double v4, v11, v4

    if-gtz v4, :cond_2

    float-to-double v4, v3

    cmpg-double v4, v4, v23

    if-lez v4, :cond_0

    :cond_2
    float-to-double v9, v0

    float-to-double v7, v1

    float-to-double v4, v2

    float-to-double v1, v3

    .line 576
    move-wide/from16 v17, v4

    move-wide v5, v13

    move-wide v15, v7

    move-wide v7, v11

    move-wide/from16 v19, v9

    move-wide/from16 v9, v21

    move-wide/from16 v25, v11

    .end local v11    # "ry1":D
    .local v25, "ry1":D
    move-wide/from16 v11, v23

    move-wide/from16 v27, v13

    .end local v13    # "rx1":D
    .local v27, "rx1":D
    move-wide/from16 v13, v19

    move-wide/from16 v19, v1

    invoke-static/range {v5 .. v20}, Lcom/itextpdf/kernel/geom/Rectangle;->linesIntersect(DDDDDDDD)Z

    move-result v1

    if-nez v1, :cond_4

    float-to-double v13, v0

    move/from16 v1, p2

    float-to-double v11, v1

    move/from16 v2, p3

    float-to-double v9, v2

    float-to-double v7, v3

    .line 577
    move-wide/from16 v5, v21

    move-wide/from16 v19, v7

    move-wide/from16 v7, v25

    move-wide/from16 v17, v9

    move-wide/from16 v9, v27

    move-wide v15, v11

    move-wide/from16 v11, v23

    invoke-static/range {v5 .. v20}, Lcom/itextpdf/kernel/geom/Rectangle;->linesIntersect(DDDDDDDD)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 576
    :cond_4
    move/from16 v1, p2

    move/from16 v2, p3

    .line 577
    :goto_1
    const/4 v4, 0x1

    .line 573
    :goto_2
    return v4
.end method

.method public moveDown(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "move"    # F

    .line 503
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    .line 504
    return-object p0
.end method

.method public moveLeft(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "move"    # F

    .line 537
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    .line 538
    return-object p0
.end method

.method public moveRight(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "move"    # F

    .line 526
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    .line 527
    return-object p0
.end method

.method public moveUp(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "move"    # F

    .line 515
    iget v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    .line 516
    return-object p0
.end method

.method public overlaps(Lcom/itextpdf/kernel/geom/Rectangle;)Z
    .locals 1
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 267
    sget v0, Lcom/itextpdf/kernel/geom/Rectangle;->EPS:F

    neg-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/geom/Rectangle;->overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z

    move-result v0

    return v0
.end method

.method public overlaps(Lcom/itextpdf/kernel/geom/Rectangle;F)Z
    .locals 4
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "epsilon"    # F

    .line 283
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    add-float/2addr v1, p2

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 284
    return v1

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 288
    return v1

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    add-float/2addr v2, p2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 293
    return v1

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 297
    return v1

    .line 300
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public setBbox(FFFF)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "llx"    # F
    .param p2, "lly"    # F
    .param p3, "urx"    # F
    .param p4, "ury"    # F

    .line 318
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    .line 319
    move v0, p1

    .line 320
    .local v0, "temp":F
    move p1, p3

    .line 321
    move p3, v0

    .line 324
    .end local v0    # "temp":F
    :cond_0
    cmpl-float v0, p2, p4

    if-lez v0, :cond_1

    .line 325
    move v0, p2

    .line 326
    .restart local v0    # "temp":F
    move p2, p4

    .line 327
    move p4, v0

    .line 329
    .end local v0    # "temp":F
    :cond_1
    iput p1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    .line 330
    iput p2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    .line 331
    sub-float v0, p3, p1

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    .line 332
    sub-float v0, p4, p2

    iput v0, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    .line 333
    return-object p0
.end method

.method public setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0
    .param p1, "height"    # F

    .line 412
    iput p1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    .line 413
    return-object p0
.end method

.method public setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0
    .param p1, "width"    # F

    .line 392
    iput p1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    .line 393
    return-object p0
.end method

.method public setX(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0
    .param p1, "x"    # F

    .line 352
    iput p1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    .line 353
    return-object p0
.end method

.method public setY(F)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0
    .param p1, "y"    # F

    .line 372
    iput p1, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    .line 373
    return-object p0
.end method

.method public toPointsArray()[Lcom/itextpdf/kernel/geom/Point;
    .locals 6

    .line 194
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itextpdf/kernel/geom/Point;

    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    iget v2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    float-to-double v2, v2

    iget v4, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    iget v2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    iget v3, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    iget v4, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    iget v2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    iget v3, p0, Lcom/itextpdf/kernel/geom/Rectangle;->width:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    iget v4, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    iget v5, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    iget v2, p0, Lcom/itextpdf/kernel/geom/Rectangle;->x:F

    float-to-double v2, v2

    iget v4, p0, Lcom/itextpdf/kernel/geom/Rectangle;->y:F

    iget v5, p0, Lcom/itextpdf/kernel/geom/Rectangle;->height:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rectangle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 589
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    return-object v0
.end method
