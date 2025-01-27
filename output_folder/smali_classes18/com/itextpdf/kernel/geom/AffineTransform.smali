.class public Lcom/itextpdf/kernel/geom/AffineTransform;
.super Ljava/lang/Object;
.source "AffineTransform.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_FLIP:I = 0x40

.field public static final TYPE_GENERAL_ROTATION:I = 0x10

.field public static final TYPE_GENERAL_SCALE:I = 0x4

.field public static final TYPE_GENERAL_TRANSFORM:I = 0x20

.field public static final TYPE_IDENTITY:I = 0x0

.field public static final TYPE_MASK_ROTATION:I = 0x18

.field public static final TYPE_MASK_SCALE:I = 0x6

.field public static final TYPE_QUADRANT_ROTATION:I = 0x8

.field public static final TYPE_TRANSLATION:I = 0x1

.field public static final TYPE_UNIFORM_SCALE:I = 0x2

.field static final TYPE_UNKNOWN:I = -0x1

.field static final ZERO:D = 1.0E-10

.field private static final serialVersionUID:J = 0x127891154ad5ff62L


# instance fields
.field m00:D

.field m01:D

.field m02:D

.field m10:D

.field m11:D

.field m12:D

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 130
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    .line 132
    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 1
    .param p1, "m00"    # D
    .param p3, "m10"    # D
    .param p5, "m01"    # D
    .param p7, "m11"    # D
    .param p9, "m02"    # D
    .param p11, "m12"    # D

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 146
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    .line 147
    iput-wide p3, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    .line 148
    iput-wide p5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    .line 149
    iput-wide p7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    .line 150
    iput-wide p9, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    .line 151
    iput-wide p11, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/geom/AffineTransform;)V
    .locals 2
    .param p1, "t"    # Lcom/itextpdf/kernel/geom/AffineTransform;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iget v0, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 136
    iget-wide v0, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    .line 137
    iget-wide v0, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    .line 138
    iget-wide v0, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    .line 139
    iget-wide v0, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    .line 140
    iget-wide v0, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    .line 141
    iget-wide v0, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    .line 142
    return-void
.end method

.method public constructor <init>([D)V
    .locals 2
    .param p1, "matrix"    # [D

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 168
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    .line 169
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    .line 170
    const/4 v0, 0x2

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    .line 171
    const/4 v0, 0x3

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    .line 172
    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 173
    aget-wide v0, p1, v1

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    .line 174
    const/4 v0, 0x5

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    .line 176
    :cond_0
    return-void
.end method

.method public constructor <init>([F)V
    .locals 2
    .param p1, "matrix"    # [F

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 156
    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    .line 157
    const/4 v0, 0x1

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    .line 158
    const/4 v0, 0x2

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    .line 159
    const/4 v0, 0x3

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    .line 160
    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 161
    aget v0, p1, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    .line 162
    const/4 v0, 0x5

    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    .line 164
    :cond_0
    return-void
.end method

.method public static getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 1
    .param p0, "angle"    # D

    .line 424
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 425
    .local v0, "t":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->setToRotation(D)V

    .line 426
    return-object v0
.end method

.method public static getRotateInstance(DDD)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 8
    .param p0, "angle"    # D
    .param p2, "x"    # D
    .param p4, "y"    # D

    .line 439
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 440
    .local v0, "t":Lcom/itextpdf/kernel/geom/AffineTransform;
    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/itextpdf/kernel/geom/AffineTransform;->setToRotation(DDD)V

    .line 441
    return-object v0
.end method

.method public static getScaleInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 1
    .param p0, "scx"    # D
    .param p2, "scY"    # D

    .line 406
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 407
    .local v0, "t":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/itextpdf/kernel/geom/AffineTransform;->setToScale(DD)V

    .line 408
    return-object v0
.end method

.method public static getShearInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 1
    .param p0, "shx"    # D
    .param p2, "shy"    # D

    .line 412
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 413
    .local v0, "m":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/itextpdf/kernel/geom/AffineTransform;->setToShear(DD)V

    .line 414
    return-object v0
.end method

.method public static getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 1
    .param p0, "mx"    # D
    .param p2, "my"    # D

    .line 400
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 401
    .local v0, "t":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/itextpdf/kernel/geom/AffineTransform;->setToTranslation(DD)V

    .line 402
    return-object v0
.end method


# virtual methods
.method public clone()Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 679
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/AffineTransform;->clone()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    return-object v0
.end method

.method public concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V
    .locals 1
    .param p1, "t"    # Lcom/itextpdf/kernel/geom/AffineTransform;

    .line 494
    invoke-virtual {p0, p1, p0}, Lcom/itextpdf/kernel/geom/AffineTransform;->multiply(Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->setTransform(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 495
    return-void
.end method

.method public createInverse()Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;
        }
    .end annotation

    .line 502
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getDeterminant()D

    move-result-wide v1

    .line 503
    .local v1, "det":D
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_0

    .line 508
    new-instance v3, Lcom/itextpdf/kernel/geom/AffineTransform;

    iget-wide v4, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    div-double v6, v4, v1

    iget-wide v8, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    neg-double v10, v8

    div-double/2addr v10, v1

    iget-wide v12, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    neg-double v14, v12

    div-double/2addr v14, v1

    move-wide/from16 v16, v14

    iget-wide v14, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    div-double v18, v14, v1

    move-wide/from16 v20, v10

    iget-wide v10, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    mul-double/2addr v12, v10

    move-wide/from16 v22, v6

    iget-wide v6, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    mul-double/2addr v4, v6

    sub-double/2addr v12, v4

    div-double v24, v12, v1

    mul-double/2addr v8, v6

    mul-double/2addr v14, v10

    sub-double/2addr v8, v14

    div-double v26, v8, v1

    move-object v4, v3

    move-wide/from16 v5, v22

    move-wide/from16 v7, v20

    move-wide/from16 v9, v16

    move-wide/from16 v11, v18

    move-wide/from16 v13, v24

    move-wide/from16 v15, v26

    invoke-direct/range {v4 .. v16}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    return-object v3

    .line 506
    :cond_0
    new-instance v3, Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;

    const-string v4, "Determinant is zero. Cannot invert transformation."

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public deltaTransform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;
    .locals 10
    .param p1, "src"    # Lcom/itextpdf/kernel/geom/Point;
    .param p2, "dst"    # Lcom/itextpdf/kernel/geom/Point;

    .line 597
    if-nez p2, :cond_0

    .line 598
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Point;-><init>()V

    move-object p2, v0

    .line 601
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    .line 602
    .local v0, "x":D
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    .line 604
    .local v2, "y":D
    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v0

    iget-wide v8, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    invoke-virtual {p2, v4, v5, v6, v7}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    .line 605
    return-object p2
.end method

.method public deltaTransform([DI[DII)V
    .locals 9
    .param p1, "src"    # [D
    .param p2, "srcOff"    # I
    .param p3, "dst"    # [D
    .param p4, "dstOff"    # I
    .param p5, "length"    # I

    .line 609
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_0

    .line 610
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "srcOff":I
    .local v0, "srcOff":I
    aget-wide v1, p1, p2

    .line 611
    .local v1, "x":D
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v3, p1, v0

    .line 612
    .local v3, "y":D
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "dstOff":I
    .local v0, "dstOff":I
    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v5, v1

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    aput-wide v5, p3, p4

    .line 613
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "dstOff":I
    .restart local p4    # "dstOff":I
    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v5, v1

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    aput-wide v5, p3, v0

    .line 614
    .end local v1    # "x":D
    .end local v3    # "y":D
    goto :goto_0

    .line 615
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 685
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 686
    return v0

    .line 688
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 691
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/geom/AffineTransform;

    .line 693
    .local v2, "that":Lcom/itextpdf/kernel/geom/AffineTransform;
    iget-wide v3, v2, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_2

    iget-wide v3, v2, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    .line 694
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_2

    iget-wide v3, v2, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    .line 695
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_2

    iget-wide v3, v2, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    .line 696
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_2

    iget-wide v3, v2, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    .line 697
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_2

    iget-wide v3, v2, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    .line 698
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 693
    :goto_0
    return v0

    .line 689
    .end local v2    # "that":Lcom/itextpdf/kernel/geom/AffineTransform;
    :cond_3
    :goto_1
    return v1
.end method

.method public getDeterminant()D
    .locals 6

    .line 293
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    iget-wide v2, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getMatrix([D)V
    .locals 4
    .param p1, "matrix"    # [D

    .line 282
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    const/4 v2, 0x0

    aput-wide v0, p1, v2

    .line 283
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    const/4 v2, 0x1

    aput-wide v0, p1, v2

    .line 284
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    const/4 v2, 0x2

    aput-wide v0, p1, v2

    .line 285
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    const/4 v2, 0x3

    aput-wide v0, p1, v2

    .line 286
    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 287
    iget-wide v2, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    aput-wide v2, p1, v1

    .line 288
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    aput-wide v1, p1, v0

    .line 290
    :cond_0
    return-void
.end method

.method public getMatrix([F)V
    .locals 4
    .param p1, "matrix"    # [F

    .line 271
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    double-to-float v0, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 272
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    double-to-float v0, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 273
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    double-to-float v0, v0

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 274
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    double-to-float v0, v0

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 275
    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 276
    iget-wide v2, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    double-to-float v0, v2

    aput v0, p1, v1

    .line 277
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    double-to-float v1, v1

    aput v1, p1, v0

    .line 279
    :cond_0
    return-void
.end method

.method public getScaleX()D
    .locals 2

    .line 243
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    return-wide v0
.end method

.method public getScaleY()D
    .locals 2

    .line 247
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    return-wide v0
.end method

.method public getShearX()D
    .locals 2

    .line 251
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    return-wide v0
.end method

.method public getShearY()D
    .locals 2

    .line 255
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    return-wide v0
.end method

.method public getTranslateX()D
    .locals 2

    .line 259
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    return-wide v0
.end method

.method public getTranslateY()D
    .locals 2

    .line 263
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    return-wide v0
.end method

.method public getType()I
    .locals 20

    .line 202
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 203
    return v1

    .line 206
    :cond_0
    const/4 v1, 0x0

    .line 208
    .local v1, "type":I
    iget-wide v2, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    iget-wide v4, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double v6, v2, v4

    iget-wide v8, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    iget-wide v10, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double v12, v8, v10

    add-double/2addr v6, v12

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_1

    .line 209
    or-int/lit8 v1, v1, 0x20

    .line 210
    return v1

    .line 213
    :cond_1
    iget-wide v6, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    cmpl-double v6, v6, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    if-nez v6, :cond_3

    iget-wide v6, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2

    goto :goto_0

    .line 215
    :cond_2
    cmpl-double v6, v2, v14

    if-nez v6, :cond_4

    cmpl-double v6, v10, v14

    if-nez v6, :cond_4

    cmpl-double v6, v4, v12

    if-nez v6, :cond_4

    cmpl-double v6, v8, v12

    if-nez v6, :cond_4

    .line 216
    const/4 v1, 0x0

    .line 217
    return v1

    .line 214
    :cond_3
    :goto_0
    or-int/lit8 v1, v1, 0x1

    .line 220
    :cond_4
    mul-double v6, v2, v10

    mul-double v16, v4, v8

    sub-double v6, v6, v16

    cmpg-double v6, v6, v12

    if-gez v6, :cond_5

    .line 221
    or-int/lit8 v1, v1, 0x40

    .line 224
    :cond_5
    mul-double v6, v2, v2

    mul-double v16, v8, v8

    add-double v6, v6, v16

    .line 225
    .local v6, "dx":D
    mul-double v16, v4, v4

    mul-double v18, v10, v10

    add-double v16, v16, v18

    .line 226
    .local v16, "dy":D
    cmpl-double v18, v6, v16

    if-eqz v18, :cond_6

    .line 227
    or-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 228
    :cond_6
    cmpl-double v14, v6, v14

    if-eqz v14, :cond_7

    .line 229
    or-int/lit8 v1, v1, 0x2

    .line 232
    :cond_7
    :goto_1
    cmpl-double v14, v2, v12

    if-nez v14, :cond_8

    cmpl-double v14, v10, v12

    if-eqz v14, :cond_9

    :cond_8
    cmpl-double v14, v8, v12

    if-nez v14, :cond_a

    cmpl-double v14, v4, v12

    if-nez v14, :cond_a

    cmpg-double v2, v2, v12

    if-ltz v2, :cond_9

    cmpg-double v2, v10, v12

    if-gez v2, :cond_a

    .line 234
    :cond_9
    or-int/lit8 v1, v1, 0x8

    goto :goto_2

    .line 235
    :cond_a
    cmpl-double v2, v4, v12

    if-nez v2, :cond_b

    cmpl-double v2, v8, v12

    if-eqz v2, :cond_c

    .line 236
    :cond_b
    or-int/lit8 v1, v1, 0x10

    .line 239
    :cond_c
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 703
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public inverseTransform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;
    .locals 12
    .param p1, "src"    # Lcom/itextpdf/kernel/geom/Point;
    .param p2, "dst"    # Lcom/itextpdf/kernel/geom/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;
        }
    .end annotation

    .line 618
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getDeterminant()D

    move-result-wide v0

    .line 619
    .local v0, "det":D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    .line 625
    if-nez p2, :cond_0

    .line 626
    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v2}, Lcom/itextpdf/kernel/geom/Point;-><init>()V

    move-object p2, v2

    .line 629
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    sub-double/2addr v2, v4

    .line 630
    .local v2, "x":D
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    sub-double/2addr v4, v6

    .line 632
    .local v4, "y":D
    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v8, v4

    sub-double/2addr v6, v8

    div-double/2addr v6, v0

    iget-wide v8, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v8, v4

    iget-wide v10, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v10, v2

    sub-double/2addr v8, v10

    div-double/2addr v8, v0

    invoke-virtual {p2, v6, v7, v8, v9}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    .line 633
    return-object p2

    .line 622
    .end local v2    # "x":D
    .end local v4    # "y":D
    :cond_1
    new-instance v2, Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;

    const-string v3, "Determinant is zero. Cannot invert transformation."

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public inverseTransform([DI[DII)V
    .locals 15
    .param p1, "src"    # [D
    .param p2, "srcOff"    # I
    .param p3, "dst"    # [D
    .param p4, "dstOff"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;
        }
    .end annotation

    .line 638
    move-object v0, p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getDeterminant()D

    move-result-wide v1

    .line 639
    .local v1, "det":D
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_1

    move/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    .line 645
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .end local p5    # "length":I
    .local v3, "srcOff":I
    .local v4, "dstOff":I
    .local v5, "length":I
    :goto_0
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_0

    .line 646
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "srcOff":I
    .local v6, "srcOff":I
    aget-wide v7, p1, v3

    iget-wide v9, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    sub-double/2addr v7, v9

    .line 647
    .local v7, "x":D
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "srcOff":I
    .restart local v3    # "srcOff":I
    aget-wide v9, p1, v6

    iget-wide v11, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    sub-double/2addr v9, v11

    .line 648
    .local v9, "y":D
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "dstOff":I
    .local v6, "dstOff":I
    iget-wide v11, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v11, v7

    iget-wide v13, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v13, v9

    sub-double/2addr v11, v13

    div-double/2addr v11, v1

    aput-wide v11, p3, v4

    .line 649
    add-int/lit8 v4, v6, 0x1

    .end local v6    # "dstOff":I
    .restart local v4    # "dstOff":I
    iget-wide v11, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v11, v9

    iget-wide v13, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v13, v7

    sub-double/2addr v11, v13

    div-double/2addr v11, v1

    aput-wide v11, p3, v6

    .line 650
    .end local v7    # "x":D
    .end local v9    # "y":D
    goto :goto_0

    .line 651
    :cond_0
    return-void

    .line 642
    .end local v3    # "srcOff":I
    .end local v4    # "dstOff":I
    .end local v5    # "length":I
    .restart local p2    # "srcOff":I
    .restart local p4    # "dstOff":I
    .restart local p5    # "length":I
    :cond_1
    new-instance v3, Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;

    const-string v4, "Determinant is zero. Cannot invert transformation."

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public inverseTransform([FI[FII)V
    .locals 10
    .param p1, "src"    # [F
    .param p2, "srcOff"    # I
    .param p3, "dst"    # [F
    .param p4, "dstOff"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;
        }
    .end annotation

    .line 655
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getDeterminant()D

    move-result-wide v0

    double-to-float v0, v0

    .line 656
    .local v0, "det":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_1

    .line 662
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_0

    .line 663
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "srcOff":I
    .local v1, "srcOff":I
    aget p2, p1, p2

    float-to-double v2, p2

    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    sub-double/2addr v2, v4

    double-to-float p2, v2

    .line 664
    .local p2, "x":F
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "srcOff":I
    .local v2, "srcOff":I
    aget v1, p1, v1

    float-to-double v3, v1

    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    sub-double/2addr v3, v5

    double-to-float v1, v3

    .line 665
    .local v1, "y":F
    add-int/lit8 v3, p4, 0x1

    .end local p4    # "dstOff":I
    .local v3, "dstOff":I
    float-to-double v4, p2

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v4, v6

    float-to-double v6, v1

    iget-wide v8, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    float-to-double v6, v0

    div-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, p3, p4

    .line 666
    add-int/lit8 p4, v3, 0x1

    .end local v3    # "dstOff":I
    .restart local p4    # "dstOff":I
    float-to-double v4, v1

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v6

    float-to-double v6, p2

    iget-wide v8, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    float-to-double v6, v0

    div-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, p3, v3

    .line 667
    .end local v1    # "y":F
    .end local p2    # "x":F
    move p2, v2

    goto :goto_0

    .line 668
    .end local v2    # "srcOff":I
    .local p2, "srcOff":I
    :cond_0
    return-void

    .line 659
    :cond_1
    new-instance v1, Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;

    const-string v2, "Determinant is zero. Cannot invert transformation."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isIdentity()Z
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method multiply(Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 26
    .param p1, "t1"    # Lcom/itextpdf/kernel/geom/AffineTransform;
    .param p2, "t2"    # Lcom/itextpdf/kernel/geom/AffineTransform;

    .line 484
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v15, Lcom/itextpdf/kernel/geom/AffineTransform;

    iget-wide v2, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    iget-wide v4, v1, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double v6, v2, v4

    iget-wide v8, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    iget-wide v10, v1, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double v12, v8, v10

    add-double/2addr v6, v12

    iget-wide v12, v1, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v2, v12

    move-wide/from16 v16, v6

    iget-wide v6, v1, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v6

    add-double/2addr v8, v2

    iget-wide v2, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double v18, v2, v4

    move-wide/from16 v20, v8

    iget-wide v8, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double v22, v8, v10

    add-double v18, v18, v22

    mul-double/2addr v2, v12

    mul-double/2addr v8, v6

    add-double v22, v2, v8

    iget-wide v2, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    mul-double/2addr v4, v2

    iget-wide v8, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    mul-double/2addr v10, v8

    add-double/2addr v4, v10

    iget-wide v10, v1, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    add-double v24, v4, v10

    mul-double/2addr v2, v12

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    iget-wide v4, v1, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    add-double v13, v2, v4

    move-object v2, v15

    move-wide/from16 v3, v16

    move-wide/from16 v5, v20

    move-wide/from16 v7, v18

    move-wide/from16 v9, v22

    move-wide/from16 v11, v24

    invoke-direct/range {v2 .. v14}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    return-object v15
.end method

.method public preConcatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V
    .locals 1
    .param p1, "t"    # Lcom/itextpdf/kernel/geom/AffineTransform;

    .line 498
    invoke-virtual {p0, p0, p1}, Lcom/itextpdf/kernel/geom/AffineTransform;->multiply(Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->setTransform(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 499
    return-void
.end method

.method public rotate(D)V
    .locals 1
    .param p1, "angle"    # D

    .line 462
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(D)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 463
    return-void
.end method

.method public rotate(DDD)V
    .locals 1
    .param p1, "angle"    # D
    .param p3, "px"    # D
    .param p5, "py"    # D

    .line 473
    invoke-static/range {p1 .. p6}, Lcom/itextpdf/kernel/geom/AffineTransform;->getRotateInstance(DDD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 474
    return-void
.end method

.method public scale(DD)V
    .locals 1
    .param p1, "scx"    # D
    .param p3, "scy"    # D

    .line 449
    invoke-static {p1, p2, p3, p4}, Lcom/itextpdf/kernel/geom/AffineTransform;->getScaleInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 450
    return-void
.end method

.method public setToIdentity()V
    .locals 2

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 323
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    .line 324
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    .line 325
    return-void
.end method

.method public setToRotation(D)V
    .locals 15
    .param p1, "angle"    # D

    .line 368
    move-object v0, p0

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    .line 369
    .local v1, "sin":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 370
    .local v3, "cos":D
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v5, v5, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const-wide/16 v13, 0x0

    if-gez v5, :cond_1

    .line 371
    const-wide/16 v3, 0x0

    .line 372
    cmpl-double v5, v1, v13

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-wide v9, v11

    :goto_0
    move-wide v1, v9

    goto :goto_2

    .line 373
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, v7

    if-gez v5, :cond_3

    .line 374
    const-wide/16 v1, 0x0

    .line 375
    cmpl-double v5, v3, v13

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    move-wide v9, v11

    :goto_1
    move-wide v3, v9

    .line 377
    :cond_3
    :goto_2
    double-to-float v5, v3

    float-to-double v5, v5

    iput-wide v5, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    iput-wide v5, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    .line 378
    neg-double v5, v1

    double-to-float v5, v5

    float-to-double v5, v5

    iput-wide v5, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    .line 379
    double-to-float v5, v1

    float-to-double v5, v5

    iput-wide v5, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    .line 380
    iput-wide v13, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    iput-wide v13, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    .line 381
    const/4 v5, -0x1

    iput v5, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 382
    return-void
.end method

.method public setToRotation(DDD)V
    .locals 11
    .param p1, "angle"    # D
    .param p3, "px"    # D
    .param p5, "py"    # D

    .line 393
    move-object v0, p0

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/geom/AffineTransform;->setToRotation(D)V

    .line 394
    iget-wide v1, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v5, v3, v1

    mul-double/2addr v5, p3

    iget-wide v7, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double v9, p5, v7

    add-double/2addr v5, v9

    iput-wide v5, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    .line 395
    sub-double/2addr v3, v1

    mul-double v1, p5, v3

    mul-double v3, p3, v7

    sub-double/2addr v1, v3

    iput-wide v1, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    .line 396
    const/4 v1, -0x1

    iput v1, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 397
    return-void
.end method

.method public setToScale(DD)V
    .locals 3
    .param p1, "scx"    # D
    .param p3, "scy"    # D

    .line 340
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    .line 341
    iput-wide p3, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    .line 342
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    .line 343
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_1

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    goto :goto_1

    .line 344
    :cond_1
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 348
    :goto_1
    return-void
.end method

.method public setToShear(DD)V
    .locals 3
    .param p1, "shx"    # D
    .param p3, "shy"    # D

    .line 351
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    .line 352
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    .line 353
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    .line 354
    iput-wide p3, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    .line 355
    cmpl-double v2, p1, v0

    if-nez v2, :cond_1

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    goto :goto_1

    .line 356
    :cond_1
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 360
    :goto_1
    return-void
.end method

.method public setToTranslation(DD)V
    .locals 3
    .param p1, "mx"    # D
    .param p3, "my"    # D

    .line 328
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    .line 329
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    .line 330
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    .line 331
    iput-wide p3, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    .line 332
    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    cmpl-double v0, p3, v0

    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    goto :goto_0

    .line 335
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 337
    :goto_0
    return-void
.end method

.method public setTransform(DDDDDD)V
    .locals 1
    .param p1, "m00"    # D
    .param p3, "m10"    # D
    .param p5, "m01"    # D
    .param p7, "m11"    # D
    .param p9, "m02"    # D
    .param p11, "m12"    # D

    .line 307
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 308
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    .line 309
    iput-wide p3, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    .line 310
    iput-wide p5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    .line 311
    iput-wide p7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    .line 312
    iput-wide p9, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    .line 313
    iput-wide p11, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    .line 314
    return-void
.end method

.method public setTransform(FFFFFF)V
    .locals 2
    .param p1, "m00"    # F
    .param p2, "m10"    # F
    .param p3, "m01"    # F
    .param p4, "m11"    # F
    .param p5, "m02"    # F
    .param p6, "m12"    # F

    .line 297
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 298
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    .line 299
    float-to-double v0, p2

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    .line 300
    float-to-double v0, p3

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    .line 301
    float-to-double v0, p4

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    .line 302
    float-to-double v0, p5

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    .line 303
    float-to-double v0, p6

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    .line 304
    return-void
.end method

.method public setTransform(Lcom/itextpdf/kernel/geom/AffineTransform;)V
    .locals 14
    .param p1, "t"    # Lcom/itextpdf/kernel/geom/AffineTransform;

    .line 317
    iget v0, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    iput v0, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->type:I

    .line 318
    iget-wide v2, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    iget-wide v4, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    iget-wide v6, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    iget-wide v8, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    iget-wide v10, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    iget-wide v12, p1, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v13}, Lcom/itextpdf/kernel/geom/AffineTransform;->setTransform(DDDDDD)V

    .line 319
    return-void
.end method

.method public shear(DD)V
    .locals 1
    .param p1, "shx"    # D
    .param p3, "shy"    # D

    .line 453
    invoke-static {p1, p2, p3, p4}, Lcom/itextpdf/kernel/geom/AffineTransform;->getShearInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 454
    return-void
.end method

.method public transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;
    .locals 10
    .param p1, "src"    # Lcom/itextpdf/kernel/geom/Point;
    .param p2, "dst"    # Lcom/itextpdf/kernel/geom/Point;

    .line 519
    if-nez p2, :cond_0

    .line 520
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Point;-><init>()V

    move-object p2, v0

    .line 523
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    .line 524
    .local v0, "x":D
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    .line 526
    .local v2, "y":D
    iget-wide v4, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v0

    iget-wide v8, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    iget-wide v8, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    add-double/2addr v6, v8

    invoke-virtual {p2, v4, v5, v6, v7}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    .line 527
    return-object p2
.end method

.method public transform([DI[DII)V
    .locals 10
    .param p1, "src"    # [D
    .param p2, "srcOff"    # I
    .param p3, "dst"    # [D
    .param p4, "dstOff"    # I
    .param p5, "length"    # I

    .line 545
    const/4 v0, 0x2

    .line 546
    .local v0, "step":I
    if-ne p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    mul-int/lit8 v1, p5, 0x2

    add-int/2addr v1, p2

    if-ge p4, v1, :cond_0

    .line 547
    mul-int/lit8 v1, p5, 0x2

    add-int/2addr v1, p2

    add-int/lit8 p2, v1, -0x2

    .line 548
    mul-int/lit8 v1, p5, 0x2

    add-int/2addr v1, p4

    add-int/lit8 p4, v1, -0x2

    .line 549
    const/4 v0, -0x2

    .line 551
    :cond_0
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    .line 552
    add-int/lit8 v1, p2, 0x0

    aget-wide v1, p1, v1

    .line 553
    .local v1, "x":D
    add-int/lit8 v3, p2, 0x1

    aget-wide v3, p1, v3

    .line 554
    .local v3, "y":D
    add-int/lit8 v5, p4, 0x0

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v6, v1

    iget-wide v8, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v8, v3

    add-double/2addr v6, v8

    iget-wide v8, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    add-double/2addr v6, v8

    aput-wide v6, p3, v5

    .line 555
    add-int/lit8 v5, p4, 0x1

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v6, v1

    iget-wide v8, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v3

    add-double/2addr v6, v8

    iget-wide v8, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    add-double/2addr v6, v8

    aput-wide v6, p3, v5

    .line 556
    add-int/2addr p2, v0

    .line 557
    add-int/2addr p4, v0

    .line 558
    .end local v1    # "x":D
    .end local v3    # "y":D
    goto :goto_0

    .line 559
    :cond_1
    return-void
.end method

.method public transform([DI[FII)V
    .locals 9
    .param p1, "src"    # [D
    .param p2, "srcOff"    # I
    .param p3, "dst"    # [F
    .param p4, "dstOff"    # I
    .param p5, "length"    # I

    .line 588
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_0

    .line 589
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "srcOff":I
    .local v0, "srcOff":I
    aget-wide v1, p1, p2

    .line 590
    .local v1, "x":D
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "srcOff":I
    .restart local p2    # "srcOff":I
    aget-wide v3, p1, v0

    .line 591
    .local v3, "y":D
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "dstOff":I
    .local v0, "dstOff":I
    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v5, v1

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    add-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, p3, p4

    .line 592
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "dstOff":I
    .restart local p4    # "dstOff":I
    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v5, v1

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    add-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, p3, v0

    .line 593
    .end local v1    # "x":D
    .end local v3    # "y":D
    goto :goto_0

    .line 594
    :cond_0
    return-void
.end method

.method public transform([FI[DII)V
    .locals 9
    .param p1, "src"    # [F
    .param p2, "srcOff"    # I
    .param p3, "dst"    # [D
    .param p4, "dstOff"    # I
    .param p5, "length"    # I

    .line 579
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_0

    .line 580
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "srcOff":I
    .local v0, "srcOff":I
    aget p2, p1, p2

    .line 581
    .local p2, "x":F
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "srcOff":I
    .local v1, "srcOff":I
    aget v0, p1, v0

    .line 582
    .local v0, "y":F
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "dstOff":I
    .local v2, "dstOff":I
    float-to-double v3, p2

    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v3, v5

    float-to-double v5, v0

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    add-double/2addr v3, v5

    aput-wide v3, p3, p4

    .line 583
    add-int/lit8 p4, v2, 0x1

    .end local v2    # "dstOff":I
    .restart local p4    # "dstOff":I
    float-to-double v3, p2

    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v3, v5

    float-to-double v5, v0

    iget-wide v7, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    add-double/2addr v3, v5

    aput-wide v3, p3, v2

    .line 584
    .end local v0    # "y":F
    .end local p2    # "x":F
    move p2, v1

    goto :goto_0

    .line 585
    .end local v1    # "srcOff":I
    .local p2, "srcOff":I
    :cond_0
    return-void
.end method

.method public transform([FI[FII)V
    .locals 10
    .param p1, "src"    # [F
    .param p2, "srcOff"    # I
    .param p3, "dst"    # [F
    .param p4, "dstOff"    # I
    .param p5, "length"    # I

    .line 562
    const/4 v0, 0x2

    .line 563
    .local v0, "step":I
    if-ne p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    mul-int/lit8 v1, p5, 0x2

    add-int/2addr v1, p2

    if-ge p4, v1, :cond_0

    .line 564
    mul-int/lit8 v1, p5, 0x2

    add-int/2addr v1, p2

    add-int/lit8 p2, v1, -0x2

    .line 565
    mul-int/lit8 v1, p5, 0x2

    add-int/2addr v1, p4

    add-int/lit8 p4, v1, -0x2

    .line 566
    const/4 v0, -0x2

    .line 568
    :cond_0
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    .line 569
    add-int/lit8 v1, p2, 0x0

    aget v1, p1, v1

    .line 570
    .local v1, "x":F
    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    .line 571
    .local v2, "y":F
    add-int/lit8 v3, p4, 0x0

    float-to-double v4, v1

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v4, v6

    float-to-double v6, v2

    iget-wide v8, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    add-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, p3, v3

    .line 572
    add-int/lit8 v3, p4, 0x1

    float-to-double v4, v1

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v4, v6

    float-to-double v6, v2

    iget-wide v8, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    add-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, p3, v3

    .line 573
    add-int/2addr p2, v0

    .line 574
    add-int/2addr p4, v0

    .line 575
    .end local v1    # "x":F
    .end local v2    # "y":F
    goto :goto_0

    .line 576
    :cond_1
    return-void
.end method

.method public transform([Lcom/itextpdf/kernel/geom/Point;I[Lcom/itextpdf/kernel/geom/Point;II)V
    .locals 16
    .param p1, "src"    # [Lcom/itextpdf/kernel/geom/Point;
    .param p2, "srcOff"    # I
    .param p3, "dst"    # [Lcom/itextpdf/kernel/geom/Point;
    .param p4, "dstOff"    # I
    .param p5, "length"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    .line 531
    .end local p2    # "srcOff":I
    .end local p4    # "dstOff":I
    .end local p5    # "length":I
    .local v1, "srcOff":I
    .local v2, "dstOff":I
    .local v3, "length":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 532
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "srcOff":I
    .local v4, "srcOff":I
    aget-object v1, p1, v1

    .line 533
    .local v1, "srcPoint":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v5

    .line 534
    .local v5, "x":D
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v7

    .line 535
    .local v7, "y":D
    aget-object v9, p3, v2

    .line 536
    .local v9, "dstPoint":Lcom/itextpdf/kernel/geom/Point;
    if-nez v9, :cond_0

    .line 537
    new-instance v10, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v10}, Lcom/itextpdf/kernel/geom/Point;-><init>()V

    move-object v9, v10

    .line 539
    :cond_0
    iget-wide v10, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m00:D

    mul-double/2addr v10, v5

    iget-wide v12, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m01:D

    mul-double/2addr v12, v7

    add-double/2addr v10, v12

    iget-wide v12, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m02:D

    add-double/2addr v10, v12

    iget-wide v12, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m10:D

    mul-double/2addr v12, v5

    iget-wide v14, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m11:D

    mul-double/2addr v14, v7

    add-double/2addr v12, v14

    iget-wide v14, v0, Lcom/itextpdf/kernel/geom/AffineTransform;->m12:D

    add-double/2addr v12, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    .line 540
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "dstOff":I
    .local v10, "dstOff":I
    aput-object v9, p3, v2

    .line 541
    .end local v1    # "srcPoint":Lcom/itextpdf/kernel/geom/Point;
    .end local v5    # "x":D
    .end local v7    # "y":D
    .end local v9    # "dstPoint":Lcom/itextpdf/kernel/geom/Point;
    move v1, v4

    move v2, v10

    goto :goto_0

    .line 542
    .end local v4    # "srcOff":I
    .end local v10    # "dstOff":I
    .local v1, "srcOff":I
    .restart local v2    # "dstOff":I
    :cond_1
    return-void
.end method

.method public translate(DD)V
    .locals 1
    .param p1, "mx"    # D
    .param p3, "my"    # D

    .line 445
    invoke-static {p1, p2, p3, p4}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 446
    return-void
.end method
