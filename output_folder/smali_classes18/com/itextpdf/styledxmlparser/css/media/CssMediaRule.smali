.class public Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;
.super Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;
.source "CssMediaRule.java"


# instance fields
.field private mediaQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "ruleParameters"    # Ljava/lang/String;

    .line 68
    const-string v0, "media"

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaQueryParser;->parseMediaQueries(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;->mediaQueries:Ljava/util/List;

    .line 70
    return-void
.end method


# virtual methods
.method public getCssRuleSets(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;
    .locals 5
    .param p1, "element"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .param p2, "deviceDescription"    # Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssRuleSet;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssRuleSet;>;"
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;->mediaQueries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;

    .line 79
    .local v2, "mediaQuery":Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;
    invoke-virtual {v2, p2}, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->matches(Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;->body:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/css/CssStatement;

    .line 81
    .local v3, "childStatement":Lcom/itextpdf/styledxmlparser/css/CssStatement;
    invoke-virtual {v3, p1, p2}, Lcom/itextpdf/styledxmlparser/css/CssStatement;->getCssRuleSets(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    .end local v3    # "childStatement":Lcom/itextpdf/styledxmlparser/css/CssStatement;
    goto :goto_1

    .line 83
    :cond_0
    goto :goto_2

    .line 85
    .end local v2    # "mediaQuery":Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;
    :cond_1
    goto :goto_0

    .line 86
    :cond_2
    :goto_2
    return-object v0
.end method

.method public matchMediaDevice(Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Z
    .locals 3
    .param p1, "deviceDescription"    # Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    .line 96
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;->mediaQueries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;

    .line 97
    .local v1, "mediaQuery":Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->matches(Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const/4 v0, 0x1

    return v0

    .line 100
    .end local v1    # "mediaQuery":Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;
    :cond_0
    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
