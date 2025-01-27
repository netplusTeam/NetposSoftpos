.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
.super Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
.source "Element.java"


# static fields
.field private static final classSplit:Ljava/util/regex/Pattern;


# instance fields
.field private tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->classSplit:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    .param p2, "baseUri"    # Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V
    .locals 0
    .param p1, "tag"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "attributes"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 93
    invoke-direct {p0, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 95
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 96
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    .line 97
    return-void
.end method

.method static synthetic access$000(Ljava/lang/StringBuilder;Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/StringBuilder;
    .param p1, "x1"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    .line 78
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendNormalisedText(Ljava/lang/StringBuilder;Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;)V

    return-void
.end method

.method static synthetic access$100(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    .locals 1
    .param p0, "x0"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 78
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    return-object v0
.end method

.method private static accumulateParents(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;)V
    .locals 3
    .param p0, "el"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p1, "parents"    # Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    .line 225
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 226
    .local v0, "parent":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#root"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->accumulateParents(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;)V

    .line 230
    :cond_0
    return-void
.end method

.method private static appendNormalisedText(Ljava/lang/StringBuilder;Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;)V
    .locals 2
    .param p0, "accum"    # Ljava/lang/StringBuilder;
    .param p1, "textNode"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    .line 1004
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->preserveWhitespace(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1007
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1009
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->appendNormalisedWhitespace(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 1010
    :goto_0
    return-void
.end method

.method private static appendWhitespaceIfBr(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "element"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p1, "accum"    # Ljava/lang/StringBuilder;

    .line 1013
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "br"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1014
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    :cond_0
    return-void
.end method

.method private static indexInList(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/util/List;)I
    .locals 2
    .param p0, "search"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">(",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            "Ljava/util/List<",
            "TE;>;)I"
        }
    .end annotation

    .line 659
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 660
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 662
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 663
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 664
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;, "TE;"
    if-ne v1, p0, :cond_0

    .line 665
    return v0

    .line 662
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;, "TE;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private ownText(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "accum"    # Ljava/lang/StringBuilder;

    .line 993
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 994
    .local v1, "child":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    instance-of v2, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    if-eqz v2, :cond_0

    .line 995
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    .line 996
    .local v2, "textNode":Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    invoke-static {p1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendNormalisedText(Ljava/lang/StringBuilder;Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;)V

    .end local v2    # "textNode":Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    goto :goto_1

    .line 997
    :cond_0
    instance-of v2, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v2, :cond_1

    .line 998
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-static {v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendWhitespaceIfBr(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 997
    :cond_1
    :goto_1
    nop

    .line 1000
    .end local v1    # "child":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    :goto_2
    goto :goto_0

    .line 1001
    :cond_2
    return-void
.end method

.method static preserveWhitespace(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Z
    .locals 3
    .param p0, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 1019
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    instance-of v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v1, :cond_2

    .line 1020
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1021
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    iget-object v2, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->preserveWhitespace()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1022
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    iget-object v2, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->preserveWhitespace()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1021
    :cond_1
    return v0

    .line 1024
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_2
    return v0
.end method


# virtual methods
.method public addClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 1150
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1152
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->classNames()Ljava/util/Set;

    move-result-object v0

    .line 1153
    .local v0, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1154
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->classNames(Ljava/util/Set;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1156
    return-object p0
.end method

.method public after(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 521
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->after(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v0
.end method

.method public after(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .line 510
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->after(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v0
.end method

.method public append(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2
    .param p1, "html"    # Ljava/lang/String;

    .line 457
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 459
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 460
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->addChildren([Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 461
    return-object p0
.end method

.method public appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1
    .param p1, "child"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 338
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->reparentChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 342
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->ensureChildNodes()V

    .line 343
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->setSiblingIndex(I)V

    .line 345
    return-object p0
.end method

.method public appendElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3
    .param p1, "tagName"    # Ljava/lang/String;

    .line 406
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 407
    .local v0, "child":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 408
    return-object v0
.end method

.method public appendText(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 431
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 432
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .local v0, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 434
    return-object p0
.end method

.method public attr(Ljava/lang/String;Z)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Z

    .line 188
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Ljava/lang/String;Z)V

    .line 189
    return-object p0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 0
    .param p1, "attributeKey"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;

    .line 173
    invoke-super {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 174
    return-object p0
.end method

.method public before(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 498
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->before(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public before(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .line 487
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->before(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public child(I)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1
    .param p1, "index"    # I

    .line 243
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->children()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v0
.end method

.method public children()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 4

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 259
    .local v2, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v3, :cond_0

    .line 260
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v2    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    :cond_0
    goto :goto_0

    .line 262
    :cond_1
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public className()Ljava/lang/String;
    .locals 1

    .line 1089
    const-string v0, "class"

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public classNames(Ljava/util/Set;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;"
        }
    .end annotation

    .line 1112
    .local p1, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1113
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    const-string v1, " "

    invoke-static {p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "class"

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    return-object p0
.end method

.method public classNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1099
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->classSplit:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 1100
    .local v0, "names":[Ljava/lang/String;
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1101
    .local v1, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1103
    return-object v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1293
    invoke-super {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public cssSelector()Ljava/lang/String;
    .locals 7

    .line 554
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "tagName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 560
    .local v1, "selector":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->classNames()Ljava/util/Set;

    move-result-object v2

    const-string v3, "."

    invoke-static {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "classes":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 562
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v3

    instance-of v3, v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 567
    :cond_2
    const/4 v3, 0x0

    const-string v4, " > "

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->select(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 569
    new-array v4, v5, [Ljava/lang/Object;

    .line 570
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->elementSiblingIndex()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 569
    const-string v3, ":nth-child({0})"

    invoke-static {v3, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->cssSelector()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 565
    :cond_4
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public data()Ljava/lang/String;
    .locals 5

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1070
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 1071
    .local v2, "childNode":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    if-eqz v3, :cond_0

    .line 1072
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    .line 1073
    .local v3, "data":Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v3    # "data":Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;
    goto :goto_1

    .line 1074
    :cond_0
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v3, :cond_1

    .line 1075
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1076
    .local v3, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->data()Ljava/lang/String;

    move-result-object v4

    .line 1077
    .local v4, "elementData":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1074
    .end local v3    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .end local v4    # "elementData":Ljava/lang/String;
    :cond_1
    :goto_1
    nop

    .line 1079
    .end local v2    # "childNode":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    :goto_2
    goto :goto_0

    .line 1080
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public dataNodes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v0, "dataNodes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;>;"
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 302
    .local v2, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    if-eqz v3, :cond_0

    .line 303
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v2    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    :cond_0
    goto :goto_0

    .line 305
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public dataset()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->dataset()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public elementSiblingIndex()I
    .locals 1

    .line 645
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 646
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->children()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->indexInList(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public empty()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 530
    return-object p0
.end method

.method public firstElementSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3

    .line 635
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->children()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    .line 636
    .local v0, "siblings":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getAllElements()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 941
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AllElements;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AllElements;-><init>()V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 694
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 696
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Id;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    .line 697
    .local v0, "elements":Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 698
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v1

    .line 700
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getElementsByAttribute(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 727
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 730
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Attribute;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Attribute;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByAttributeStarting(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "keyPrefix"    # Ljava/lang/String;

    .line 740
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 743
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeStarting;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeStarting;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByAttributeValue(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 754
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValue;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByAttributeValueContaining(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "match"    # Ljava/lang/String;

    .line 798
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueContaining;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueContaining;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByAttributeValueEnding(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "valueSuffix"    # Ljava/lang/String;

    .line 787
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueEnding;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueEnding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;

    .line 823
    :try_start_0
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    .local v0, "pattern":Ljava/util/regex/Pattern;
    nop

    .line 827
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/util/regex/Pattern;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v1

    return-object v1

    .line 824
    .end local v0    # "pattern":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pattern syntax error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/util/regex/Pattern;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;

    .line 808
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueMatching;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueMatching;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByAttributeValueNot(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 765
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueNot;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueNot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByAttributeValueStarting(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "valuePrefix"    # Ljava/lang/String;

    .line 776
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueStarting;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueStarting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 715
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 717
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Class;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Class;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByIndexEquals(I)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "index"    # I

    .line 854
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEquals;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEquals;-><init>(I)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByIndexGreaterThan(I)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "index"    # I

    .line 845
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexGreaterThan;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexGreaterThan;-><init>(I)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByIndexLessThan(I)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "index"    # I

    .line 836
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexLessThan;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexLessThan;-><init>(I)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByTag(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .line 678
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 681
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Tag;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementsContainingOwnText(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "searchText"    # Ljava/lang/String;

    .line 876
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsOwnText;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsOwnText;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementsContainingText(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "searchText"    # Ljava/lang/String;

    .line 865
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsText;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$ContainsText;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementsMatchingOwnText(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 4
    .param p1, "regex"    # Ljava/lang/String;

    .line 928
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    .local v0, "pattern":Ljava/util/regex/Pattern;
    nop

    .line 932
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->getElementsMatchingOwnText(Ljava/util/regex/Pattern;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v1

    return-object v1

    .line 929
    .end local v0    # "pattern":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pattern syntax error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getElementsMatchingOwnText(Ljava/util/regex/Pattern;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 914
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$MatchesOwn;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$MatchesOwn;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementsMatchingText(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 4
    .param p1, "regex"    # Ljava/lang/String;

    .line 900
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    .local v0, "pattern":Ljava/util/regex/Pattern;
    nop

    .line 904
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->getElementsMatchingText(Ljava/util/regex/Pattern;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v1

    return-object v1

    .line 901
    .end local v0    # "pattern":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v0

    .line 902
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pattern syntax error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getElementsMatchingText(Ljava/util/regex/Pattern;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 886
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Matches;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Matches;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public hasClass(Ljava/lang/String;)Z
    .locals 7
    .param p1, "className"    # Ljava/lang/String;

    .line 1131
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    const-string v1, "class"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, "classAttr":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    goto :goto_1

    .line 1135
    :cond_0
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->classSplit:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 1136
    .local v1, "classes":[Ljava/lang/String;
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 1137
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1138
    const/4 v2, 0x1

    return v2

    .line 1136
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1141
    :cond_2
    return v2

    .line 1133
    .end local v1    # "classes":[Ljava/lang/String;
    :cond_3
    :goto_1
    return v2
.end method

.method public hasText()Z
    .locals 5

    .line 1047
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 1048
    .local v1, "child":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    instance-of v2, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1049
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    .line 1050
    .local v2, "textNode":Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->isBlank()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1051
    return v3

    .line 1050
    .end local v2    # "textNode":Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    :cond_0
    goto :goto_1

    .line 1052
    :cond_1
    instance-of v2, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v2, :cond_2

    .line 1053
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1054
    .local v2, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasText()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1055
    return v3

    .line 1052
    .end local v2    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_2
    :goto_1
    nop

    .line 1057
    .end local v1    # "child":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    :cond_3
    goto :goto_0

    .line 1058
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public html(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 0
    .param p1, "html"    # Ljava/lang/String;

    .line 1282
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->empty()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1283
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->append(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1284
    return-object p0
.end method

.method public html(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 2
    .param p1, "appendable"    # Ljava/lang/Appendable;

    .line 1269
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 1270
    .local v1, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->outerHtml(Ljava/lang/Appendable;)V

    .end local v1    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    goto :goto_0

    .line 1272
    :cond_0
    return-object p1
.end method

.method public html()Ljava/lang/String;
    .locals 2

    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1260
    .local v0, "accum":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->html(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 1261
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->getOutputSettings()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertChild(ILcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2
    .param p1, "index"    # I
    .param p2, "child"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 368
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 369
    invoke-virtual {p0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    return-object v0

    .line 371
    :cond_0
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 372
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 373
    return-object p0
.end method

.method public insertChildren(ILjava/util/Collection;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;)",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;"
        }
    .end annotation

    .line 387
    .local p2, "children":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;>;"
    const-string v0, "Children collection to be inserted must not be null."

    invoke-static {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodeSize()I

    move-result v0

    .line 389
    .local v0, "currentSize":I
    if-gez p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    add-int/2addr p1, v1

    .line 390
    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Insert position out of bounds."

    invoke-static {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 392
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 393
    .local v1, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 394
    .local v2, "nodeArray":[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    invoke-virtual {p0, p1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 395
    return-object p0
.end method

.method public isBlock()Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isBlock()Z

    move-result v0

    return v0
.end method

.method public lastElementSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3

    .line 654
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->children()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    .line 655
    .local v0, "siblings":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public nextElementSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 5

    .line 602
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->children()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    .line 604
    .local v0, "siblings":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->indexInList(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/util/List;)I

    move-result v2

    .line 605
    .local v2, "index":I
    if-ltz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(Z)V

    .line 607
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    if-le v3, v4, :cond_2

    .line 608
    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v1

    .line 610
    :cond_2
    return-object v1
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 2
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "depth"    # I
    .param p3, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1217
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1218
    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 1219
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1220
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->indent(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V

    goto :goto_0

    .line 1222
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->indent(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V

    .line 1225
    :cond_3
    :goto_0
    nop

    .line 1226
    const-string v0, "<"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    .line 1227
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1228
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->html(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V

    .line 1231
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isSelfClosing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1232
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->syntax()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1233
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 1235
    :cond_4
    const-string v0, " />"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1238
    :cond_5
    const-string v0, ">"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1239
    :goto_1
    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 2
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "depth"    # I
    .param p3, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1242
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isSelfClosing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1243
    :cond_0
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    .line 1244
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    if-nez v0, :cond_2

    .line 1246
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->indent(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V

    .line 1247
    :cond_2
    const-string v0, "</"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, ">"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1249
    :cond_3
    return-void
.end method

.method public ownText()Ljava/lang/String;
    .locals 2

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 988
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->ownText(Ljava/lang/StringBuilder;)V

    .line 989
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-object v0
.end method

.method public parents()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 219
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>()V

    .line 220
    .local v0, "parents":Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->accumulateParents(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;)V

    .line 221
    return-object v0
.end method

.method public prepend(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3
    .param p1, "html"    # Ljava/lang/String;

    .line 471
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 473
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 474
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 475
    return-object p0
.end method

.method public prependChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1
    .param p1, "child"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->insertChild(ILcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public prependElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3
    .param p1, "tagName"    # Ljava/lang/String;

    .line 419
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 420
    .local v0, "child":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->prependChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 421
    return-object v0
.end method

.method public prependText(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 444
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 445
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .local v0, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->prependChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 447
    return-object p0
.end method

.method public previousElementSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 4

    .line 619
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->children()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    .line 621
    .local v0, "siblings":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->indexInList(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/util/List;)I

    move-result v2

    .line 622
    .local v2, "index":I
    if-ltz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(Z)V

    .line 623
    if-lez v2, :cond_2

    .line 624
    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v1

    .line 626
    :cond_2
    return-object v1
.end method

.method public removeClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 1165
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1167
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->classNames()Ljava/util/Set;

    move-result-object v0

    .line 1168
    .local v0, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1169
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->classNames(Ljava/util/Set;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1171
    return-object p0
.end method

.method public select(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "cssQuery"    # Ljava/lang/String;

    .line 328
    invoke-static {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->select(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public siblingElements()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 4

    .line 581
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>(I)V

    return-object v0

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->children()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    .line 585
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>(I)V

    .line 586
    .local v1, "siblings":Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 587
    .local v3, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-eq v3, p0, :cond_1

    .line 588
    invoke-virtual {v1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    .line 587
    .end local v3    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_1
    goto :goto_0

    .line 589
    :cond_2
    return-object v1
.end method

.method public tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    return-object v0
.end method

.method public tagName(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .line 133
    const-string v0, "Tag name must not be empty."

    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    .line 135
    return-object p0
.end method

.method public tagName()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 1033
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1035
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->empty()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1036
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->baseUri:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    .local v0, "textNode":Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1039
    return-object p0
.end method

.method public text()Ljava/lang/String;
    .locals 3

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 955
    .local v0, "accum":Ljava/lang/StringBuilder;
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$1;

    invoke-direct {v2, p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$1;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;)V

    .line 971
    invoke-virtual {v1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->traverse(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 972
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public textNodes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v0, "textNodes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;>;"
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 284
    .local v2, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    if-eqz v3, :cond_0

    .line 285
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v2    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    :cond_0
    goto :goto_0

    .line 287
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1288
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toggleClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 1180
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1182
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->classNames()Ljava/util/Set;

    move-result-object v0

    .line 1183
    .local v0, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1184
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1186
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1187
    :goto_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->classNames(Ljava/util/Set;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1189
    return-object p0
.end method

.method public val(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 1209
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "textarea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->text(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    .line 1212
    :cond_0
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 1213
    :goto_0
    return-object p0
.end method

.method public val()Ljava/lang/String;
    .locals 2

    .line 1197
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "textarea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1200
    :cond_0
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wrap(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .line 541
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->wrap(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method
