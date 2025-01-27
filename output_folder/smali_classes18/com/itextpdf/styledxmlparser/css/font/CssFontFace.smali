.class public Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;
.super Ljava/lang/Object;
.source "CssFontFace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;,
        Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;
    }
.end annotation


# instance fields
.field private final alias:Ljava/lang/String;

.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;",
            ">;)V"
        }
    .end annotation

    .line 173
    .local p2, "sources":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->alias:Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->sources:Ljava/util/List;

    .line 176
    return-void
.end method

.method public static create(Ljava/util/List;)Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)",
            "Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;"
        }
    .end annotation

    .line 54
    .local p0, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    const/4 v0, 0x0

    .line 55
    .local v0, "fontFamily":Ljava/lang/String;
    const/4 v1, 0x0

    .line 56
    .local v1, "srcs":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 57
    .local v3, "descriptor":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v4

    const-string v5, "font-family"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/layout/font/FontFamilySplitter;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "src"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v1

    .line 63
    .end local v3    # "descriptor":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    :cond_1
    :goto_1
    goto :goto_0

    .line 64
    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-nez v1, :cond_3

    goto :goto_3

    .line 71
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v3, "sources":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;>;"
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->splitSourcesSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 75
    .local v7, "src":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->create(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;

    move-result-object v8

    .line 76
    .local v8, "source":Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;
    if-eqz v8, :cond_4

    .line 77
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v7    # "src":Ljava/lang/String;
    .end local v8    # "source":Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 81
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 82
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;

    invoke-direct {v2, v0, v3}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    .line 84
    :cond_6
    return-object v2

    .line 68
    .end local v3    # "sources":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;>;"
    :cond_7
    :goto_3
    return-object v2
.end method

.method public static isSupportedFontFormat(Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;)Z
    .locals 2
    .param p0, "format"    # Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    .line 136
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$1;->$SwitchMap$com$itextpdf$styledxmlparser$css$font$CssFontFace$FontFormat:[I

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 144
    const/4 v0, 0x0

    return v0

    .line 142
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static splitSourcesSequence(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "src"    # Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 101
    .local v1, "indexToStart":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 103
    const/16 v2, 0x27

    invoke-static {p0, v2, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result v3

    const v4, 0x7fffffff

    if-ltz v3, :cond_0

    .line 104
    invoke-static {p0, v2, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v4

    .line 105
    :goto_1
    const/16 v3, 0x22

    invoke-static {p0, v3, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result v5

    if-ltz v5, :cond_1

    .line 106
    invoke-static {p0, v3, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result v4

    goto :goto_2

    :cond_1
    nop

    .line 103
    :goto_2
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 107
    .local v2, "indexUnescapedOpeningQuoteMark":I
    const/16 v3, 0x29

    invoke-static {p0, v3, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result v3

    .line 108
    .local v3, "indexUnescapedBracket":I
    if-ge v2, v3, :cond_2

    .line 109
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-static {p0, v4, v5}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result v4

    .line 111
    .local v4, "indexToCut":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_3

    .line 116
    .end local v4    # "indexToCut":I
    :cond_2
    move v4, v3

    .line 118
    .restart local v4    # "indexToCut":I
    :cond_3
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_4

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 121
    :cond_4
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 123
    .end local v2    # "indexUnescapedOpeningQuoteMark":I
    .end local v3    # "indexUnescapedBracket":I
    .end local v4    # "indexToCut":I
    goto :goto_0

    .line 124
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 125
    .local v2, "result":[Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 126
    return-object v2
.end method


# virtual methods
.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getSources()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->sources:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
