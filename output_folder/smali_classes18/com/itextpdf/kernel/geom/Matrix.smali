.class public Lcom/itextpdf/kernel/geom/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final I11:I = 0x0

.field public static final I12:I = 0x1

.field public static final I13:I = 0x2

.field public static final I21:I = 0x3

.field public static final I22:I = 0x4

.field public static final I23:I = 0x5

.field public static final I31:I = 0x6

.field public static final I32:I = 0x7

.field public static final I33:I = 0x8

.field private static final serialVersionUID:J = 0x672e0507d731955dL


# instance fields
.field private final vals:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 94
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(FF)V
    .locals 2
    .param p1, "tx"    # F
    .param p2, "ty"    # F

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 103
    const/4 v1, 0x6

    aput p1, v0, v1

    .line 104
    const/4 v1, 0x7

    aput p2, v0, v1

    .line 105
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(FFFFFF)V
    .locals 3
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F
    .param p5, "e"    # F
    .param p6, "f"    # F

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 145
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 146
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 147
    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 148
    const/4 v1, 0x3

    aput p3, v0, v1

    .line 149
    const/4 v1, 0x4

    aput p4, v0, v1

    .line 150
    const/4 v1, 0x5

    aput v2, v0, v1

    .line 151
    const/4 v1, 0x6

    aput p5, v0, v1

    .line 152
    const/4 v1, 0x7

    aput p6, v0, v1

    .line 153
    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 154
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(FFFFFFFFF)V
    .locals 2
    .param p1, "e11"    # F
    .param p2, "e12"    # F
    .param p3, "e13"    # F
    .param p4, "e21"    # F
    .param p5, "e22"    # F
    .param p6, "e23"    # F
    .param p7, "e31"    # F
    .param p8, "e32"    # F
    .param p9, "e33"    # F

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 121
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 122
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 123
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 124
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 125
    const/4 v1, 0x4

    aput p5, v0, v1

    .line 126
    const/4 v1, 0x5

    aput p6, v0, v1

    .line 127
    const/4 v1, 0x6

    aput p7, v0, v1

    .line 128
    const/4 v1, 0x7

    aput p8, v0, v1

    .line 129
    const/16 v1, 0x8

    aput p9, v0, v1

    .line 130
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public add(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;
    .locals 7
    .param p1, "arg"    # Lcom/itextpdf/kernel/geom/Matrix;

    .line 206
    new-instance v0, Lcom/itextpdf/kernel/geom/Matrix;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Matrix;-><init>()V

    .line 208
    .local v0, "rslt":Lcom/itextpdf/kernel/geom/Matrix;
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 209
    .local v1, "a":[F
    iget-object v2, p1, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 210
    .local v2, "b":[F
    iget-object v3, v0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 212
    .local v3, "c":[F
    const/4 v4, 0x0

    aget v5, v1, v4

    aget v6, v2, v4

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 213
    const/4 v4, 0x1

    aget v5, v1, v4

    aget v6, v2, v4

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 214
    const/4 v4, 0x2

    aget v5, v1, v4

    aget v6, v2, v4

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 215
    const/4 v4, 0x3

    aget v5, v1, v4

    aget v6, v2, v4

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 216
    const/4 v4, 0x4

    aget v5, v1, v4

    aget v6, v2, v4

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 217
    const/4 v4, 0x5

    aget v5, v1, v4

    aget v6, v2, v4

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 218
    const/4 v4, 0x6

    aget v5, v1, v4

    aget v6, v2, v4

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 219
    const/4 v4, 0x7

    aget v5, v1, v4

    aget v6, v2, v4

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 220
    const/16 v4, 0x8

    aget v5, v1, v4

    aget v6, v2, v4

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 223
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 278
    instance-of v0, p1, Lcom/itextpdf/kernel/geom/Matrix;

    if-nez v0, :cond_0

    .line 279
    const/4 v0, 0x0

    return v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/geom/Matrix;

    iget-object v1, v1, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0
.end method

.method public get(I)F
    .locals 1
    .param p1, "index"    # I

    .line 169
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    aget v0, v0, p1

    return v0
.end method

.method public getDeterminant()F
    .locals 12

    .line 261
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x4

    aget v2, v0, v2

    mul-float v3, v1, v2

    const/16 v4, 0x8

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/4 v5, 0x1

    aget v5, v0, v5

    const/4 v6, 0x5

    aget v6, v0, v6

    mul-float v7, v5, v6

    const/4 v8, 0x6

    aget v8, v0, v8

    mul-float/2addr v7, v8

    add-float/2addr v3, v7

    const/4 v7, 0x2

    aget v7, v0, v7

    const/4 v9, 0x3

    aget v9, v0, v9

    mul-float v10, v7, v9

    const/4 v11, 0x7

    aget v0, v0, v11

    mul-float/2addr v10, v0

    add-float/2addr v3, v10

    mul-float/2addr v1, v6

    mul-float/2addr v1, v0

    sub-float/2addr v3, v1

    mul-float/2addr v5, v9

    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    mul-float/2addr v7, v2

    mul-float/2addr v7, v8

    sub-float/2addr v3, v7

    return v3
.end method

.method public hashCode()I
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    return v0
.end method

.method public multiply(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;
    .locals 18
    .param p1, "by"    # Lcom/itextpdf/kernel/geom/Matrix;

    .line 180
    new-instance v0, Lcom/itextpdf/kernel/geom/Matrix;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Matrix;-><init>()V

    .line 182
    .local v0, "rslt":Lcom/itextpdf/kernel/geom/Matrix;
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 183
    .local v2, "a":[F
    move-object/from16 v3, p1

    iget-object v4, v3, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 184
    .local v4, "b":[F
    iget-object v5, v0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 186
    .local v5, "c":[F
    const/4 v6, 0x0

    aget v7, v2, v6

    aget v8, v4, v6

    mul-float/2addr v7, v8

    const/4 v8, 0x1

    aget v9, v2, v8

    const/4 v10, 0x3

    aget v11, v4, v10

    mul-float/2addr v9, v11

    add-float/2addr v7, v9

    const/4 v9, 0x2

    aget v11, v2, v9

    const/4 v12, 0x6

    aget v13, v4, v12

    mul-float/2addr v11, v13

    add-float/2addr v7, v11

    aput v7, v5, v6

    .line 187
    aget v7, v2, v6

    aget v11, v4, v8

    mul-float/2addr v7, v11

    aget v11, v2, v8

    const/4 v13, 0x4

    aget v14, v4, v13

    mul-float/2addr v11, v14

    add-float/2addr v7, v11

    aget v11, v2, v9

    const/4 v14, 0x7

    aget v15, v4, v14

    mul-float/2addr v11, v15

    add-float/2addr v7, v11

    aput v7, v5, v8

    .line 188
    aget v7, v2, v6

    aget v11, v4, v9

    mul-float/2addr v7, v11

    aget v11, v2, v8

    const/4 v15, 0x5

    aget v16, v4, v15

    mul-float v11, v11, v16

    add-float/2addr v7, v11

    aget v11, v2, v9

    const/16 v16, 0x8

    aget v17, v4, v16

    mul-float v11, v11, v17

    add-float/2addr v7, v11

    aput v7, v5, v9

    .line 189
    aget v7, v2, v10

    aget v11, v4, v6

    mul-float/2addr v7, v11

    aget v11, v2, v13

    aget v17, v4, v10

    mul-float v11, v11, v17

    add-float/2addr v7, v11

    aget v11, v2, v15

    aget v17, v4, v12

    mul-float v11, v11, v17

    add-float/2addr v7, v11

    aput v7, v5, v10

    .line 190
    aget v7, v2, v10

    aget v11, v4, v8

    mul-float/2addr v7, v11

    aget v11, v2, v13

    aget v17, v4, v13

    mul-float v11, v11, v17

    add-float/2addr v7, v11

    aget v11, v2, v15

    aget v17, v4, v14

    mul-float v11, v11, v17

    add-float/2addr v7, v11

    aput v7, v5, v13

    .line 191
    aget v7, v2, v10

    aget v11, v4, v9

    mul-float/2addr v7, v11

    aget v11, v2, v13

    aget v17, v4, v15

    mul-float v11, v11, v17

    add-float/2addr v7, v11

    aget v11, v2, v15

    aget v17, v4, v16

    mul-float v11, v11, v17

    add-float/2addr v7, v11

    aput v7, v5, v15

    .line 192
    aget v7, v2, v12

    aget v6, v4, v6

    mul-float/2addr v7, v6

    aget v6, v2, v14

    aget v10, v4, v10

    mul-float/2addr v6, v10

    add-float/2addr v7, v6

    aget v6, v2, v16

    aget v10, v4, v12

    mul-float/2addr v6, v10

    add-float/2addr v7, v6

    aput v7, v5, v12

    .line 193
    aget v6, v2, v12

    aget v7, v4, v8

    mul-float/2addr v6, v7

    aget v7, v2, v14

    aget v8, v4, v13

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aget v7, v2, v16

    aget v8, v4, v14

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v5, v14

    .line 194
    aget v6, v2, v12

    aget v7, v4, v9

    mul-float/2addr v6, v7

    aget v7, v2, v14

    aget v8, v4, v15

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aget v7, v2, v16

    aget v8, v4, v16

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v5, v16

    .line 196
    return-object v0
.end method

.method public subtract(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;
    .locals 7
    .param p1, "arg"    # Lcom/itextpdf/kernel/geom/Matrix;

    .line 233
    new-instance v0, Lcom/itextpdf/kernel/geom/Matrix;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Matrix;-><init>()V

    .line 235
    .local v0, "rslt":Lcom/itextpdf/kernel/geom/Matrix;
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 236
    .local v1, "a":[F
    iget-object v2, p1, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 237
    .local v2, "b":[F
    iget-object v3, v0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    .line 239
    .local v3, "c":[F
    const/4 v4, 0x0

    aget v5, v1, v4

    aget v6, v2, v4

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 240
    const/4 v4, 0x1

    aget v5, v1, v4

    aget v6, v2, v4

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 241
    const/4 v4, 0x2

    aget v5, v1, v4

    aget v6, v2, v4

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 242
    const/4 v4, 0x3

    aget v5, v1, v4

    aget v6, v2, v4

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 243
    const/4 v4, 0x4

    aget v5, v1, v4

    aget v6, v2, v4

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 244
    const/4 v4, 0x5

    aget v5, v1, v4

    aget v6, v2, v4

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 245
    const/4 v4, 0x6

    aget v5, v1, v4

    aget v6, v2, v4

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 246
    const/4 v4, 0x7

    aget v5, v1, v4

    aget v6, v2, v4

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 247
    const/16 v4, 0x8

    aget v5, v1, v4

    aget v6, v2, v4

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 249
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Matrix;->vals:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
