.class public Lcom/itextpdf/layout/property/UnitValue;
.super Ljava/lang/Object;
.source "UnitValue.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final PERCENT:I = 0x2

.field public static final POINT:I = 0x1


# instance fields
.field protected unitType:I

.field protected value:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 51
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "unitType"    # I
    .param p2, "value"    # F

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/itextpdf/layout/property/UnitValue;->unitType:I

    .line 65
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iput p2, p0, Lcom/itextpdf/layout/property/UnitValue;->value:F

    .line 67
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lcom/itextpdf/layout/property/UnitValue;)V
    .locals 2
    .param p1, "unitValue"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 75
    iget v0, p1, Lcom/itextpdf/layout/property/UnitValue;->unitType:I

    iget v1, p1, Lcom/itextpdf/layout/property/UnitValue;->value:F

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/layout/property/UnitValue;-><init>(IF)V

    .line 76
    return-void
.end method

.method public static createPercentArray(I)[Lcom/itextpdf/layout/property/UnitValue;
    .locals 4
    .param p0, "size"    # I

    .line 119
    new-array v0, p0, [Lcom/itextpdf/layout/property/UnitValue;

    .line 120
    .local v0, "resultArray":[Lcom/itextpdf/layout/property/UnitValue;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 121
    const/high16 v2, 0x42c80000    # 100.0f

    int-to-float v3, p0

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/itextpdf/layout/property/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    aput-object v2, v0, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static createPercentArray([F)[Lcom/itextpdf/layout/property/UnitValue;
    .locals 5
    .param p0, "values"    # [F

    .line 103
    array-length v0, p0

    new-array v0, v0, [Lcom/itextpdf/layout/property/UnitValue;

    .line 104
    .local v0, "resultArray":[Lcom/itextpdf/layout/property/UnitValue;
    const/4 v1, 0x0

    .line 105
    .local v1, "sum":F
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    .local v4, "val":F
    add-float/2addr v1, v4

    .end local v4    # "val":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 107
    const/high16 v3, 0x42c80000    # 100.0f

    aget v4, p0, v2

    mul-float/2addr v4, v3

    div-float/2addr v4, v1

    invoke-static {v4}, Lcom/itextpdf/layout/property/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v3

    aput-object v3, v0, v2

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public static createPercentValue(F)Lcom/itextpdf/layout/property/UnitValue;
    .locals 2
    .param p0, "value"    # F

    .line 93
    new-instance v0, Lcom/itextpdf/layout/property/UnitValue;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/layout/property/UnitValue;-><init>(IF)V

    return-object v0
.end method

.method public static createPointArray([F)[Lcom/itextpdf/layout/property/UnitValue;
    .locals 3
    .param p0, "values"    # [F

    .line 132
    array-length v0, p0

    new-array v0, v0, [Lcom/itextpdf/layout/property/UnitValue;

    .line 133
    .local v0, "resultArray":[Lcom/itextpdf/layout/property/UnitValue;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 134
    aget v2, p0, v1

    invoke-static {v2}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    aput-object v2, v0, v1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;
    .locals 2
    .param p0, "value"    # F

    .line 84
    new-instance v0, Lcom/itextpdf/layout/property/UnitValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/layout/property/UnitValue;-><init>(IF)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 191
    return v2

    .line 193
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    .line 194
    .local v0, "other":Lcom/itextpdf/layout/property/UnitValue;
    iget v1, p0, Lcom/itextpdf/layout/property/UnitValue;->unitType:I

    iget v3, v0, Lcom/itextpdf/layout/property/UnitValue;->unitType:I

    invoke-static {v1, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/itextpdf/layout/property/UnitValue;->value:F

    iget v3, v0, Lcom/itextpdf/layout/property/UnitValue;->value:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public getUnitType()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/itextpdf/layout/property/UnitValue;->unitType:I

    return v0
.end method

.method public getValue()F
    .locals 1

    .line 160
    iget v0, p0, Lcom/itextpdf/layout/property/UnitValue;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 199
    const/4 v0, 0x7

    .line 200
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x47

    iget v2, p0, Lcom/itextpdf/layout/property/UnitValue;->unitType:I

    add-int/2addr v1, v2

    .line 201
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x47

    iget v2, p0, Lcom/itextpdf/layout/property/UnitValue;->value:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 202
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method public isPercentValue()Z
    .locals 2

    .line 185
    iget v0, p0, Lcom/itextpdf/layout/property/UnitValue;->unitType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPointValue()Z
    .locals 2

    .line 177
    iget v0, p0, Lcom/itextpdf/layout/property/UnitValue;->unitType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setUnitType(I)V
    .locals 0
    .param p1, "unitType"    # I

    .line 152
    iput p1, p0, Lcom/itextpdf/layout/property/UnitValue;->unitType:I

    .line 153
    return-void
.end method

.method public setValue(F)V
    .locals 1
    .param p1, "value"    # F

    .line 168
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iput p1, p0, Lcom/itextpdf/layout/property/UnitValue;->value:F

    .line 170
    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 207
    iget v0, p0, Lcom/itextpdf/layout/property/UnitValue;->unitType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "{0}%"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "{0}pt"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/itextpdf/layout/property/UnitValue;->value:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
