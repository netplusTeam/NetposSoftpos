.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/ShorthandResolverFactory;
.super Ljava/lang/Object;
.source "ShorthandResolverFactory.java"


# static fields
.field private static final shorthandResolvers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/ShorthandResolverFactory;->shorthandResolvers:Ljava/util/Map;

    .line 82
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundShorthandResolver;-><init>()V

    const-string v2, "background"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;-><init>()V

    const-string v2, "background-position"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderShorthandResolver;-><init>()V

    const-string v2, "border"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderBottomShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderBottomShorthandResolver;-><init>()V

    const-string v2, "border-bottom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderColorShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderColorShorthandResolver;-><init>()V

    const-string v2, "border-color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderLeftShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderLeftShorthandResolver;-><init>()V

    const-string v2, "border-left"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderRadiusShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderRadiusShorthandResolver;-><init>()V

    const-string v2, "border-radius"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderRightShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderRightShorthandResolver;-><init>()V

    const-string v2, "border-right"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderStyleShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderStyleShorthandResolver;-><init>()V

    const-string v2, "border-style"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderTopShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderTopShorthandResolver;-><init>()V

    const-string v2, "border-top"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderWidthShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderWidthShorthandResolver;-><init>()V

    const-string v2, "border-width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FontShorthandResolver;-><init>()V

    const-string v2, "font"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/ListStyleShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/ListStyleShorthandResolver;-><init>()V

    const-string v2, "list-style"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/MarginShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/MarginShorthandResolver;-><init>()V

    const-string v2, "margin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/OutlineShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/OutlineShorthandResolver;-><init>()V

    const-string v2, "outline"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/PaddingShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/PaddingShorthandResolver;-><init>()V

    const-string v2, "padding"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/TextDecorationShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/TextDecorationShorthandResolver;-><init>()V

    const-string/jumbo v2, "text-decoration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexShorthandResolver;-><init>()V

    const-string v2, "flex"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexFlowShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/FlexFlowShorthandResolver;-><init>()V

    const-string v2, "flex-flow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/GapShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/GapShorthandResolver;-><init>()V

    const-string v2, "gap"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/PlaceItemsShorthandResolver;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/PlaceItemsShorthandResolver;-><init>()V

    const-string v2, "place-items"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getShorthandResolver(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;
    .locals 1
    .param p0, "shorthandProperty"    # Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/ShorthandResolverFactory;->shorthandResolvers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;

    return-object v0
.end method
