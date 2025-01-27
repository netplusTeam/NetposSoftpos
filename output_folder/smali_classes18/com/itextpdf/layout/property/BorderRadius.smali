.class public Lcom/itextpdf/layout/property/BorderRadius;
.super Ljava/lang/Object;
.source "BorderRadius.java"


# instance fields
.field private horizontalRadius:Lcom/itextpdf/layout/property/UnitValue;

.field private verticalRadius:Lcom/itextpdf/layout/property/UnitValue;


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "radius"    # F

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/property/BorderRadius;->horizontalRadius:Lcom/itextpdf/layout/property/UnitValue;

    .line 74
    iput-object v0, p0, Lcom/itextpdf/layout/property/BorderRadius;->verticalRadius:Lcom/itextpdf/layout/property/UnitValue;

    .line 75
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "horizontalRadius"    # F
    .param p2, "verticalRadius"    # F

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/property/BorderRadius;->horizontalRadius:Lcom/itextpdf/layout/property/UnitValue;

    .line 96
    invoke-static {p2}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/property/BorderRadius;->verticalRadius:Lcom/itextpdf/layout/property/UnitValue;

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/property/UnitValue;)V
    .locals 0
    .param p1, "radius"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/itextpdf/layout/property/BorderRadius;->horizontalRadius:Lcom/itextpdf/layout/property/UnitValue;

    .line 64
    iput-object p1, p0, Lcom/itextpdf/layout/property/BorderRadius;->verticalRadius:Lcom/itextpdf/layout/property/UnitValue;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/property/UnitValue;Lcom/itextpdf/layout/property/UnitValue;)V
    .locals 0
    .param p1, "horizontalRadius"    # Lcom/itextpdf/layout/property/UnitValue;
    .param p2, "verticalRadius"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/itextpdf/layout/property/BorderRadius;->horizontalRadius:Lcom/itextpdf/layout/property/UnitValue;

    .line 85
    iput-object p2, p0, Lcom/itextpdf/layout/property/BorderRadius;->verticalRadius:Lcom/itextpdf/layout/property/UnitValue;

    .line 86
    return-void
.end method


# virtual methods
.method public getHorizontalRadius()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/itextpdf/layout/property/BorderRadius;->horizontalRadius:Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getVerticalRadius()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/itextpdf/layout/property/BorderRadius;->verticalRadius:Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method
