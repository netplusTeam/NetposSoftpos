.class public final Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;
.super Ljava/lang/Object;
.source "CssBackgroundUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getBackgroundPropertyNameFromType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;)Ljava/lang/String;
    .locals 2
    .param p0, "propertyType"    # Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    .line 66
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$1;->$SwitchMap$com$itextpdf$styledxmlparser$css$util$CssBackgroundUtils$BackgroundPropertyType:[I

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 88
    const-string/jumbo v0, "undefined"

    return-object v0

    .line 86
    :pswitch_0
    const-string v0, "background-attachment"

    return-object v0

    .line 84
    :pswitch_1
    const-string v0, "background-clip"

    return-object v0

    .line 82
    :pswitch_2
    const-string v0, "background-origin"

    return-object v0

    .line 80
    :pswitch_3
    const-string v0, "background-repeat"

    return-object v0

    .line 78
    :pswitch_4
    const-string v0, "background-size"

    return-object v0

    .line 76
    :pswitch_5
    const-string v0, "background-position-y"

    return-object v0

    .line 74
    :pswitch_6
    const-string v0, "background-position-x"

    return-object v0

    .line 72
    :pswitch_7
    const-string v0, "background-position"

    return-object v0

    .line 70
    :pswitch_8
    const-string v0, "background-image"

    return-object v0

    .line 68
    :pswitch_9
    const-string v0, "background-color"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseBackgroundRepeat(Ljava/lang/String;)Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "space"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "round"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "no-repeat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "repeat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 55
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    return-object v0

    .line 52
    :pswitch_0
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->SPACE:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    return-object v0

    .line 50
    :pswitch_1
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->ROUND:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    return-object v0

    .line 48
    :pswitch_2
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->NO_REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b3d265 -> :sswitch_3
        -0x2b3140d9 -> :sswitch_2
        0x67ab18e -> :sswitch_1
        0x688f106 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static resolveBackgroundPropertyType(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "url("

    .line 100
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "url("

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x28

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x29

    .line 101
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 102
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_IMAGE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object v1

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;->isCssLinearGradientValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "none"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 107
    :cond_1
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BACKGROUND_REPEAT_VALUES:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_REPEAT:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object v1

    .line 110
    :cond_2
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BACKGROUND_ATTACHMENT_VALUES:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_ATTACHMENT:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object v1

    .line 113
    :cond_3
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BACKGROUND_POSITION_X_VALUES:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "center"

    if-eqz v1, :cond_4

    .line 114
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 115
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION_X:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object v1

    .line 117
    :cond_4
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BACKGROUND_POSITION_Y_VALUES:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 119
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION_Y:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object v1

    .line 121
    :cond_5
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 122
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object v1

    .line 124
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 125
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isMetricValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 128
    :cond_7
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BACKGROUND_SIZE_VALUES:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 129
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_SIZE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object v1

    .line 131
    :cond_8
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isColorProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 132
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_COLOR:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object v1

    .line 134
    :cond_9
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BACKGROUND_ORIGIN_OR_CLIP_VALUES:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 135
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_ORIGIN_OR_CLIP:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object v1

    .line 137
    :cond_a
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->UNDEFINED:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object v1

    .line 126
    :cond_b
    :goto_0
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION_OR_SIZE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object v1

    .line 105
    :cond_c
    :goto_1
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_IMAGE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object v1
.end method
