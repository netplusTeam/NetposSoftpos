.class public Lcom/itextpdf/svg/css/impl/StyleResolverUtil;
.super Ljava/lang/Object;
.source "StyleResolverUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final fontSizeDependentPercentage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/itextpdf/svg/css/impl/StyleResolverUtil;->fontSizeDependentPercentage:Ljava/util/List;

    .line 71
    const-string v1, "font-size"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v1, "line-height"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkInheritance(Ljava/lang/String;)Z
    .locals 3
    .param p1, "styleProperty"    # Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->INHERITANCE_RULES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;

    .line 120
    .local v1, "inheritanceRule":Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;
    invoke-interface {v1, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;->isInheritable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const/4 v0, 0x1

    return v0

    .line 123
    .end local v1    # "inheritanceRule":Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;
    :cond_0
    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static valueIsOfMeasurement(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "measurement"    # Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 136
    return v0

    .line 137
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_1
    return v0
.end method


# virtual methods
.method public mergeParentStyleDeclaration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2, "styleProperty"    # Ljava/lang/String;
    .param p3, "parentPropValue"    # Ljava/lang/String;
    .param p4, "parentFontSizeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 84
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    .local v0, "childPropValue":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/itextpdf/svg/css/impl/StyleResolverUtil;->checkInheritance(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "inherit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    :cond_1
    const-string v1, "em"

    invoke-static {p3, v1}, Lcom/itextpdf/svg/css/impl/StyleResolverUtil;->valueIsOfMeasurement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 88
    const-string v1, "ex"

    invoke-static {p3, v1}, Lcom/itextpdf/svg/css/impl/StyleResolverUtil;->valueIsOfMeasurement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 89
    const-string v1, "%"

    invoke-static {p3, v1}, Lcom/itextpdf/svg/css/impl/StyleResolverUtil;->valueIsOfMeasurement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/itextpdf/svg/css/impl/StyleResolverUtil;->fontSizeDependentPercentage:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 98
    :cond_2
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 91
    :cond_3
    :goto_0
    invoke-static {p4}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    .line 93
    .local v1, "absoluteParentFontSize":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-static {p3, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result v3

    float-to-double v3, v3

    .line 93
    const-string v5, "0.####"

    invoke-static {v3, v4, v5}, Lcom/itextpdf/io/util/DecimalFormatUtil;->formatNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "pt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v1    # "absoluteParentFontSize":F
    goto :goto_1

    .line 100
    :cond_4
    const-string/jumbo v1, "text-decoration-line"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "text-decoration"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const-string v1, "display"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "inline-block"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 107
    invoke-static {v0, p3}, Lcom/itextpdf/styledxmlparser/css/resolve/CssPropertyMerger;->mergeTextDecoration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_6
    :goto_1
    return-void
.end method
