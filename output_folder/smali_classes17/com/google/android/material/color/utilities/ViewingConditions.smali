.class public final Lcom/google/android/material/color/utilities/ViewingConditions;
.super Ljava/lang/Object;
.source "ViewingConditions.java"


# static fields
.field public static final DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;


# instance fields
.field private final aw:D

.field private final c:D

.field private final fl:D

.field private final flRoot:D

.field private final n:D

.field private final nbb:D

.field private final nc:D

.field private final ncb:D

.field private final rgbD:[D

.field private final z:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    nop

    .line 40
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/ViewingConditions;->defaultWithBackgroundLstar(D)Lcom/google/android/material/color/utilities/ViewingConditions;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 39
    return-void
.end method

.method private constructor <init>(DDDDDD[DDDD)V
    .locals 16
    .param p1, "n"    # D
    .param p3, "aw"    # D
    .param p5, "nbb"    # D
    .param p7, "ncb"    # D
    .param p9, "c"    # D
    .param p11, "nc"    # D
    .param p13, "rgbD"    # [D
    .param p14, "fl"    # D
    .param p16, "flRoot"    # D
    .param p18, "z"    # D

    .line 197
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 198
    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    .line 199
    move-wide/from16 v3, p3

    iput-wide v3, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    .line 200
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    .line 201
    move-wide/from16 v7, p7

    iput-wide v7, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    .line 202
    move-wide/from16 v9, p9

    iput-wide v9, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    .line 203
    move-wide/from16 v11, p11

    iput-wide v11, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->nc:D

    .line 204
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->rgbD:[D

    .line 205
    move-wide/from16 v14, p14

    iput-wide v14, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->fl:D

    .line 206
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->flRoot:D

    .line 207
    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    .line 208
    return-void
.end method

.method public static defaultWithBackgroundLstar(D)Lcom/google/android/material/color/utilities/ViewingConditions;
    .locals 8
    .param p0, "lstar"    # D

    .line 174
    invoke-static {}, Lcom/google/android/material/color/utilities/ColorUtils;->whitePointD65()[D

    move-result-object v0

    .line 175
    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide v1

    const-wide v3, 0x404fd4bbab8b494cL    # 63.66197723675813

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    .line 173
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const/4 v7, 0x0

    move-wide v3, p0

    invoke-static/range {v0 .. v7}, Lcom/google/android/material/color/utilities/ViewingConditions;->make([DDDDZ)Lcom/google/android/material/color/utilities/ViewingConditions;

    move-result-object v0

    return-object v0
.end method

.method public static make([DDDDZ)Lcom/google/android/material/color/utilities/ViewingConditions;
    .locals 59
    .param p0, "whitePoint"    # [D
    .param p1, "adaptingLuminance"    # D
    .param p3, "backgroundLstar"    # D
    .param p5, "surround"    # D
    .param p7, "discountingIlluminant"    # Z

    .line 119
    move-wide/from16 v0, p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    move-wide/from16 v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 121
    .end local p3    # "backgroundLstar":D
    .local v4, "backgroundLstar":D
    sget-object v6, Lcom/google/android/material/color/utilities/Cam16;->XYZ_TO_CAM16RGB:[[D

    .line 122
    .local v6, "matrix":[[D
    move-object/from16 v7, p0

    .line 123
    .local v7, "xyz":[D
    const/4 v8, 0x0

    aget-wide v9, v7, v8

    aget-object v11, v6, v8

    aget-wide v11, v11, v8

    mul-double/2addr v9, v11

    const/4 v11, 0x1

    aget-wide v12, v7, v11

    aget-object v14, v6, v8

    aget-wide v14, v14, v11

    mul-double/2addr v12, v14

    add-double/2addr v9, v12

    const/4 v12, 0x2

    aget-wide v13, v7, v12

    aget-object v15, v6, v8

    aget-wide v15, v15, v12

    mul-double/2addr v13, v15

    add-double/2addr v9, v13

    .line 124
    .local v9, "rW":D
    aget-wide v13, v7, v8

    aget-object v15, v6, v11

    aget-wide v15, v15, v8

    mul-double/2addr v13, v15

    aget-wide v15, v7, v11

    aget-object v17, v6, v11

    aget-wide v17, v17, v11

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    aget-wide v15, v7, v12

    aget-object v17, v6, v11

    aget-wide v17, v17, v12

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    .line 125
    .local v13, "gW":D
    aget-wide v15, v7, v8

    aget-object v17, v6, v12

    aget-wide v17, v17, v8

    mul-double v15, v15, v17

    aget-wide v17, v7, v11

    aget-object v19, v6, v12

    aget-wide v19, v19, v11

    mul-double v17, v17, v19

    add-double v15, v15, v17

    aget-wide v17, v7, v12

    aget-object v19, v6, v12

    aget-wide v19, v19, v12

    mul-double v17, v17, v19

    add-double v15, v15, v17

    .line 126
    .local v15, "bW":D
    const-wide/high16 v17, 0x4024000000000000L    # 10.0

    div-double v19, p5, v17

    const-wide v21, 0x3fe999999999999aL    # 0.8

    add-double v19, v19, v21

    .line 128
    .local v19, "f":D
    const-wide v23, 0x3feccccccccccccdL    # 0.9

    cmpl-double v25, v19, v23

    if-ltz v25, :cond_0

    .line 129
    const-wide v26, 0x3fe2e147ae147ae1L    # 0.59

    const-wide v28, 0x3fe6147ae147ae14L    # 0.69

    sub-double v21, v19, v23

    mul-double v30, v21, v17

    invoke-static/range {v26 .. v31}, Lcom/google/android/material/color/utilities/MathUtils;->lerp(DDD)D

    move-result-wide v17

    move-wide/from16 v32, v17

    goto :goto_0

    .line 130
    :cond_0
    const-wide v23, 0x3fe0cccccccccccdL    # 0.525

    const-wide v25, 0x3fe2e147ae147ae1L    # 0.59

    sub-double v21, v19, v21

    mul-double v17, v17, v21

    move-wide/from16 v21, v23

    move-wide/from16 v23, v25

    move-wide/from16 v25, v17

    invoke-static/range {v21 .. v26}, Lcom/google/android/material/color/utilities/MathUtils;->lerp(DDD)D

    move-result-wide v17

    move-wide/from16 v32, v17

    :goto_0
    nop

    .line 132
    .local v32, "c":D
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    if-eqz p7, :cond_1

    .line 133
    move-wide/from16 v29, v17

    goto :goto_1

    .line 134
    :cond_1
    const-wide v21, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    neg-double v2, v0

    const-wide/high16 v25, 0x4045000000000000L    # 42.0

    sub-double v2, v2, v25

    const-wide/high16 v25, 0x4057000000000000L    # 92.0

    div-double v2, v2, v25

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double v2, v2, v21

    sub-double v2, v17, v2

    mul-double v2, v2, v19

    move-wide/from16 v29, v2

    :goto_1
    nop

    .line 135
    .local v29, "d":D
    const-wide/16 v25, 0x0

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v25 .. v30}, Lcom/google/android/material/color/utilities/MathUtils;->clampDouble(DDD)D

    move-result-wide v2

    .line 136
    .end local v29    # "d":D
    .local v2, "d":D
    move-wide/from16 v34, v19

    .line 137
    .local v34, "nc":D
    const/4 v12, 0x3

    new-array v11, v12, [D

    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    div-double v25, v21, v9

    mul-double v25, v25, v2

    add-double v25, v25, v17

    sub-double v25, v25, v2

    aput-wide v25, v11, v8

    div-double v25, v21, v13

    mul-double v25, v25, v2

    add-double v25, v25, v17

    sub-double v25, v25, v2

    const/16 v27, 0x1

    aput-wide v25, v11, v27

    div-double v25, v21, v15

    mul-double v25, v25, v2

    add-double v25, v25, v17

    sub-double v25, v25, v2

    const/16 v27, 0x2

    aput-wide v25, v11, v27

    .local v11, "rgbD":[D
    move-object/from16 v36, v11

    .line 141
    const-wide/high16 v25, 0x4014000000000000L    # 5.0

    mul-double v27, v0, v25

    add-double v27, v27, v17

    div-double v43, v17, v27

    .line 142
    .local v43, "k":D
    mul-double v27, v43, v43

    mul-double v27, v27, v43

    mul-double v45, v27, v43

    .line 143
    .local v45, "k4":D
    sub-double v17, v17, v45

    .line 144
    .local v17, "k4F":D
    mul-double v27, v45, v0

    const-wide v23, 0x3fb999999999999aL    # 0.1

    mul-double v23, v23, v17

    mul-double v23, v23, v17

    mul-double v25, v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    move-wide/from16 v47, v9

    .end local v9    # "rW":D
    .local v47, "rW":D
    add-double v8, v27, v23

    .local v8, "fl":D
    move-wide/from16 v37, v8

    .line 145
    invoke-static {v4, v5}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide v23

    const/4 v10, 0x1

    aget-wide v27, p0, v10

    move-wide/from16 v49, v13

    .end local v13    # "gW":D
    .local v49, "gW":D
    div-double v12, v23, v27

    .local v12, "n":D
    move-wide/from16 v24, v12

    .line 146
    const-wide v27, 0x3ff7ae147ae147aeL    # 1.48

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v29

    add-double v51, v29, v27

    .local v51, "z":D
    move-wide/from16 v41, v51

    .line 147
    const-wide v27, 0x3fe7333333333333L    # 0.725

    move-object v14, v11

    .end local v11    # "rgbD":[D
    .local v14, "rgbD":[D
    const-wide v10, 0x3fc999999999999aL    # 0.2

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double v53, v27, v10

    .local v53, "nbb":D
    move-wide/from16 v28, v53

    .line 148
    move-wide/from16 v30, v53

    .line 149
    .local v30, "ncb":D
    const/4 v10, 0x3

    new-array v11, v10, [D

    const/16 v23, 0x0

    aget-wide v26, v14, v23

    mul-double v26, v26, v8

    mul-double v26, v26, v47

    move-object/from16 v39, v11

    div-double v10, v26, v21

    .line 151
    const-wide v0, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    aput-wide v10, v39, v23

    const/4 v10, 0x1

    aget-wide v55, v14, v10

    mul-double v55, v55, v8

    mul-double v55, v55, v49

    div-double v10, v55, v21

    .line 152
    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const/16 v23, 0x1

    aput-wide v10, v39, v23

    const/4 v10, 0x2

    aget-wide v55, v14, v10

    mul-double v55, v55, v8

    mul-double v55, v55, v15

    div-double v10, v55, v21

    .line 153
    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/4 v10, 0x2

    aput-wide v0, v39, v10

    move-object/from16 v0, v39

    .line 156
    .local v0, "rgbAFactors":[D
    const/4 v1, 0x3

    new-array v1, v1, [D

    const/4 v10, 0x0

    aget-wide v21, v0, v10

    const-wide/high16 v39, 0x4079000000000000L    # 400.0

    mul-double v21, v21, v39

    aget-wide v26, v0, v10

    const-wide v55, 0x403b2147ae147ae1L    # 27.13

    add-double v26, v26, v55

    div-double v21, v21, v26

    aput-wide v21, v1, v10

    const/4 v10, 0x1

    aget-wide v21, v0, v10

    mul-double v21, v21, v39

    aget-wide v57, v0, v10

    add-double v57, v57, v55

    div-double v21, v21, v57

    aput-wide v21, v1, v10

    const/4 v10, 0x2

    aget-wide v21, v0, v10

    mul-double v21, v21, v39

    aget-wide v39, v0, v10

    add-double v39, v39, v55

    div-double v21, v21, v39

    aput-wide v21, v1, v10

    .line 163
    .local v1, "rgbA":[D
    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    const/4 v11, 0x0

    aget-wide v26, v1, v11

    mul-double v26, v26, v21

    const/4 v11, 0x1

    aget-wide v21, v1, v11

    add-double v26, v26, v21

    const-wide v21, 0x3fa999999999999aL    # 0.05

    aget-wide v10, v1, v10

    mul-double v10, v10, v21

    add-double v26, v26, v10

    mul-double v10, v26, v53

    .local v10, "aw":D
    move-wide/from16 v26, v10

    .line 164
    new-instance v21, Lcom/google/android/material/color/utilities/ViewingConditions;

    move-object/from16 v23, v21

    move-object/from16 p3, v0

    move-object/from16 p4, v1

    .end local v0    # "rgbAFactors":[D
    .end local v1    # "rgbA":[D
    .local p3, "rgbAFactors":[D
    .local p4, "rgbA":[D
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v39

    invoke-direct/range {v23 .. v42}, Lcom/google/android/material/color/utilities/ViewingConditions;-><init>(DDDDDD[DDDD)V

    return-object v21
.end method


# virtual methods
.method public getAw()D
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    return-wide v0
.end method

.method getC()D
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    return-wide v0
.end method

.method getFl()D
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->fl:D

    return-wide v0
.end method

.method public getFlRoot()D
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->flRoot:D

    return-wide v0
.end method

.method public getN()D
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    return-wide v0
.end method

.method public getNbb()D
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    return-wide v0
.end method

.method getNc()D
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->nc:D

    return-wide v0
.end method

.method getNcb()D
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    return-wide v0
.end method

.method public getRgbD()[D
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->rgbD:[D

    return-object v0
.end method

.method getZ()D
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    return-wide v0
.end method
