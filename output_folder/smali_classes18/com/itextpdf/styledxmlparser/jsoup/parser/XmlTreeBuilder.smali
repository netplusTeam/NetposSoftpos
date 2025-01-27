.class public Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;
.source "XmlTreeBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;-><init>()V

    return-void
.end method

.method private insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 101
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 102
    return-void
.end method

.method private popStackToClose(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;)V
    .locals 5
    .param p1, "endTag"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    .line 152
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "elName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 155
    .local v1, "firstFound":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "pos":I
    :goto_0
    if-ltz v2, :cond_1

    .line 156
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 157
    .local v3, "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    move-object v1, v3

    .line 159
    goto :goto_1

    .line 155
    .end local v3    # "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 162
    .end local v2    # "pos":I
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 163
    return-void

    .line 165
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "pos":I
    :goto_2
    if-ltz v2, :cond_4

    .line 166
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 167
    .restart local v3    # "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 168
    if-ne v3, v1, :cond_3

    .line 169
    goto :goto_3

    .line 165
    .end local v3    # "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 171
    .end local v2    # "pos":I
    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method protected initialiseParse(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "errors"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)V

    .line 69
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->syntax(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 71
    return-void
.end method

.method insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 4
    .param p1, "startTag"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    .line 105
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v0

    .line 107
    .local v0, "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->baseUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v1, v0, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 108
    .local v1, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 109
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->isSelfClosing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    .line 111
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isKnownTag()Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->setSelfClosing()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    goto :goto_0

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_1
    :goto_0
    return-object v1
.end method

.method insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;)V
    .locals 3
    .param p1, "characterToken"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    .line 136
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->baseUri:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v0, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 138
    return-void
.end method

.method insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;)V
    .locals 9
    .param p1, "commentToken"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    .line 120
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->getData()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->baseUri:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .local v0, "comment":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;
    move-object v1, v0

    .line 122
    .local v1, "insert":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    iget-boolean v2, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->bogus:Z

    if-eqz v2, :cond_1

    .line 124
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "?"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->baseUri:Ljava/lang/String;

    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->xmlParser()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/itextpdf/styledxmlparser/jsoup/Jsoup;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v4

    .line 127
    .local v4, "doc":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->child(I)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v5

    .line 128
    .local v5, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    new-instance v6, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->baseUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v6, v7, v8, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v6

    .line 129
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v3

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->addAll(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 132
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "doc":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .end local v5    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_1
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 133
    return-void
.end method

.method insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;)V
    .locals 5
    .param p1, "d"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;

    .line 141
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->getPublicIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->getSystemIdentifier()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->baseUri:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .local v0, "doctypeNode":Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 143
    return-void
.end method

.method parseFragment(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)Ljava/util/List;
    .locals 1
    .param p1, "inputFragment"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "errors"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->initialiseParse(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)V

    .line 175
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->runParser()V

    .line 176
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->childNodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z
    .locals 2
    .param p1, "token"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    .line 76
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder$1;->$SwitchMap$com$itextpdf$styledxmlparser$jsoup$parser$Token$TokenType:[I

    iget-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :pswitch_0
    goto :goto_0

    .line 90
    :pswitch_1
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asDoctype()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;)V

    .line 91
    goto :goto_0

    .line 87
    :pswitch_2
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asCharacter()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;)V

    .line 88
    goto :goto_0

    .line 84
    :pswitch_3
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asComment()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;)V

    .line 85
    goto :goto_0

    .line 81
    :pswitch_4
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asEndTag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->popStackToClose(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;)V

    .line 82
    goto :goto_0

    .line 78
    :pswitch_5
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asStartTag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/XmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 79
    nop

    .line 97
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
