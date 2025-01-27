.class public final Lcom/itextpdf/styledxmlparser/css/parse/CssPageSelectorParser;
.super Ljava/lang/Object;
.source "CssPageSelectorParser.java"


# static fields
.field private static final PAGE_SELECTOR_PATTERN_STR:Ljava/lang/String; = "(^-?[_a-zA-Z][\\w-]*)|(:(?i)(left|right|first|blank))"

.field private static final selectorPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-string v0, "(^-?[_a-zA-Z][\\w-]*)|(:(?i)(left|right|first|blank))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/parse/CssPageSelectorParser;->selectorPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseSelectorItems(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "selectorItemsStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "selectorItems":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;>;"
    sget-object v1, Lcom/itextpdf/styledxmlparser/css/parse/CssPageSelectorParser;->selectorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 75
    .local v1, "itemMatcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "selectorItem":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_0

    .line 78
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPagePseudoClassSelectorItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPagePseudoClassSelectorItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    :cond_0
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPageTypeSelectorItem;

    invoke-direct {v2, v3}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPageTypeSelectorItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v3    # "selectorItem":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 83
    :cond_1
    return-object v0
.end method
