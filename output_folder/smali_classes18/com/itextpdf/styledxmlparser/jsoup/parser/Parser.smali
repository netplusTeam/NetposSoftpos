.class public Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# static fields
.field private static final DEFAULT_MAX_ERRORS:I


# instance fields
.field private errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

.field private maxErrors:I

.field private treeBuilder:Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;)V
    .locals 1
    .param p1, "treeBuilder"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->maxErrors:I

    .line 68
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->treeBuilder:Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;

    .line 69
    return-void
.end method

.method public static htmlParser()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;
    .locals 2

    .line 226
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;-><init>()V

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 2
    .param p0, "html"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 132
    .local v0, "treeBuilder":Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->noTracking()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v1

    return-object v1
.end method

.method public static parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 7
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 183
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    .line 184
    .local v0, "doc":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    .line 185
    .local v1, "body":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-static {p0, v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 186
    .local v2, "nodeList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 187
    .local v3, "nodes":[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-lez v4, :cond_0

    .line 188
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->remove()V

    .line 187
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 190
    .end local v4    # "i":I
    :cond_0
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 191
    .local v6, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    invoke-virtual {v1, v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 190
    .end local v6    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 193
    :cond_1
    return-object v0
.end method

.method public static parseBodyFragmentRelaxed(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 215
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "fragmentHtml"    # Ljava/lang/String;
    .param p1, "context"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 159
    .local v0, "treeBuilder":Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->noTracking()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static parseXml(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 2
    .param p0, "xml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;-><init>()V

    .line 144
    .local v0, "treeBuilder":Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->noTracking()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v1

    return-object v1
.end method

.method public static parseXmlFragment(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "fragmentXml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;-><init>()V

    .line 171
    .local v0, "treeBuilder":Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->noTracking()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->parseFragment(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static unescapeEntities(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "inAttribute"    # Z

    .line 203
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-direct {v1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->noTracking()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)V

    .line 204
    .local v0, "tokeniser":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;
    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->unescapeEntities(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static xmlParser()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;
    .locals 2

    .line 235
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;-><init>()V

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;)V

    return-object v0
.end method


# virtual methods
.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    return-object v0
.end method

.method public getTreeBuilder()Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->treeBuilder:Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;

    return-object v0
.end method

.method public isTrackErrors()Z
    .locals 1

    .line 100
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->maxErrors:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseInput(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 2
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->isTrackErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->maxErrors:I

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->tracking(I)Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->noTracking()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    .line 73
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->treeBuilder:Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;

    invoke-virtual {v1, p1, p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public setTrackErrors(I)Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;
    .locals 0
    .param p1, "maxErrors"    # I

    .line 109
    iput p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->maxErrors:I

    .line 110
    return-object p0
.end method

.method public setTreeBuilder(Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;
    .locals 0
    .param p1, "treeBuilder"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;

    .line 91
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->treeBuilder:Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;

    .line 92
    return-object p0
.end method
