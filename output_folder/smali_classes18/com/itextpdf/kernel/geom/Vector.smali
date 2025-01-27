.class public Lcom/itextpdf/kernel/geom/Vector;
.super Ljava/lang/Object;
.source "Vector.java"


# static fields
.field public static final I1:I = 0x0

.field public static final I2:I = 0x1

.field public static final I3:I = 0x2


# instance fields
.field private final vals:[F


# direct methods
.method public constructor <init>(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    .line 84
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 85
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 86
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 87
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public cross(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Vector;
    .locals 7
    .param p1, "by"    # Lcom/itextpdf/kernel/geom/Matrix;

    .line 106
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v2

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v4

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    const/4 v4, 0x2

    aget v2, v2, v4

    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    .line 107
    .local v0, "x":F
    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    aget v2, v2, v1

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v5

    mul-float/2addr v2, v5

    iget-object v5, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    aget v5, v5, v3

    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    iget-object v5, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    aget v5, v5, v4

    const/4 v6, 0x7

    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 108
    .local v2, "y":F
    iget-object v5, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    aget v1, v5, v1

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v5

    mul-float/2addr v1, v5

    iget-object v5, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    aget v3, v5, v3

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v5

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    aget v3, v3, v4

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 110
    .local v1, "z":F
    new-instance v3, Lcom/itextpdf/kernel/geom/Vector;

    invoke-direct {v3, v0, v2, v1}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    return-object v3
.end method

.method public cross(Lcom/itextpdf/kernel/geom/Vector;)Lcom/itextpdf/kernel/geom/Vector;
    .locals 8
    .param p1, "with"    # Lcom/itextpdf/kernel/geom/Vector;

    .line 134
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p1, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    const/4 v4, 0x2

    aget v5, v3, v4

    mul-float v6, v2, v5

    aget v4, v0, v4

    aget v1, v3, v1

    mul-float v7, v4, v1

    sub-float/2addr v6, v7

    .line 135
    .local v6, "x":F
    const/4 v7, 0x0

    aget v3, v3, v7

    mul-float/2addr v4, v3

    aget v0, v0, v7

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    .line 136
    .local v4, "y":F
    mul-float/2addr v0, v1

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 138
    .local v0, "z":F
    new-instance v1, Lcom/itextpdf/kernel/geom/Vector;

    invoke-direct {v1, v6, v4, v0}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    return-object v1
.end method

.method public dot(Lcom/itextpdf/kernel/geom/Vector;)F
    .locals 5
    .param p1, "with"    # Lcom/itextpdf/kernel/geom/Vector;

    .line 174
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p1, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    aget v1, v3, v1

    mul-float/2addr v2, v1

    const/4 v1, 0x1

    aget v4, v0, v1

    aget v1, v3, v1

    mul-float/2addr v4, v1

    add-float/2addr v2, v4

    const/4 v1, 0x2

    aget v0, v0, v1

    aget v1, v3, v1

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 232
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 233
    return v0

    .line 235
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 236
    return v1

    .line 238
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 239
    return v1

    .line 241
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/geom/Vector;

    .line 242
    .local v2, "other":Lcom/itextpdf/kernel/geom/Vector;
    iget-object v3, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    iget-object v4, v2, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 243
    return v1

    .line 245
    :cond_3
    return v0
.end method

.method public get(I)F
    .locals 1
    .param p1, "index"    # I

    .line 96
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    aget v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 221
    const/16 v0, 0x1f

    .line 222
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 223
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([F)I

    move-result v3

    add-int/2addr v2, v3

    .line 224
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public length()F
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Vector;->lengthSquared()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public lengthSquared()F
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    mul-float/2addr v1, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x2

    aget v0, v0, v2

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    return v1
.end method

.method public multiply(F)Lcom/itextpdf/kernel/geom/Vector;
    .locals 4
    .param p1, "by"    # F

    .line 161
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    mul-float/2addr v1, p1

    .line 162
    .local v1, "x":F
    const/4 v2, 0x1

    aget v2, v0, v2

    mul-float/2addr v2, p1

    .line 163
    .local v2, "y":F
    const/4 v3, 0x2

    aget v0, v0, v3

    mul-float/2addr v0, p1

    .line 164
    .local v0, "z":F
    new-instance v3, Lcom/itextpdf/kernel/geom/Vector;

    invoke-direct {v3, v1, v2, v0}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    return-object v3
.end method

.method public normalize()Lcom/itextpdf/kernel/geom/Vector;
    .locals 5

    .line 147
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Vector;->length()F

    move-result v0

    .line 148
    .local v0, "l":F
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    div-float/2addr v2, v0

    .line 149
    .local v2, "x":F
    const/4 v3, 0x1

    aget v3, v1, v3

    div-float/2addr v3, v0

    .line 150
    .local v3, "y":F
    const/4 v4, 0x2

    aget v1, v1, v4

    div-float/2addr v1, v0

    .line 151
    .local v1, "z":F
    new-instance v4, Lcom/itextpdf/kernel/geom/Vector;

    invoke-direct {v4, v2, v3, v1}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    return-object v4
.end method

.method public subtract(Lcom/itextpdf/kernel/geom/Vector;)Lcom/itextpdf/kernel/geom/Vector;
    .locals 5
    .param p1, "v"    # Lcom/itextpdf/kernel/geom/Vector;

    .line 120
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p1, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    aget v1, v3, v1

    sub-float/2addr v2, v1

    .line 121
    .local v2, "x":F
    const/4 v1, 0x1

    aget v4, v0, v1

    aget v1, v3, v1

    sub-float/2addr v4, v1

    .line 122
    .local v4, "y":F
    const/4 v1, 0x2

    aget v0, v0, v1

    aget v1, v3, v1

    sub-float/2addr v0, v1

    .line 124
    .local v0, "z":F
    new-instance v1, Lcom/itextpdf/kernel/geom/Vector;

    invoke-direct {v1, v2, v4, v0}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Vector;->vals:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
