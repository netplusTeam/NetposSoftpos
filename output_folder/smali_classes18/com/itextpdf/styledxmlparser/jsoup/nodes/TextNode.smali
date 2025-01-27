.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
.super Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
.source "TextNode.java"


# static fields
.field private static final TEXT_KEY:Ljava/lang/String; = "text"


# instance fields
.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->baseUri:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->text:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static createFromEncoded(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    .locals 2
    .param p0, "encodedText"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 159
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-direct {v1, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private ensureAttributes()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 180
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->text:Ljava/lang/String;

    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    return-void
.end method

.method static lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .line 164
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 165
    return-object p0
.end method

.method static stripLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .line 169
    const-string v0, "^\\s+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public absUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .line 216
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 217
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;

    .line 198
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 199
    invoke-super {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 187
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    .locals 1

    .line 192
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 193
    invoke-super {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getWholeText()Ljava/lang/String;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->text:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hasAttr(Ljava/lang/String;)Z
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .line 204
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 205
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBlank()Z
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "#text"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 7
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "depth"    # I
    .param p3, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->siblingIndex()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    instance-of v0, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->siblingNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->isBlank()Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->indent(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V

    .line 140
    :cond_2
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->preserveWhitespace(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 142
    .local v5, "normaliseWhite":Z
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;ZZZ)V

    .line 143
    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "depth"    # I
    .param p3, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 145
    return-void
.end method

.method public removeAttr(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .line 210
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 211
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->removeAttr(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public splitText(I)Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    .locals 7
    .param p1, "offset"    # I

    .line 123
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Split offset must be not be negative"

    invoke-static {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Split offset must not be greater than current text length"

    invoke-static {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "head":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "tail":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->text(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    .line 129
    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->baseUri()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v4, "tailNode":Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v5

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->siblingIndex()I

    move-result v6

    add-int/2addr v6, v0

    new-array v0, v0, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    aput-object v4, v0, v1

    invoke-virtual {v5, v6, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 133
    :cond_2
    return-object v4
.end method

.method public text(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->text:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-object p0
.end method

.method public text()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
