.class public abstract Lcom/itextpdf/layout/ElementPropertyContainer;
.super Ljava/lang/Object;
.source "ElementPropertyContainer.java"

# interfaces
.implements Lcom/itextpdf/layout/IPropertyContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/itextpdf/layout/IPropertyContainer;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/itextpdf/layout/IPropertyContainer;"
    }
.end annotation


# instance fields
.field protected properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/ElementPropertyContainer;->properties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public deleteOwnProperty(I)V
    .locals 2
    .param p1, "property"    # I

    .line 98
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/ElementPropertyContainer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public getDefaultProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    packed-switch p1, :pswitch_data_0

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 122
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getOwnProperty(I)Ljava/lang/Object;
    .locals 2
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/ElementPropertyContainer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSplitCharacters()Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .locals 1

    .line 594
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/splitting/ISplitCharacters;

    return-object v0
.end method

.method public getStrokeColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 630
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getStrokeWidth()Ljava/lang/Float;
    .locals 1

    .line 652
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getTextRenderingMode()Ljava/lang/Integer;
    .locals 1

    .line 606
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x47

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public hasOwnProperty(I)Z
    .locals 2
    .param p1, "property"    # I

    .line 93
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/ElementPropertyContainer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .line 88
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->hasOwnProperty(I)Z

    move-result v0

    return v0
.end method

.method public setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "backgroundColor"    # Lcom/itextpdf/kernel/colors/Color;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            ")TT;"
        }
    .end annotation

    .line 398
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 7
    .param p1, "backgroundColor"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "opacity"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            "F)TT;"
        }
    .end annotation

    .line 409
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/ElementPropertyContainer;->setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;FFFFF)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;FFFF)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 7
    .param p1, "backgroundColor"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "extraLeft"    # F
    .param p3, "extraTop"    # F
    .param p4, "extraRight"    # F
    .param p5, "extraBottom"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            "FFFF)TT;"
        }
    .end annotation

    .line 424
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/ElementPropertyContainer;->setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;FFFFF)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;FFFFF)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 8
    .param p1, "backgroundColor"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "opacity"    # F
    .param p3, "extraLeft"    # F
    .param p4, "extraTop"    # F
    .param p5, "extraRight"    # F
    .param p6, "extraBottom"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            "FFFFF)TT;"
        }
    .end annotation

    .line 440
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    if-eqz p1, :cond_0

    new-instance v7, Lcom/itextpdf/layout/property/Background;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/property/Background;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFFF)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v7}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 441
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setBackgroundImage(Lcom/itextpdf/layout/property/BackgroundImage;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "image"    # Lcom/itextpdf/layout/property/BackgroundImage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/property/BackgroundImage;",
            ")TT;"
        }
    .end annotation

    .line 451
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x5a

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 452
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setBackgroundImage(Ljava/util/List;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/property/BackgroundImage;",
            ">;)TT;"
        }
    .end annotation

    .line 462
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    .local p1, "imagesList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/property/BackgroundImage;>;"
    const/16 v0, 0x5a

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 463
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setBaseDirection(Lcom/itextpdf/layout/property/BaseDirection;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "baseDirection"    # Lcom/itextpdf/layout/property/BaseDirection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/property/BaseDirection;",
            ")TT;"
        }
    .end annotation

    .line 789
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 790
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setBold()Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 674
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 675
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setBorder(Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "border"    # Lcom/itextpdf/layout/borders/Border;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/borders/Border;",
            ")TT;"
        }
    .end annotation

    .line 473
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 474
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setBorderBottom(Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "border"    # Lcom/itextpdf/layout/borders/Border;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/borders/Border;",
            ")TT;"
        }
    .end annotation

    .line 506
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 507
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setBorderBottomLeftRadius(Lcom/itextpdf/layout/property/BorderRadius;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "borderRadius"    # Lcom/itextpdf/layout/property/BorderRadius;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/property/BorderRadius;",
            ")TT;"
        }
    .end annotation

    .line 539
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x71

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 540
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setBorderBottomRightRadius(Lcom/itextpdf/layout/property/BorderRadius;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "borderRadius"    # Lcom/itextpdf/layout/property/BorderRadius;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/property/BorderRadius;",
            ")TT;"
        }
    .end annotation

    .line 550
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x70

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 551
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setBorderLeft(Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "border"    # Lcom/itextpdf/layout/borders/Border;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/borders/Border;",
            ")TT;"
        }
    .end annotation

    .line 517
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 518
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setBorderRadius(Lcom/itextpdf/layout/property/BorderRadius;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "borderRadius"    # Lcom/itextpdf/layout/property/BorderRadius;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/property/BorderRadius;",
            ")TT;"
        }
    .end annotation

    .line 528
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 529
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setBorderRight(Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "border"    # Lcom/itextpdf/layout/borders/Border;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/borders/Border;",
            ")TT;"
        }
    .end annotation

    .line 495
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 496
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setBorderTop(Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "border"    # Lcom/itextpdf/layout/borders/Border;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/borders/Border;",
            ")TT;"
        }
    .end annotation

    .line 484
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 485
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setBorderTopLeftRadius(Lcom/itextpdf/layout/property/BorderRadius;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "borderRadius"    # Lcom/itextpdf/layout/property/BorderRadius;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/property/BorderRadius;",
            ")TT;"
        }
    .end annotation

    .line 561
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x6e

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 562
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setBorderTopRightRadius(Lcom/itextpdf/layout/property/BorderRadius;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "borderRadius"    # Lcom/itextpdf/layout/property/BorderRadius;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/property/BorderRadius;",
            ")TT;"
        }
    .end annotation

    .line 572
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x6f

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 573
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setCharacterSpacing(F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .param p1, "charSpacing"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 363
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setDestination(Ljava/lang/String;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 823
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 824
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setFixedPosition(FFF)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "left"    # F
    .param p2, "bottom"    # F
    .param p3, "width"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)TT;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    invoke-static {p3}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setFixedPosition(FFLcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 168
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setFixedPosition(FFLcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .param p1, "left"    # F
    .param p2, "bottom"    # F
    .param p3, "width"    # Lcom/itextpdf/layout/property/UnitValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lcom/itextpdf/layout/property/UnitValue;",
            ")TT;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 185
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 186
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 187
    const/16 v0, 0x4d

    invoke-virtual {p0, v0, p3}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 188
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setFixedPosition(IFFF)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .param p1, "pageNumber"    # I
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "width"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFFF)TT;"
        }
    .end annotation

    .line 205
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    invoke-virtual {p0, p2, p3, p4}, Lcom/itextpdf/layout/ElementPropertyContainer;->setFixedPosition(FFF)Lcom/itextpdf/layout/IPropertyContainer;

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 207
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setFixedPosition(IFFLcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .param p1, "pageNumber"    # I
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "width"    # Lcom/itextpdf/layout/property/UnitValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Lcom/itextpdf/layout/property/UnitValue;",
            ")TT;"
        }
    .end annotation

    .line 224
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    invoke-virtual {p0, p2, p3, p4}, Lcom/itextpdf/layout/ElementPropertyContainer;->setFixedPosition(FFLcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 226
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/font/PdfFont;",
            ")TT;"
        }
    .end annotation

    .line 249
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 250
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setFont(Ljava/lang/String;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "font"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 306
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setFontColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "fontColor"    # Lcom/itextpdf/kernel/colors/Color;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            ")TT;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setFontColor(Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    return-object v0
.end method

.method public setFontColor(Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .param p1, "fontColor"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "opacity"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            "F)TT;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    if-eqz p1, :cond_0

    new-instance v0, Lcom/itextpdf/layout/property/TransparentColor;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/layout/property/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x15

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 328
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setFontFamily(Ljava/util/List;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 291
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    .local p1, "fontFamilyNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setFontFamily([Ljava/lang/String;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    return-object v0
.end method

.method public varargs setFontFamily([Ljava/lang/String;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "fontFamilyNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 270
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 271
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setFontKerning(Lcom/itextpdf/layout/property/FontKerning;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "fontKerning"    # Lcom/itextpdf/layout/property/FontKerning;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/property/FontKerning;",
            ")TT;"
        }
    .end annotation

    .line 387
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 388
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setFontScript(Ljava/lang/Character$UnicodeScript;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "script"    # Ljava/lang/Character$UnicodeScript;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Character$UnicodeScript;",
            ")TT;"
        }
    .end annotation

    .line 812
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 813
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .param p1, "fontSize"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 338
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    invoke-static {p1}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 339
    .local v0, "fontSizeAsUV":Lcom/itextpdf/layout/property/UnitValue;
    const/16 v1, 0x18

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 340
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v1
.end method

.method public setHorizontalAlignment(Lcom/itextpdf/layout/property/HorizontalAlignment;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "horizontalAlignment"    # Lcom/itextpdf/layout/property/HorizontalAlignment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/property/HorizontalAlignment;",
            ")TT;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x1c

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 237
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setHyphenation(Lcom/itextpdf/layout/hyphenation/HyphenationConfig;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "hyphenationConfig"    # Lcom/itextpdf/layout/hyphenation/HyphenationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/hyphenation/HyphenationConfig;",
            ")TT;"
        }
    .end annotation

    .line 801
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 802
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setItalic()Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 685
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 686
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setLineThrough()Lcom/itextpdf/layout/IPropertyContainer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 697
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x3e955555

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/ElementPropertyContainer;->setUnderline(Lcom/itextpdf/kernel/colors/Color;FFFFI)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    return-object v0
.end method

.method public setOpacity(Ljava/lang/Float;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "opacity"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")TT;"
        }
    .end annotation

    .line 835
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x5c

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 836
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 83
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/ElementPropertyContainer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public setRelativePosition(FFFF)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)TT;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 147
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 148
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x36

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 149
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x49

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 150
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 151
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setSplitCharacters(Lcom/itextpdf/layout/splitting/ISplitCharacters;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "splitCharacters"    # Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/splitting/ISplitCharacters;",
            ")TT;"
        }
    .end annotation

    .line 584
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x3e

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 585
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "strokeColor"    # Lcom/itextpdf/kernel/colors/Color;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            ")TT;"
        }
    .end annotation

    .line 641
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x3f

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 642
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setStrokeWidth(F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .param p1, "strokeWidth"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 663
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 664
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setTextAlignment(Lcom/itextpdf/layout/property/TextAlignment;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .param p1, "alignment"    # Lcom/itextpdf/layout/property/TextAlignment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/property/TextAlignment;",
            ")TT;"
        }
    .end annotation

    .line 350
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 351
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setTextRenderingMode(I)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .param p1, "textRenderingMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 619
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x47

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 620
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setUnderline()Lcom/itextpdf/layout/IPropertyContainer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 707
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x42000000    # -0.125f

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/ElementPropertyContainer;->setUnderline(Lcom/itextpdf/kernel/colors/Color;FFFFI)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    return-object v0
.end method

.method public setUnderline(FF)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 7
    .param p1, "thickness"    # F
    .param p2, "yPosition"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation

    .line 720
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/ElementPropertyContainer;->setUnderline(Lcom/itextpdf/kernel/colors/Color;FFFFI)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    return-object v0
.end method

.method public setUnderline(Lcom/itextpdf/kernel/colors/Color;FFFFFI)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 10
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "opacity"    # F
    .param p3, "thickness"    # F
    .param p4, "thicknessMul"    # F
    .param p5, "yPosition"    # F
    .param p6, "yPositionMul"    # F
    .param p7, "lineCapStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            "FFFFFI)TT;"
        }
    .end annotation

    .line 765
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    move-object v0, p0

    new-instance v9, Lcom/itextpdf/layout/property/Underline;

    move-object v1, v9

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/itextpdf/layout/property/Underline;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFFFI)V

    .line 766
    .local v1, "newUnderline":Lcom/itextpdf/layout/property/Underline;
    const/16 v2, 0x4a

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/ElementPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    .line 767
    .local v3, "currentProperty":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_0

    .line 768
    move-object v2, v3

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 769
    :cond_0
    instance-of v4, v3, Lcom/itextpdf/layout/property/Underline;

    if-eqz v4, :cond_1

    .line 770
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .local v4, "mergedUnderlines":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/property/Underline;>;"
    move-object v5, v3

    check-cast v5, Lcom/itextpdf/layout/property/Underline;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    invoke-virtual {p0, v2, v4}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 774
    .end local v4    # "mergedUnderlines":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/property/Underline;>;"
    goto :goto_0

    .line 775
    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 777
    :goto_0
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v2
.end method

.method public setUnderline(Lcom/itextpdf/kernel/colors/Color;FFFFI)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 8
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "thickness"    # F
    .param p3, "thicknessMul"    # F
    .param p4, "yPosition"    # F
    .param p5, "yPositionMul"    # F
    .param p6, "lineCapStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            "FFFFI)TT;"
        }
    .end annotation

    .line 742
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/layout/ElementPropertyContainer;->setUnderline(Lcom/itextpdf/kernel/colors/Color;FFFFFI)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    return-object v0
.end method

.method public setWordSpacing(F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .param p1, "wordSpacing"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 374
    .local p0, "this":Lcom/itextpdf/layout/ElementPropertyContainer;, "Lcom/itextpdf/layout/ElementPropertyContainer<TT;>;"
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x4e

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 375
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method
