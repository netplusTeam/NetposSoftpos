.class public Lcom/itextpdf/layout/element/Image;
.super Lcom/itextpdf/layout/element/AbstractElement;
.source "Image.java"

# interfaces
.implements Lcom/itextpdf/layout/element/ILeafElement;
.implements Lcom/itextpdf/layout/tagging/IAccessibleElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/layout/element/AbstractElement<",
        "Lcom/itextpdf/layout/element/Image;",
        ">;",
        "Lcom/itextpdf/layout/element/ILeafElement;",
        "Lcom/itextpdf/layout/tagging/IAccessibleElement;"
    }
.end annotation


# instance fields
.field protected tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

.field protected xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/image/ImageData;)V
    .locals 2
    .param p1, "img"    # Lcom/itextpdf/io/image/ImageData;

    .line 161
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-static {p1}, Lcom/itextpdf/layout/element/Image;->checkImageType(Lcom/itextpdf/io/image/ImageData;)Lcom/itextpdf/io/image/ImageData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/element/Image;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)V

    .line 162
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/image/ImageData;FF)V
    .locals 2
    .param p1, "img"    # Lcom/itextpdf/io/image/ImageData;
    .param p2, "left"    # F
    .param p3, "bottom"    # F

    .line 174
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-static {p1}, Lcom/itextpdf/layout/element/Image;->checkImageType(Lcom/itextpdf/io/image/ImageData;)Lcom/itextpdf/io/image/ImageData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/itextpdf/layout/element/Image;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FF)V

    .line 175
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/image/ImageData;FFF)V
    .locals 2
    .param p1, "img"    # Lcom/itextpdf/io/image/ImageData;
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "width"    # F

    .line 188
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-static {p1}, Lcom/itextpdf/layout/element/Image;->checkImageType(Lcom/itextpdf/io/image/ImageData;)Lcom/itextpdf/io/image/ImageData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/itextpdf/layout/element/Image;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FFF)V

    .line 189
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V
    .locals 0
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 91
    invoke-direct {p0}, Lcom/itextpdf/layout/element/AbstractElement;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)V
    .locals 2
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p2, "left"    # F
    .param p3, "bottom"    # F

    .line 147
    invoke-direct {p0}, Lcom/itextpdf/layout/element/AbstractElement;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 149
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 150
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 151
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)V
    .locals 0
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    .line 81
    invoke-direct {p0}, Lcom/itextpdf/layout/element/AbstractElement;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;F)V
    .locals 0
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .param p2, "width"    # F

    .line 102
    invoke-direct {p0}, Lcom/itextpdf/layout/element/AbstractElement;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 104
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/element/Image;->setWidth(F)Lcom/itextpdf/layout/element/Image;

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FF)V
    .locals 2
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .param p2, "left"    # F
    .param p3, "bottom"    # F

    .line 132
    invoke-direct {p0}, Lcom/itextpdf/layout/element/AbstractElement;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 134
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 135
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 136
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FFF)V
    .locals 2
    .param p1, "xObject"    # Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "width"    # F

    .line 116
    invoke-direct {p0}, Lcom/itextpdf/layout/element/AbstractElement;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 118
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 119
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 120
    invoke-virtual {p0, p4}, Lcom/itextpdf/layout/element/Image;->setWidth(F)Lcom/itextpdf/layout/element/Image;

    .line 121
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 122
    return-void
.end method

.method private static checkImageType(Lcom/itextpdf/io/image/ImageData;)Lcom/itextpdf/io/image/ImageData;
    .locals 2
    .param p0, "image"    # Lcom/itextpdf/io/image/ImageData;

    .line 772
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    if-nez v0, :cond_0

    .line 775
    return-object p0

    .line 773
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Cannot create layout image by WmfImage instance. First convert the image into FormXObject and then use the corresponding layout image constructor."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 2

    .line 760
    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    if-nez v0, :cond_0

    .line 761
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    const-string v1, "Figure"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/Image;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    return-object v0
.end method

.method public getImageHeight()F
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v0

    return v0
.end method

.method public getImageScaledHeight()F
    .locals 2

    .line 728
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 729
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 730
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    .line 728
    :goto_0
    return v0
.end method

.method public getImageScaledWidth()F
    .locals 2

    .line 717
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 718
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 719
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v1

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    .line 717
    :goto_0
    return v0
.end method

.method public getImageWidth()F
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v0

    return v0
.end method

.method public getMarginBottom()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 281
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getMarginLeft()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 218
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getMarginRight()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 239
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getMarginTop()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 260
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getObjectFit()Lcom/itextpdf/layout/property/ObjectFit;
    .locals 2

    .line 751
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/ObjectFit;

    return-object v0

    .line 754
    :cond_0
    sget-object v0, Lcom/itextpdf/layout/property/ObjectFit;->FILL:Lcom/itextpdf/layout/property/ObjectFit;

    return-object v0
.end method

.method public getPaddingBottom()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 378
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getPaddingLeft()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 315
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getPaddingRight()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 336
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getPaddingTop()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 357
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getWidth()Lcom/itextpdf/layout/property/UnitValue;
    .locals 1

    .line 707
    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/UnitValue;

    return-object v0
.end method

.method public getXObject()Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    return-object v0
.end method

.method protected makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 768
    new-instance v0, Lcom/itextpdf/layout/renderer/ImageRenderer;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/renderer/ImageRenderer;-><init>(Lcom/itextpdf/layout/element/Image;)V

    return-object v0
.end method

.method public scale(FF)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p1, "horizontalScaling"    # F
    .param p2, "verticalScaling"    # F

    .line 429
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 430
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x4c

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 431
    return-object p0
.end method

.method public scaleAbsolute(FF)Lcom/itextpdf/layout/element/Image;
    .locals 3
    .param p1, "fitWidth"    # F
    .param p2, "fitHeight"    # F

    .line 457
    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v0

    div-float v0, p1, v0

    .line 458
    .local v0, "horizontalScaling":F
    iget-object v1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v1

    div-float v1, p2, v1

    .line 459
    .local v1, "verticalScaling":F
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/element/Image;->scale(FF)Lcom/itextpdf/layout/element/Image;

    move-result-object v2

    return-object v2
.end method

.method public scaleToFit(FF)Lcom/itextpdf/layout/element/Image;
    .locals 4
    .param p1, "fitWidth"    # F
    .param p2, "fitHeight"    # F

    .line 443
    iget-object v0, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v0

    div-float v0, p1, v0

    .line 444
    .local v0, "horizontalScaling":F
    iget-object v1, p0, Lcom/itextpdf/layout/element/Image;->xObject:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v1

    div-float v1, p2, v1

    .line 445
    .local v1, "verticalScaling":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/layout/element/Image;->scale(FF)Lcom/itextpdf/layout/element/Image;

    move-result-object v2

    return-object v2
.end method

.method public setAutoScale(Z)Lcom/itextpdf/layout/element/Image;
    .locals 3
    .param p1, "autoScale"    # Z

    .line 469
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/element/Image;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 470
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    :cond_0
    const-class v0, Lcom/itextpdf/layout/element/Image;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 473
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "The image cannot be auto scaled and scaled by a certain parameter simultaneously"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 475
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_1
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 476
    return-object p0
.end method

.method public setAutoScaleHeight(Z)Lcom/itextpdf/layout/element/Image;
    .locals 3
    .param p1, "autoScale"    # Z

    .line 487
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 489
    const/4 v0, 0x4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 490
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    goto :goto_0

    .line 492
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 494
    :goto_0
    return-object p0
.end method

.method public setAutoScaleWidth(Z)Lcom/itextpdf/layout/element/Image;
    .locals 4
    .param p1, "autoScale"    # Z

    .line 504
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->hasProperty(I)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Image;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 506
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 507
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    goto :goto_0

    .line 509
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 511
    :goto_0
    return-object p0
.end method

.method public setFixedPosition(FF)Lcom/itextpdf/layout/element/Image;
    .locals 1
    .param p1, "left"    # F
    .param p2, "bottom"    # F

    .line 524
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Image;->getWidth()Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/element/Image;->setFixedPosition(FFLcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 525
    return-object p0
.end method

.method public setFixedPosition(IFF)Lcom/itextpdf/layout/element/Image;
    .locals 1
    .param p1, "pageNumber"    # I
    .param p2, "left"    # F
    .param p3, "bottom"    # F

    .line 539
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Image;->getWidth()Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/layout/element/Image;->setFixedPosition(IFFLcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 540
    return-object p0
.end method

.method public setHeight(F)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p1, "height"    # F

    .line 570
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 571
    .local v0, "heightAsUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x1b

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 572
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/element/Image;

    return-object v1
.end method

.method public setHeight(Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/element/Image;
    .locals 1
    .param p1, "height"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 582
    const/16 v0, 0x1b

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 583
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/element/Image;

    return-object v0
.end method

.method public setMarginBottom(F)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p1, "value"    # F

    .line 291
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 292
    .local v0, "marginUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x2b

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 293
    return-object p0
.end method

.method public setMarginLeft(F)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p1, "value"    # F

    .line 228
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 229
    .local v0, "marginUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x2c

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 230
    return-object p0
.end method

.method public setMarginRight(F)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p1, "value"    # F

    .line 249
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 250
    .local v0, "marginUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x2d

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 251
    return-object p0
.end method

.method public setMarginTop(F)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p1, "value"    # F

    .line 270
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 271
    .local v0, "marginUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 272
    return-object p0
.end method

.method public setMargins(FFFF)Lcom/itextpdf/layout/element/Image;
    .locals 1
    .param p1, "marginTop"    # F
    .param p2, "marginRight"    # F
    .param p3, "marginBottom"    # F
    .param p4, "marginLeft"    # F

    .line 306
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/Image;->setMarginTop(F)Lcom/itextpdf/layout/element/Image;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/layout/element/Image;->setMarginRight(F)Lcom/itextpdf/layout/element/Image;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/layout/element/Image;->setMarginBottom(F)Lcom/itextpdf/layout/element/Image;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/itextpdf/layout/element/Image;->setMarginLeft(F)Lcom/itextpdf/layout/element/Image;

    move-result-object v0

    return-object v0
.end method

.method public setMaxHeight(F)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p1, "maxHeight"    # F

    .line 593
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 594
    .local v0, "maxHeightAsUv":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x54

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 595
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/element/Image;

    return-object v1
.end method

.method public setMaxHeight(Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/element/Image;
    .locals 1
    .param p1, "maxHeight"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 605
    const/16 v0, 0x54

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 606
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/element/Image;

    return-object v0
.end method

.method public setMaxWidth(F)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p1, "maxWidth"    # F

    .line 639
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 640
    .local v0, "minHeightAsUv":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x4f

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 641
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/element/Image;

    return-object v1
.end method

.method public setMaxWidth(Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/element/Image;
    .locals 1
    .param p1, "maxWidth"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 651
    const/16 v0, 0x4f

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 652
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/element/Image;

    return-object v0
.end method

.method public setMinHeight(F)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p1, "minHeight"    # F

    .line 616
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 617
    .local v0, "minHeightAsUv":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x55

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 618
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/element/Image;

    return-object v1
.end method

.method public setMinHeight(Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/element/Image;
    .locals 1
    .param p1, "minHeight"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 628
    const/16 v0, 0x55

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 629
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/element/Image;

    return-object v0
.end method

.method public setMinWidth(F)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p1, "minWidth"    # F

    .line 662
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 663
    .local v0, "minHeightAsUv":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x50

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 664
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/element/Image;

    return-object v1
.end method

.method public setMinWidth(Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/element/Image;
    .locals 1
    .param p1, "minWidth"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 674
    const/16 v0, 0x50

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 675
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/element/Image;

    return-object v0
.end method

.method public setObjectFit(Lcom/itextpdf/layout/property/ObjectFit;)Lcom/itextpdf/layout/element/Image;
    .locals 1
    .param p1, "objectFit"    # Lcom/itextpdf/layout/property/ObjectFit;

    .line 740
    const/16 v0, 0x7d

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 741
    return-object p0
.end method

.method public setPadding(F)Lcom/itextpdf/layout/element/Image;
    .locals 1
    .param p1, "commonPadding"    # F

    .line 400
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/itextpdf/layout/element/Image;->setPaddings(FFFF)Lcom/itextpdf/layout/element/Image;

    move-result-object v0

    return-object v0
.end method

.method public setPaddingBottom(F)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p1, "value"    # F

    .line 388
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 389
    .local v0, "paddingUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 390
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/element/Image;

    return-object v1
.end method

.method public setPaddingLeft(F)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p1, "value"    # F

    .line 325
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 326
    .local v0, "paddingUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 327
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/element/Image;

    return-object v1
.end method

.method public setPaddingRight(F)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p1, "value"    # F

    .line 346
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 347
    .local v0, "paddingUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x31

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 348
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/element/Image;

    return-object v1
.end method

.method public setPaddingTop(F)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p1, "value"    # F

    .line 367
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 368
    .local v0, "paddingUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x32

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 369
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/element/Image;

    return-object v1
.end method

.method public setPaddings(FFFF)Lcom/itextpdf/layout/element/Image;
    .locals 0
    .param p1, "paddingTop"    # F
    .param p2, "paddingRight"    # F
    .param p3, "paddingBottom"    # F
    .param p4, "paddingLeft"    # F

    .line 413
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/Image;->setPaddingTop(F)Lcom/itextpdf/layout/element/Image;

    .line 414
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/element/Image;->setPaddingRight(F)Lcom/itextpdf/layout/element/Image;

    .line 415
    invoke-virtual {p0, p3}, Lcom/itextpdf/layout/element/Image;->setPaddingBottom(F)Lcom/itextpdf/layout/element/Image;

    .line 416
    invoke-virtual {p0, p4}, Lcom/itextpdf/layout/element/Image;->setPaddingLeft(F)Lcom/itextpdf/layout/element/Image;

    .line 417
    return-object p0
.end method

.method public setRotationAngle(D)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p1, "radAngle"    # D

    .line 208
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v1, 0x37

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 209
    return-object p0
.end method

.method public setWidth(F)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p1, "width"    # F

    .line 685
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    const/16 v1, 0x4d

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 686
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/element/Image;

    return-object v0
.end method

.method public setWidth(Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/element/Image;
    .locals 1
    .param p1, "width"    # Lcom/itextpdf/layout/property/UnitValue;

    .line 696
    const/16 v0, 0x4d

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Image;->setProperty(ILjava/lang/Object;)V

    .line 697
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/element/Image;

    return-object v0
.end method
