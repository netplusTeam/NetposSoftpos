.class public Lcom/itextpdf/layout/property/Leading;
.super Ljava/lang/Object;
.source "Leading.java"


# static fields
.field public static final FIXED:I = 0x1

.field public static final MULTIPLIED:I = 0x2


# instance fields
.field protected type:I

.field protected value:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # F

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/itextpdf/layout/property/Leading;->type:I

    .line 82
    iput p2, p0, Lcom/itextpdf/layout/property/Leading;->value:F

    .line 83
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/layout/property/Leading;->type:I

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/layout/property/Leading;

    iget v1, v1, Lcom/itextpdf/layout/property/Leading;->type:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/layout/property/Leading;->value:F

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/layout/property/Leading;

    iget v1, v1, Lcom/itextpdf/layout/property/Leading;->value:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getType()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/itextpdf/layout/property/Leading;->type:I

    return v0
.end method

.method public getValue()F
    .locals 1

    .line 99
    iget v0, p0, Lcom/itextpdf/layout/property/Leading;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/itextpdf/layout/property/Leading;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/itextpdf/layout/property/Leading;->value:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
