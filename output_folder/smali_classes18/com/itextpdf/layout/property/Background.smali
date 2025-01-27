.class public Lcom/itextpdf/layout/property/Background;
.super Ljava/lang/Object;
.source "Background.java"


# instance fields
.field private backgroundClip:Lcom/itextpdf/layout/property/BackgroundBox;

.field protected extraBottom:F

.field protected extraLeft:F

.field protected extraRight:F

.field protected extraTop:F

.field protected transparentColor:Lcom/itextpdf/layout/property/TransparentColor;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;)V
    .locals 7
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;

    .line 69
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/property/Background;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFFF)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;F)V
    .locals 7
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "opacity"    # F

    .line 78
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/property/Background;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFFF)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;FFFF)V
    .locals 7
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "extraLeft"    # F
    .param p3, "extraTop"    # F
    .param p4, "extraRight"    # F
    .param p5, "extraBottom"    # F

    .line 92
    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/property/Background;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFFF)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;FFFFF)V
    .locals 1
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "opacity"    # F
    .param p3, "extraLeft"    # F
    .param p4, "extraTop"    # F
    .param p5, "extraRight"    # F
    .param p6, "extraBottom"    # F

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundBox;->BORDER_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    iput-object v0, p0, Lcom/itextpdf/layout/property/Background;->backgroundClip:Lcom/itextpdf/layout/property/BackgroundBox;

    .line 107
    new-instance v0, Lcom/itextpdf/layout/property/TransparentColor;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/layout/property/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    iput-object v0, p0, Lcom/itextpdf/layout/property/Background;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    .line 108
    iput p3, p0, Lcom/itextpdf/layout/property/Background;->extraLeft:F

    .line 109
    iput p5, p0, Lcom/itextpdf/layout/property/Background;->extraRight:F

    .line 110
    iput p4, p0, Lcom/itextpdf/layout/property/Background;->extraTop:F

    .line 111
    iput p6, p0, Lcom/itextpdf/layout/property/Background;->extraBottom:F

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/Color;FLcom/itextpdf/layout/property/BackgroundBox;)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "opacity"    # F
    .param p3, "clip"    # Lcom/itextpdf/layout/property/BackgroundBox;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/property/Background;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .line 124
    iput-object p3, p0, Lcom/itextpdf/layout/property/Background;->backgroundClip:Lcom/itextpdf/layout/property/BackgroundBox;

    .line 125
    return-void
.end method


# virtual methods
.method public getBackgroundClip()Lcom/itextpdf/layout/property/BackgroundBox;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/itextpdf/layout/property/Background;->backgroundClip:Lcom/itextpdf/layout/property/BackgroundBox;

    return-object v0
.end method

.method public getColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/itextpdf/layout/property/Background;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/TransparentColor;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    return-object v0
.end method

.method public getExtraBottom()F
    .locals 1

    .line 172
    iget v0, p0, Lcom/itextpdf/layout/property/Background;->extraBottom:F

    return v0
.end method

.method public getExtraLeft()F
    .locals 1

    .line 148
    iget v0, p0, Lcom/itextpdf/layout/property/Background;->extraLeft:F

    return v0
.end method

.method public getExtraRight()F
    .locals 1

    .line 156
    iget v0, p0, Lcom/itextpdf/layout/property/Background;->extraRight:F

    return v0
.end method

.method public getExtraTop()F
    .locals 1

    .line 164
    iget v0, p0, Lcom/itextpdf/layout/property/Background;->extraTop:F

    return v0
.end method

.method public getOpacity()F
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/itextpdf/layout/property/Background;->transparentColor:Lcom/itextpdf/layout/property/TransparentColor;

    invoke-virtual {v0}, Lcom/itextpdf/layout/property/TransparentColor;->getOpacity()F

    move-result v0

    return v0
.end method
