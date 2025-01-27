.class public Lcom/itextpdf/layout/property/BackgroundSize;
.super Ljava/lang/Object;
.source "BackgroundSize.java"


# instance fields
.field private backgroundHeightSize:Lcom/itextpdf/layout/property/UnitValue;

.field private backgroundWidthSize:Lcom/itextpdf/layout/property/UnitValue;

.field private contain:Z

.field private cover:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundSize;->cover:Z

    .line 49
    iput-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundSize;->contain:Z

    .line 50
    return-void
.end method

.method private clear()V
    .locals 1

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundSize;->contain:Z

    .line 139
    iput-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundSize;->cover:Z

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundSize;->backgroundWidthSize:Lcom/itextpdf/layout/property/UnitValue;

    .line 141
    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundSize;->backgroundHeightSize:Lcom/itextpdf/layout/property/UnitValue;

    .line 142
    return-void
.end method


# virtual methods
.method public getBackgroundHeightSize()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundSize;->backgroundHeightSize:Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getBackgroundWidthSize()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundSize;->backgroundWidthSize:Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public isContain()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundSize;->contain:Z

    return v0
.end method

.method public isCover()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundSize;->cover:Z

    return v0
.end method

.method public isSpecificSize()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundSize;->contain:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundSize;->cover:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setBackgroundSizeToContain()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/itextpdf/layout/property/BackgroundSize;->clear()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundSize;->contain:Z

    .line 76
    return-void
.end method

.method public setBackgroundSizeToCover()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/itextpdf/layout/property/BackgroundSize;->clear()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundSize;->cover:Z

    .line 86
    return-void
.end method

.method public setBackgroundSizeToValues(Lcom/itextpdf/layout/property/UnitValue;Lcom/itextpdf/layout/property/UnitValue;)V
    .locals 0
    .param p1, "width"    # Lcom/itextpdf/layout/property/UnitValue;
    .param p2, "height"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 63
    invoke-direct {p0}, Lcom/itextpdf/layout/property/BackgroundSize;->clear()V

    .line 64
    iput-object p1, p0, Lcom/itextpdf/layout/property/BackgroundSize;->backgroundWidthSize:Lcom/itextpdf/layout/property/UnitValue;

    .line 65
    iput-object p2, p0, Lcom/itextpdf/layout/property/BackgroundSize;->backgroundHeightSize:Lcom/itextpdf/layout/property/UnitValue;

    .line 66
    return-void
.end method
