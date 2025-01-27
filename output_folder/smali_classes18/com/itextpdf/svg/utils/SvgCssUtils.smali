.class public final Lcom/itextpdf/svg/utils/SvgCssUtils;
.super Ljava/lang/Object;
.source "SvgCssUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDoubleToString(D)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # D

    .line 98
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertFloatToString(F)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # F

    .line 88
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertPtsToPx(D)D
    .locals 2
    .param p0, "pts"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    div-double v0, p0, v0

    return-wide v0
.end method

.method public static convertPtsToPx(F)F
    .locals 1
    .param p0, "pts"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    const/high16 v0, 0x3f400000    # 0.75f

    div-float v0, p0, v0

    return v0
.end method

.method public static isStyleSheetLink(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z
    .locals 1
    .param p0, "headChildElement"    # Lcom/itextpdf/styledxmlparser/node/IElementNode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->isStyleSheetLink(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z

    move-result v0

    return v0
.end method

.method public static splitValueList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 74
    const-string v1, "\\s*(,|\\s)\\s*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "list":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    .end local v1    # "list":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method
