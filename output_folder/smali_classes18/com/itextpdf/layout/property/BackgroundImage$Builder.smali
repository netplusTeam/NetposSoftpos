.class public Lcom/itextpdf/layout/property/BackgroundImage$Builder;
.super Ljava/lang/Object;
.source "BackgroundImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/property/BackgroundImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backgroundSize:Lcom/itextpdf/layout/property/BackgroundSize;

.field private blendMode:Lcom/itextpdf/layout/property/BlendMode;

.field private clip:Lcom/itextpdf/layout/property/BackgroundBox;

.field private image:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

.field private linearGradientBuilder:Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

.field private origin:Lcom/itextpdf/layout/property/BackgroundBox;

.field private position:Lcom/itextpdf/layout/property/BackgroundPosition;

.field private repeat:Lcom/itextpdf/layout/property/BackgroundRepeat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    new-instance v0, Lcom/itextpdf/layout/property/BackgroundPosition;

    invoke-direct {v0}, Lcom/itextpdf/layout/property/BackgroundPosition;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->position:Lcom/itextpdf/layout/property/BackgroundPosition;

    .line 411
    new-instance v0, Lcom/itextpdf/layout/property/BackgroundRepeat;

    invoke-direct {v0}, Lcom/itextpdf/layout/property/BackgroundRepeat;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->repeat:Lcom/itextpdf/layout/property/BackgroundRepeat;

    .line 412
    invoke-static {}, Lcom/itextpdf/layout/property/BackgroundImage;->access$000()Lcom/itextpdf/layout/property/BlendMode;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->blendMode:Lcom/itextpdf/layout/property/BlendMode;

    .line 413
    new-instance v0, Lcom/itextpdf/layout/property/BackgroundSize;

    invoke-direct {v0}, Lcom/itextpdf/layout/property/BackgroundSize;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->backgroundSize:Lcom/itextpdf/layout/property/BackgroundSize;

    .line 414
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundBox;->BORDER_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->clip:Lcom/itextpdf/layout/property/BackgroundBox;

    .line 415
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundBox;->PADDING_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->origin:Lcom/itextpdf/layout/property/BackgroundBox;

    .line 418
    return-void
.end method


# virtual methods
.method public build()Lcom/itextpdf/layout/property/BackgroundImage;
    .locals 11

    .line 525
    new-instance v10, Lcom/itextpdf/layout/property/BackgroundImage;

    iget-object v1, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    iget-object v2, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->repeat:Lcom/itextpdf/layout/property/BackgroundRepeat;

    iget-object v3, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->position:Lcom/itextpdf/layout/property/BackgroundPosition;

    iget-object v4, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->backgroundSize:Lcom/itextpdf/layout/property/BackgroundSize;

    iget-object v5, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->linearGradientBuilder:Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    iget-object v6, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->blendMode:Lcom/itextpdf/layout/property/BlendMode;

    iget-object v7, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->clip:Lcom/itextpdf/layout/property/BackgroundBox;

    iget-object v8, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->origin:Lcom/itextpdf/layout/property/BackgroundBox;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/itextpdf/layout/property/BackgroundImage;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;Lcom/itextpdf/layout/property/BackgroundPosition;Lcom/itextpdf/layout/property/BackgroundSize;Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/layout/property/BlendMode;Lcom/itextpdf/layout/property/BackgroundBox;Lcom/itextpdf/layout/property/BackgroundBox;Lcom/itextpdf/layout/property/BackgroundImage$1;)V

    return-object v10
.end method

.method public setBackgroundBlendMode(Lcom/itextpdf/layout/property/BlendMode;)Lcom/itextpdf/layout/property/BackgroundImage$Builder;
    .locals 0
    .param p1, "blendMode"    # Lcom/itextpdf/layout/property/BlendMode;

    .line 478
    if-eqz p1, :cond_0

    .line 479
    iput-object p1, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->blendMode:Lcom/itextpdf/layout/property/BlendMode;

    .line 481
    :cond_0
    return-object p0
.end method

.method public setBackgroundClip(Lcom/itextpdf/layout/property/BackgroundBox;)Lcom/itextpdf/layout/property/BackgroundImage$Builder;
    .locals 0
    .param p1, "clip"    # Lcom/itextpdf/layout/property/BackgroundBox;

    .line 504
    iput-object p1, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->clip:Lcom/itextpdf/layout/property/BackgroundBox;

    .line 505
    return-object p0
.end method

.method public setBackgroundOrigin(Lcom/itextpdf/layout/property/BackgroundBox;)Lcom/itextpdf/layout/property/BackgroundImage$Builder;
    .locals 0
    .param p1, "origin"    # Lcom/itextpdf/layout/property/BackgroundBox;

    .line 515
    iput-object p1, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->origin:Lcom/itextpdf/layout/property/BackgroundBox;

    .line 516
    return-object p0
.end method

.method public setBackgroundPosition(Lcom/itextpdf/layout/property/BackgroundPosition;)Lcom/itextpdf/layout/property/BackgroundImage$Builder;
    .locals 0
    .param p1, "position"    # Lcom/itextpdf/layout/property/BackgroundPosition;

    .line 467
    iput-object p1, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->position:Lcom/itextpdf/layout/property/BackgroundPosition;

    .line 468
    return-object p0
.end method

.method public setBackgroundRepeat(Lcom/itextpdf/layout/property/BackgroundRepeat;)Lcom/itextpdf/layout/property/BackgroundImage$Builder;
    .locals 0
    .param p1, "repeat"    # Lcom/itextpdf/layout/property/BackgroundRepeat;

    .line 456
    iput-object p1, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->repeat:Lcom/itextpdf/layout/property/BackgroundRepeat;

    .line 457
    return-object p0
.end method

.method public setBackgroundSize(Lcom/itextpdf/layout/property/BackgroundSize;)Lcom/itextpdf/layout/property/BackgroundImage$Builder;
    .locals 0
    .param p1, "backgroundSize"    # Lcom/itextpdf/layout/property/BackgroundSize;

    .line 491
    if-eqz p1, :cond_0

    .line 492
    iput-object p1, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->backgroundSize:Lcom/itextpdf/layout/property/BackgroundSize;

    .line 494
    :cond_0
    return-object p0
.end method

.method public setImage(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;)Lcom/itextpdf/layout/property/BackgroundImage$Builder;
    .locals 1
    .param p1, "image"    # Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 429
    iput-object p1, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->linearGradientBuilder:Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    .line 431
    return-object p0
.end method

.method public setLinearGradientBuilder(Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;)Lcom/itextpdf/layout/property/BackgroundImage$Builder;
    .locals 2
    .param p1, "linearGradientBuilder"    # Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    .line 443
    iput-object p1, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->linearGradientBuilder:Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    .line 444
    new-instance v0, Lcom/itextpdf/layout/property/BackgroundRepeat;

    sget-object v1, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->NO_REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/property/BackgroundRepeat;-><init>(Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;)V

    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->repeat:Lcom/itextpdf/layout/property/BackgroundRepeat;

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage$Builder;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 446
    return-object p0
.end method
