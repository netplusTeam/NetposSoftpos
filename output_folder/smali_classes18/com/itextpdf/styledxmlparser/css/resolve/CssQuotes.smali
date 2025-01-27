.class public Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;
.super Ljava/lang/Object;
.source "CssQuotes.java"


# static fields
.field private static final EMPTY_QUOTE:Ljava/lang/String; = ""


# instance fields
.field private closeQuotes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private openQuotes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p1, "openQuotes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "closeQuotes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->openQuotes:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->closeQuotes:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method public static createDefaultQuotes()Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;
    .locals 3

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v0, "openQuotes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v1, "closeQuotes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, "\u00ab"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    const-string/jumbo v2, "\u00bb"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;

    invoke-direct {v2, v0, v1}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v2
.end method

.method public static createQuotes(Ljava/lang/String;Z)Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;
    .locals 9
    .param p0, "quotesString"    # Ljava/lang/String;
    .param p1, "fallbackToDefault"    # Z

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "error":Z
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .local v1, "quotes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    if-eqz p0, :cond_4

    .line 97
    const-string v2, "none"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v2

    .line 102
    :cond_0
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;

    invoke-direct {v2, p0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "tokenizer":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v6

    move-object v7, v6

    .local v7, "token":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    if-eqz v6, :cond_2

    .line 105
    invoke-virtual {v7}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->isString()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    rem-int/lit8 v6, v5, 0x2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x1

    .line 112
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v0, :cond_3

    .line 113
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {v5, v4, v3}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v5

    .line 115
    :cond_3
    const-class v5, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;

    invoke-static {v5}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    const-string v4, "Quote property \"{0}\" is invalid. It should contain even number of <string> values."

    invoke-static {v4, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 118
    .end local v2    # "tokenizer":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;
    .end local v7    # "token":Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    :cond_4
    if-eqz p1, :cond_5

    invoke-static {}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->createDefaultQuotes()Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;

    move-result-object v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method private decreaseDepth(Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)V
    .locals 1
    .param p1, "context"    # Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;

    .line 174
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;->getQuotesDepth()I

    move-result v0

    if-lez v0, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;->getQuotesDepth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;->setQuotesDepth(I)V

    .line 177
    :cond_0
    return-void
.end method

.method private getQuote(ILjava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 187
    .local p2, "quotes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 188
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 190
    :cond_0
    if-gez p1, :cond_1

    .line 191
    const-string v0, ""

    return-object v0

    .line 193
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private increaseDepth(Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)V
    .locals 1
    .param p1, "context"    # Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;

    .line 165
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;->getQuotesDepth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;->setQuotesDepth(I)V

    .line 166
    return-void
.end method


# virtual methods
.method public resolveQuote(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "context"    # Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;

    .line 142
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;->getQuotesDepth()I

    move-result v0

    .line 143
    .local v0, "depth":I
    const-string v1, "open-quote"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-direct {p0, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->increaseDepth(Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)V

    .line 145
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->openQuotes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->getQuote(ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 146
    :cond_0
    const-string v1, "close-quote"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-direct {p0, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->decreaseDepth(Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)V

    .line 148
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->closeQuotes:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->getQuote(ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 149
    :cond_1
    const-string v1, "no-open-quote"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    .line 150
    invoke-direct {p0, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->increaseDepth(Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)V

    .line 151
    return-object v2

    .line 152
    :cond_2
    const-string v1, "no-close-quote"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    invoke-direct {p0, p2}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->decreaseDepth(Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)V

    .line 154
    return-object v2

    .line 156
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method
