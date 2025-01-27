.class public abstract Lcom/itextpdf/svg/renderers/impl/AbstractGradientSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/NoDrawOperationSvgNodeRenderer;
.source "AbstractGradientSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/ISvgPaintServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/NoDrawOperationSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 2
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t draw current SvgNodeRenderer."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getChildStopRenderers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "stopRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;>;"
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractGradientSvgNodeRenderer;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 88
    .local v2, "child":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    instance-of v3, v2, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;

    if-eqz v3, :cond_0

    .line 89
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v2    # "child":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    :cond_0
    goto :goto_0

    .line 92
    :cond_1
    return-object v0
.end method

.method protected getGradientTransform()Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 2

    .line 74
    sget-object v0, Lcom/itextpdf/svg/SvgConstants$Attributes;->GRADIENT_TRANSFORM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/AbstractGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "gradientTransform":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-static {v0}, Lcom/itextpdf/svg/utils/TransformUtils;->parseTransform(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    return-object v1

    .line 78
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected isObjectBoundingBoxUnits()Z
    .locals 5

    .line 59
    sget-object v0, Lcom/itextpdf/svg/SvgConstants$Attributes;->GRADIENT_UNITS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/AbstractGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "gradientUnits":Ljava/lang/String;
    const-string/jumbo v1, "userSpaceOnUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 61
    return v2

    .line 62
    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v3, "objectBoundingBox"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v2, "Could not recognize gradient units value {0}"

    invoke-static {v2, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 66
    :cond_1
    return v1
.end method

.method protected parseSpreadMethod()Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;
    .locals 5

    .line 100
    sget-object v0, Lcom/itextpdf/svg/SvgConstants$Attributes;->SPREAD_METHOD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/AbstractGradientSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "spreadMethodValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 103
    sget-object v1, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->PAD:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    return-object v1

    .line 105
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "reflect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_1
    const-string v2, "pad"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "repeat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v3, "Could not recognize gradient spread method value {0}"

    invoke-static {v3, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 115
    sget-object v1, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->PAD:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    return-object v1

    .line 111
    :pswitch_0
    sget-object v1, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->REPEAT:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    return-object v1

    .line 109
    :pswitch_1
    sget-object v1, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->REFLECT:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    return-object v1

    .line 107
    :pswitch_2
    sget-object v1, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->PAD:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b3d265 -> :sswitch_2
        0x1b093 -> :sswitch_1
        0x40afd6bd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
