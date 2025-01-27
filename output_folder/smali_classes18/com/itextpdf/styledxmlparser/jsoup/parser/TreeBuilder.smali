.class public abstract Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;
.super Ljava/lang/Object;
.source "TreeBuilder.java"


# instance fields
.field protected baseUri:Ljava/lang/String;

.field currentToken:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

.field protected doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

.field private end:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

.field errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

.field reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

.field protected stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation
.end field

.field private start:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

.field tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->start:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    .line 65
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->end:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    return-void
.end method


# virtual methods
.method protected currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 128
    .local v0, "size":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method initialiseParse(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "errors"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    .line 68
    const-string v0, "String input must not be null"

    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    const-string v0, "BaseURI must not be null"

    invoke-static {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-direct {v0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    .line 72
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    .line 73
    iput-object p3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    .line 74
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-direct {v0, v1, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 76
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    .line 77
    return-void
.end method

.method parse(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->noTracking()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method parse(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "errors"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)V

    .line 85
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->runParser()V

    .line 86
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    return-object v0
.end method

.method abstract process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z
.end method

.method protected processEndTag(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->currentToken:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->end:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    if-ne v0, v1, :cond_0

    .line 120
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->name(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result v0

    return v0

    .line 122
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result v0

    return v0
.end method

.method protected processStartTag(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->currentToken:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->start:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    if-ne v0, v1, :cond_0

    .line 104
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->name(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result v0

    return v0

    .line 106
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result v0

    return v0
.end method

.method public processStartTag(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 110
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->currentToken:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->start:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    if-ne v0, v1, :cond_0

    .line 111
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->nameAttr(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result v0

    return v0

    .line 113
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    .line 114
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->start:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->nameAttr(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    .line 115
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->start:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result v0

    return v0
.end method

.method protected runParser()V
    .locals 3

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->read()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    move-result-object v0

    .line 92
    .local v0, "token":Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    .line 93
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    .line 95
    iget-object v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    sget-object v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->EOF:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    if-ne v1, v2, :cond_0

    .line 96
    nop

    .line 98
    .end local v0    # "token":Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    return-void

    .line 97
    :cond_0
    goto :goto_0
.end method
