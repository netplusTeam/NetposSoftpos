.class public Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;
.super Ljava/lang/Object;
.source "CssBackgroundValidator.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;


# static fields
.field private static final MAX_AMOUNT_OF_VALUES:I = 0x2


# instance fields
.field private final backgroundProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "backgroundProperty"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private checkMultiValuePositionXY(Ljava/util/List;I)Z
    .locals 4
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 92
    .local p1, "propertyValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    const-string v1, "background-position-x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 93
    const-string v2, "background-position-y"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    return v1

    .line 94
    :cond_1
    :goto_0
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BACKGROUND_POSITION_VALUES:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 95
    return v2

    .line 97
    :cond_2
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BACKGROUND_POSITION_VALUES:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    if-ne p2, v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method

.method private isMultiValueAllowedForThisType()Z
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    const-string v1, "background-origin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 104
    const-string v1, "background-clip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 105
    const-string v1, "background-image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 106
    const-string v1, "background-attachment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0
.end method

.method private static isMultiValueAllowedForThisValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "repeat-x"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const-string/jumbo v0, "repeat-y"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const-string v0, "cover"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const-string v0, "contain"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const-string v0, "center"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0
.end method

.method private isPropertyValueCorrespondsPropertyType(Ljava/lang/String;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    .line 118
    nop

    .line 119
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->resolveBackgroundPropertyType(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    move-result-object v0

    .line 120
    .local v0, "propertyType":Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->UNDEFINED:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 121
    return v2

    .line 123
    :cond_0
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;->getBackgroundPropertyNameFromType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 124
    return v3

    .line 126
    :cond_1
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    const-string v4, "background-position-y"

    const-string v5, "background-position-x"

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 127
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 128
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    :cond_2
    return v3

    .line 131
    :cond_3
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_ORIGIN_OR_CLIP:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 132
    const-string v6, "background-clip"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 133
    const-string v6, "background-origin"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 134
    :cond_4
    return v3

    .line 136
    :cond_5
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION_OR_SIZE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 137
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 138
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->backgroundProperty:Ljava/lang/String;

    .line 139
    const-string v4, "background-size"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    move v2, v3

    goto :goto_0

    :cond_7
    nop

    .line 136
    :goto_0
    return v2
.end method

.method private isValidProperty(Ljava/util/List;I)Z
    .locals 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 79
    .local p1, "propertyValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->isPropertyValueCorrespondsPropertyType(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->isMultiValueAllowedForThisType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->isMultiValueAllowedForThisValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->checkMultiValuePositionXY(Ljava/util/List;I)Z

    move-result v0

    return v0

    .line 84
    :cond_0
    return v1

    .line 86
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_2
    return v1
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 7
    .param p1, "objectString"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 58
    return v0

    .line 60
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isInitialOrInheritOrUnset(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 61
    return v2

    .line 64
    :cond_1
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->extractShorthandProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, "extractedProperties":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 66
    .local v4, "propertyValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    goto :goto_2

    .line 69
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 70
    invoke-direct {p0, v4, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;->isValidProperty(Ljava/util/List;I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 71
    return v0

    .line 69
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 74
    .end local v4    # "propertyValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i":I
    :cond_4
    goto :goto_0

    .line 67
    .restart local v4    # "propertyValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    return v0

    .line 75
    .end local v4    # "propertyValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    return v2
.end method
