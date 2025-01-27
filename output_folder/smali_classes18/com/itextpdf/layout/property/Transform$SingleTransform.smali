.class public Lcom/itextpdf/layout/property/Transform$SingleTransform;
.super Ljava/lang/Object;
.source "Transform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/property/Transform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleTransform"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private tx:Lcom/itextpdf/layout/property/UnitValue;

.field private ty:Lcom/itextpdf/layout/property/UnitValue;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->a:F

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->b:F

    .line 117
    iput v1, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->c:F

    .line 118
    iput v0, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->d:F

    .line 119
    new-instance v0, Lcom/itextpdf/layout/property/UnitValue;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/layout/property/UnitValue;-><init>(IF)V

    iput-object v0, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->tx:Lcom/itextpdf/layout/property/UnitValue;

    .line 120
    new-instance v0, Lcom/itextpdf/layout/property/UnitValue;

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/layout/property/UnitValue;-><init>(IF)V

    iput-object v0, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->ty:Lcom/itextpdf/layout/property/UnitValue;

    .line 121
    return-void
.end method

.method public constructor <init>(FFFFLcom/itextpdf/layout/property/UnitValue;Lcom/itextpdf/layout/property/UnitValue;)V
    .locals 0
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F
    .param p5, "tx"    # Lcom/itextpdf/layout/property/UnitValue;
    .param p6, "ty"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->a:F

    .line 135
    iput p2, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->b:F

    .line 136
    iput p3, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->c:F

    .line 137
    iput p4, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->d:F

    .line 138
    iput-object p5, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->tx:Lcom/itextpdf/layout/property/UnitValue;

    .line 139
    iput-object p6, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->ty:Lcom/itextpdf/layout/property/UnitValue;

    .line 140
    return-void
.end method


# virtual methods
.method public getFloats()[F
    .locals 3

    .line 148
    const/4 v0, 0x4

    new-array v0, v0, [F

    iget v1, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->a:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->b:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->c:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->d:F

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public getUnitValues()[Lcom/itextpdf/layout/property/UnitValue;
    .locals 3

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/itextpdf/layout/property/UnitValue;

    iget-object v1, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->tx:Lcom/itextpdf/layout/property/UnitValue;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/itextpdf/layout/property/Transform$SingleTransform;->ty:Lcom/itextpdf/layout/property/UnitValue;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
