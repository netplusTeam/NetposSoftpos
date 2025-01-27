.class public final Lcom/itextpdf/styledxmlparser/util/StyleUtil;
.super Ljava/lang/Object;
.source "StyleUtil.java"


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

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/util/StyleUtil;->fontSizeDependentPercentage:Ljava/util/List;

    .line 49
    const-string v1, "font-size"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v1, "line-height"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static checkInheritance(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 3
    .param p0, "styleProperty"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;",
            ">;)Z"
        }
    .end annotation

    .line 105
    .local p1, "inheritanceRules":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;

    .line 106
    .local v1, "inheritanceRule":Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;
    invoke-interface {v1, p0}, Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;->isInheritable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const/4 v0, 0x1

    return v0

    .line 109
    .end local v1    # "inheritanceRule":Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;
    :cond_0
    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static mergeParentStyleDeclaration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;
    .locals 6
    .param p1, "styleProperty"    # Ljava/lang/String;
    .param p2, "parentPropValue"    # Ljava/lang/String;
    .param p3, "parentFontSizeString"    # Ljava/lang/String;
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
            "Ljava/util/Set<",
            "Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    .local p0, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "inheritanceRules":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, "childPropValue":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-static {p1, p4}, Lcom/itextpdf/styledxmlparser/util/StyleUtil;->checkInheritance(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "inherit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    :cond_1
    const-string v1, "em"

    invoke-static {p2, v1}, Lcom/itextpdf/styledxmlparser/util/StyleUtil;->valueIsOfMeasurement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 70
    const-string v1, "ex"

    invoke-static {p2, v1}, Lcom/itextpdf/styledxmlparser/util/StyleUtil;->valueIsOfMeasurement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 71
    const-string v1, "%"

    invoke-static {p2, v1}, Lcom/itextpdf/styledxmlparser/util/StyleUtil;->valueIsOfMeasurement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/itextpdf/styledxmlparser/util/StyleUtil;->fontSizeDependentPercentage:Ljava/util/List;

    .line 72
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 80
    :cond_2
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 73
    :cond_3
    :goto_0
    invoke-static {p3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    .line 75
    .local v1, "absoluteParentFontSize":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-static {p2, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result v3

    float-to-double v3, v3

    .line 76
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

    .line 75
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v1    # "absoluteParentFontSize":F
    goto :goto_1

    .line 82
    :cond_4
    const-string/jumbo v1, "text-decoration-line"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 83
    const-string v1, "display"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "inline-block"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 90
    invoke-static {v0, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/CssPropertyMerger;->mergeTextDecoration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_5
    :goto_1
    return-object p0
.end method

.method private static valueIsOfMeasurement(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "measurement"    # Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 122
    return v0

    .line 124
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
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

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 124
    :goto_0
    return v0
.end method
