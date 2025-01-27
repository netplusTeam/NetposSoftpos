.class public Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;
.source "HtmlTreeBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TagSearchButton:[Ljava/lang/String;

.field private static final TagSearchEndTags:[Ljava/lang/String;

.field private static final TagSearchList:[Ljava/lang/String;

.field private static final TagSearchSelectScope:[Ljava/lang/String;

.field private static final TagSearchSpecial:[Ljava/lang/String;

.field private static final TagSearchTableScope:[Ljava/lang/String;

.field public static final TagsSearchInScope:[Ljava/lang/String;


# instance fields
.field private baseUriSetFromDoc:Z

.field private contextElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

.field private emptyEnd:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

.field private formElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

.field private formattingElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation
.end field

.field private fosterInserts:Z

.field private fragmentParsing:Z

.field private framesetOk:Z

.field private headElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

.field private originalState:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field private pendingTableCharacters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private specificScopeTarget:[Ljava/lang/String;

.field private state:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;


# direct methods
.method static constructor <clinit>()V
    .locals 80

    .line 62
    nop

    .line 64
    const-string v0, "applet"

    const-string v1, "caption"

    const-string v2, "html"

    const-string/jumbo v3, "table"

    const-string/jumbo v4, "td"

    const-string/jumbo v5, "th"

    const-string v6, "marquee"

    const-string v7, "object"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagsSearchInScope:[Ljava/lang/String;

    .line 65
    const-string v0, "ol"

    const-string/jumbo v1, "ul"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchList:[Ljava/lang/String;

    .line 66
    const-string v0, "button"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchButton:[Ljava/lang/String;

    .line 67
    const-string v0, "html"

    const-string/jumbo v1, "table"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchTableScope:[Ljava/lang/String;

    .line 68
    const-string v0, "optgroup"

    const-string v1, "option"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchSelectScope:[Ljava/lang/String;

    .line 69
    const-string v1, "dd"

    const-string v2, "dt"

    const-string v3, "li"

    const-string v4, "option"

    const-string v5, "optgroup"

    const-string v6, "p"

    const-string/jumbo v7, "rp"

    const-string/jumbo v8, "rt"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchEndTags:[Ljava/lang/String;

    .line 70
    const-string v1, "address"

    const-string v2, "applet"

    const-string v3, "area"

    const-string v4, "article"

    const-string v5, "aside"

    const-string v6, "base"

    const-string v7, "basefont"

    const-string v8, "bgsound"

    const-string v9, "blockquote"

    const-string v10, "body"

    const-string v11, "br"

    const-string v12, "button"

    const-string v13, "caption"

    const-string v14, "center"

    const-string v15, "col"

    const-string v16, "colgroup"

    const-string v17, "command"

    const-string v18, "dd"

    const-string v19, "details"

    const-string v20, "dir"

    const-string v21, "div"

    const-string v22, "dl"

    const-string v23, "dt"

    const-string v24, "embed"

    const-string v25, "fieldset"

    const-string v26, "figcaption"

    const-string v27, "figure"

    const-string v28, "footer"

    const-string v29, "form"

    const-string v30, "frame"

    const-string v31, "frameset"

    const-string v32, "h1"

    const-string v33, "h2"

    const-string v34, "h3"

    const-string v35, "h4"

    const-string v36, "h5"

    const-string v37, "h6"

    const-string v38, "head"

    const-string v39, "header"

    const-string v40, "hgroup"

    const-string v41, "hr"

    const-string v42, "html"

    const-string v43, "iframe"

    const-string v44, "img"

    const-string v45, "input"

    const-string v46, "isindex"

    const-string v47, "li"

    const-string v48, "link"

    const-string v49, "listing"

    const-string v50, "marquee"

    const-string v51, "menu"

    const-string v52, "meta"

    const-string v53, "nav"

    const-string v54, "noembed"

    const-string v55, "noframes"

    const-string v56, "noscript"

    const-string v57, "object"

    const-string v58, "ol"

    const-string v59, "p"

    const-string v60, "param"

    const-string v61, "plaintext"

    const-string v62, "pre"

    const-string/jumbo v63, "script"

    const-string/jumbo v64, "section"

    const-string/jumbo v65, "select"

    const-string/jumbo v66, "style"

    const-string/jumbo v67, "summary"

    const-string/jumbo v68, "table"

    const-string/jumbo v69, "tbody"

    const-string/jumbo v70, "td"

    const-string/jumbo v71, "textarea"

    const-string/jumbo v72, "tfoot"

    const-string/jumbo v73, "th"

    const-string/jumbo v74, "thead"

    const-string/jumbo v75, "title"

    const-string/jumbo v76, "tr"

    const-string/jumbo v77, "ul"

    const-string/jumbo v78, "wbr"

    const-string/jumbo v79, "xmp"

    filled-new-array/range {v1 .. v79}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchSpecial:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUriSetFromDoc:Z

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pendingTableCharacters:Ljava/util/List;

    .line 88
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->emptyEnd:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 91
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->fosterInserts:Z

    .line 92
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->fragmentParsing:Z

    .line 479
    const/4 v0, 0x0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->specificScopeTarget:[Ljava/lang/String;

    .line 94
    return-void
.end method

.method private varargs clearStackToContext([Ljava/lang/String;)V
    .locals 4
    .param p1, "nodeNames"    # [Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_1

    .line 394
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 395
    .local v1, "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    goto :goto_1

    .line 398
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 393
    .end local v1    # "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 400
    .end local v0    # "pos":I
    :cond_1
    :goto_1
    return-void
.end method

.method private inSpecificScope(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "baseTypes"    # [Ljava/lang/String;
    .param p3, "extraTypes"    # [Ljava/lang/String;

    .line 482
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->specificScopeTarget:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 483
    invoke-direct {p0, v0, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "targetNames"    # [Ljava/lang/String;
    .param p2, "baseTypes"    # [Ljava/lang/String;
    .param p3, "extraTypes"    # [Ljava/lang/String;

    .line 487
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "pos":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_3

    .line 488
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 489
    .local v3, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    .line 490
    .local v4, "elName":Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 491
    return v1

    .line 492
    :cond_0
    invoke-static {v4, p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 493
    return v2

    .line 494
    :cond_1
    if-eqz p3, :cond_2

    invoke-static {v4, p3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 495
    return v2

    .line 487
    .end local v3    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .end local v4    # "elName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 497
    .end local v0    # "pos":I
    :cond_3
    const-string v0, "Should not be reachable"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    .line 498
    return v2
.end method

.method private insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 2
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 289
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isFosterInserts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertInFosterParent(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 297
    :goto_0
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isFormListed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    if-eqz v0, :cond_2

    .line 299
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;->addElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    .line 301
    :cond_2
    return-void
.end method

.method private isElementInQueue(Ljava/util/ArrayList;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 3
    .param p2, "element"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ")Z"
        }
    .end annotation

    .line 321
    .local p1, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_1

    .line 322
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 323
    .local v2, "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-ne v2, p2, :cond_0

    .line 324
    return v1

    .line 321
    .end local v2    # "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 327
    .end local v0    # "pos":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isSameFormattingElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 2
    .param p1, "a"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "b"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 635
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 635
    :goto_0
    return v0
.end method

.method private replaceInQueue(Ljava/util/ArrayList;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 2
    .param p2, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p3, "in"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ")V"
        }
    .end annotation

    .line 424
    .local p1, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 425
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(Z)V

    .line 426
    invoke-virtual {p1, v0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 427
    return-void
.end method


# virtual methods
.method aboveOnStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 4
    .param p1, "el"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 403
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->onStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_1

    .line 405
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 406
    .local v1, "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-ne v1, p1, :cond_0

    .line 407
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v2

    .line 404
    .end local v1    # "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 410
    .end local v0    # "pos":I
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 403
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method clearFormattingElementsToLastMarker()V
    .locals 1

    .line 680
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 681
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeLastFormattingElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    .line 682
    .local v0, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-nez v0, :cond_0

    .line 683
    goto :goto_1

    .line 684
    .end local v0    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    goto :goto_0

    .line 685
    :cond_1
    :goto_1
    return-void
.end method

.method clearStackToTableBodyContext()V
    .locals 3

    .line 385
    const-string/jumbo v0, "tbody"

    const-string/jumbo v1, "tfoot"

    const-string/jumbo v2, "thead"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->clearStackToContext([Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method clearStackToTableContext()V
    .locals 1

    .line 381
    const-string/jumbo v0, "table"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->clearStackToContext([Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method clearStackToTableRowContext()V
    .locals 1

    .line 389
    const-string/jumbo v0, "tr"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->clearStackToContext([Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V
    .locals 6
    .param p1, "state"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 214
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentToken:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->tokenType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string v4, "Unexpected token [{0}] when in state [{1}]"

    invoke-direct {v1, v2, v4, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_0
    return-void
.end method

.method framesetOk(Z)V
    .locals 0
    .param p1, "framesetOk"    # Z

    .line 182
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 183
    return-void
.end method

.method framesetOk()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    return v0
.end method

.method generateImpliedEndTags()V
    .locals 1

    .line 592
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method generateImpliedEndTags(Ljava/lang/String;)V
    .locals 2
    .param p1, "excludeTag"    # Ljava/lang/String;

    .line 586
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchEndTags:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pop()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    .line 589
    :cond_0
    return-void
.end method

.method getActiveFormattingElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 702
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_2

    .line 703
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 704
    .local v1, "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-nez v1, :cond_0

    .line 705
    goto :goto_1

    .line 706
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 707
    return-object v1

    .line 702
    .end local v1    # "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 709
    .end local v0    # "pos":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getBaseUri()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    return-object v0
.end method

.method getDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    return-object v0
.end method

.method getFormElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    return-object v0
.end method

.method getFromStack(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3
    .param p1, "elName"    # Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_1

    .line 332
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 333
    .local v1, "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    return-object v1

    .line 331
    .end local v1    # "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 337
    .end local v0    # "pos":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getHeadElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->headElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v0
.end method

.method getPendingTableCharacters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pendingTableCharacters:Ljava/util/List;

    return-object v0
.end method

.method getStack()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    return-object v0
.end method

.method inButtonScope(Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .line 520
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchButton:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method inListItemScope(Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .line 516
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchList:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method inScope(Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method inScope(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "extras"    # [Ljava/lang/String;

    .line 510
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagsSearchInScope:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inSpecificScope(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method inScope([Ljava/lang/String;)Z
    .locals 2
    .param p1, "targetNames"    # [Ljava/lang/String;

    .line 502
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagsSearchInScope:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method inSelectScope(Ljava/lang/String;)Z
    .locals 6
    .param p1, "targetName"    # Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "pos":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 529
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 530
    .local v3, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    .line 531
    .local v4, "elName":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 532
    return v1

    .line 533
    :cond_0
    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchSelectScope:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 534
    return v2

    .line 528
    .end local v3    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .end local v4    # "elName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 536
    .end local v0    # "pos":I
    :cond_2
    const-string v0, "Should not be reachable"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    .line 537
    return v2
.end method

.method inTableScope(Ljava/lang/String;)Z
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;

    .line 524
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchTableScope:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inSpecificScope(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 4
    .param p1, "startTag"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    .line 221
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->isSelfClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    .line 223
    .local v0, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 225
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->emptyEnd:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)V

    .line 226
    return-object v0

    .line 229
    .end local v0    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 230
    .restart local v0    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 231
    return-object v0
.end method

.method insert(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 1
    .param p1, "el"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 241
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 242
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;)V
    .locals 4
    .param p1, "characterToken"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    .line 279
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "tagName":Ljava/lang/String;
    const-string/jumbo v1, "script"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    goto :goto_1

    .line 281
    .end local v1    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    :cond_1
    :goto_0
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .restart local v1    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 285
    return-void
.end method

.method insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;)V
    .locals 3
    .param p1, "commentToken"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    .line 272
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->getData()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .local v0, "comment":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 274
    return-void
.end method

.method insertEmpty(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 4
    .param p1, "startTag"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    .line 246
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v0

    .line 247
    .local v0, "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v1, v0, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 248
    .local v1, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 249
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->isSelfClosing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isKnownTag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isSelfClosing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->setSelfClosing()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    .line 255
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    .line 258
    :cond_1
    :goto_0
    return-object v1
.end method

.method insertForm(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;Z)Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;
    .locals 4
    .param p1, "startTag"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;
    .param p2, "onStack"    # Z

    .line 262
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v0

    .line 263
    .local v0, "tag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v1, v0, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 264
    .local v1, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;
    invoke-virtual {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;)V

    .line 265
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 266
    if-eqz p2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_0
    return-object v1
.end method

.method insertInFosterParent(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 4
    .param p1, "in"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 722
    const-string/jumbo v0, "table"

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    .line 723
    .local v0, "lastTable":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    const/4 v1, 0x0

    .line 724
    .local v1, "isLastTableParent":Z
    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 726
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 727
    .local v2, "fosterParent":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    const/4 v1, 0x1

    goto :goto_0

    .line 729
    .end local v2    # "fosterParent":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v2

    .restart local v2    # "fosterParent":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 731
    .end local v2    # "fosterParent":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 734
    .restart local v2    # "fosterParent":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :goto_0
    if-eqz v1, :cond_2

    .line 735
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 736
    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->before(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    goto :goto_1

    .line 739
    :cond_2
    invoke-virtual {v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 740
    :goto_1
    return-void
.end method

.method insertMarkerToFormattingElements()V
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    return-void
.end method

.method insertOnStackAfter(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 3
    .param p1, "after"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "in"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 414
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 415
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(Z)V

    .line 416
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 417
    return-void
.end method

.method insertStartTag(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3
    .param p1, "startTagName"    # Ljava/lang/String;

    .line 235
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 236
    .local v0, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 237
    return-object v0
.end method

.method isFosterInserts()Z
    .locals 1

    .line 549
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->fosterInserts:Z

    return v0
.end method

.method isFragmentParsing()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->fragmentParsing:Z

    return v0
.end method

.method isInActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 1
    .param p1, "el"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 698
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isElementInQueue(Ljava/util/ArrayList;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v0

    return v0
.end method

.method isSpecial(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 2
    .param p1, "el"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 598
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchSpecial:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method lastFormattingElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method markInsertionMode()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->originalState:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 175
    return-void
.end method

.method maybeSetBaseUri(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 2
    .param p1, "base"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 198
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUriSetFromDoc:Z

    if-eqz v0, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    const-string v0, "href"

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "href":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUriSetFromDoc:Z

    .line 205
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->setBaseUri(Ljava/lang/String;)V

    .line 207
    :cond_1
    return-void
.end method

.method newPendingTableCharacters()V
    .locals 1

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pendingTableCharacters:Ljava/util/List;

    .line 566
    return-void
.end method

.method onStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 1
    .param p1, "el"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 317
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isElementInQueue(Ljava/util/ArrayList;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v0

    return v0
.end method

.method originalState()Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->originalState:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    return-object v0
.end method

.method parse(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "errors"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    .line 98
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->Initial:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUriSetFromDoc:Z

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)Ljava/util/List;
    .locals 7
    .param p1, "inputFragment"    # Ljava/lang/String;
    .param p2, "context"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p3, "baseUri"    # Ljava/lang/String;
    .param p4, "errors"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->Initial:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 106
    invoke-virtual {p0, p1, p3, p4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->initialiseParse(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)V

    .line 107
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->contextElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->fragmentParsing:Z

    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "root":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-eqz p2, :cond_7

    .line 112
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->ownerDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->ownerDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->quirksMode()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->quirksMode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    .line 116
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "contextTag":Ljava/lang/String;
    const-string/jumbo v2, "title"

    const-string/jumbo v3, "textarea"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v3, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Rcdata:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 119
    :cond_1
    const-string v2, "iframe"

    const-string v3, "noembed"

    const-string v4, "noframes"

    const-string/jumbo v5, "style"

    const-string/jumbo v6, "xmp"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v3, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Rawtext:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 121
    :cond_2
    const-string/jumbo v2, "script"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v3, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptData:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 123
    :cond_3
    const-string v2, "noscript"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v3, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 125
    :cond_4
    const-string v2, "plaintext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 126
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v3, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 128
    :cond_5
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v3, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 130
    :goto_0
    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    const-string v3, "html"

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V

    move-object v0, v2

    .line 131
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 132
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->resetInsertionMode()V

    .line 137
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parents()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v2

    .line 138
    .local v2, "contextChain":Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(ILjava/lang/Object;)V

    .line 139
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 140
    .local v4, "parent":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    instance-of v5, v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    if-eqz v5, :cond_6

    .line 141
    move-object v3, v4

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    iput-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    .line 142
    goto :goto_2

    .line 144
    .end local v4    # "parent":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_6
    goto :goto_1

    .line 147
    .end local v1    # "contextTag":Ljava/lang/String;
    .end local v2    # "contextChain":Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->runParser()V

    .line 148
    if-eqz p2, :cond_8

    if-eqz v0, :cond_8

    .line 149
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 151
    :cond_8
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->childNodes()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method pop()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 305
    .local v0, "size":I
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v1
.end method

.method popStackToBefore(Ljava/lang/String;)V
    .locals 3
    .param p1, "elName"    # Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_1

    .line 371
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 372
    .local v1, "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    goto :goto_1

    .line 375
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 370
    .end local v1    # "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 378
    .end local v0    # "pos":I
    :cond_1
    :goto_1
    return-void
.end method

.method popStackToClose(Ljava/lang/String;)V
    .locals 3
    .param p1, "elName"    # Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_1

    .line 353
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 354
    .local v1, "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 355
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    goto :goto_1

    .line 352
    .end local v1    # "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 358
    .end local v0    # "pos":I
    :cond_1
    :goto_1
    return-void
.end method

.method varargs popStackToClose([Ljava/lang/String;)V
    .locals 3
    .param p1, "elNames"    # [Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_1

    .line 362
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 363
    .local v1, "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 364
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    goto :goto_1

    .line 361
    .end local v1    # "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 367
    .end local v0    # "pos":I
    :cond_1
    :goto_1
    return-void
.end method

.method protected process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z
    .locals 1
    .param p1, "token"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    .line 156
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentToken:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    .line 157
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v0

    return v0
.end method

.method process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)Z
    .locals 1
    .param p1, "token"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    .param p2, "state"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 161
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentToken:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    .line 162
    invoke-virtual {p2, p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v0

    return v0
.end method

.method push(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 1
    .param p1, "element"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 309
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method pushActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 4
    .param p1, "in"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, "numSeen":I
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "pos":I
    :goto_0
    if-ltz v1, :cond_3

    .line 618
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 619
    .local v2, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-nez v2, :cond_0

    .line 620
    goto :goto_1

    .line 622
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isSameFormattingElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 623
    add-int/lit8 v0, v0, 0x1

    .line 625
    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 626
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 627
    goto :goto_1

    .line 617
    .end local v2    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 630
    .end local v1    # "pos":I
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    return-void
.end method

.method reconstructFormattingElements()V
    .locals 8

    .line 642
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->lastFormattingElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    .line 643
    .local v0, "last":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->onStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 646
    :cond_0
    move-object v1, v0

    .line 647
    .local v1, "entry":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 648
    .local v2, "size":I
    add-int/lit8 v3, v2, -0x1

    .line 649
    .local v3, "pos":I
    const/4 v4, 0x0

    .line 651
    .local v4, "skip":Z
    :cond_1
    if-nez v3, :cond_2

    .line 652
    const/4 v4, 0x1

    .line 653
    goto :goto_0

    .line 655
    :cond_2
    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 656
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->onStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 660
    :cond_3
    :goto_0
    if-nez v4, :cond_4

    .line 661
    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 662
    :cond_4
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 665
    const/4 v4, 0x0

    .line 666
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertStartTag(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v5

    .line 668
    .local v5, "newEl":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v6

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->addAll(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 671
    iget-object v6, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v6, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 674
    add-int/lit8 v6, v2, -0x1

    if-ne v3, v6, :cond_5

    .line 675
    nop

    .line 677
    .end local v5    # "newEl":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    return-void

    .line 676
    :cond_5
    goto :goto_0

    .line 644
    .end local v1    # "entry":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .end local v2    # "size":I
    .end local v3    # "pos":I
    .end local v4    # "skip":Z
    :cond_6
    :goto_1
    return-void
.end method

.method removeFromActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 3
    .param p1, "el"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 688
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_1

    .line 689
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 690
    .local v1, "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-ne v1, p1, :cond_0

    .line 691
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 692
    goto :goto_1

    .line 688
    .end local v1    # "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 695
    .end local v0    # "pos":I
    :cond_1
    :goto_1
    return-void
.end method

.method removeFromStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 4
    .param p1, "el"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 341
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_1

    .line 342
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 343
    .local v2, "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-ne v2, p1, :cond_0

    .line 344
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 345
    return v1

    .line 341
    .end local v2    # "next":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 348
    .end local v0    # "pos":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method removeLastFormattingElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3

    .line 607
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 608
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 609
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v1

    .line 611
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method replaceActiveFormattingElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 1
    .param p1, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "in"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 713
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->replaceInQueue(Ljava/util/ArrayList;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 714
    return-void
.end method

.method replaceOnStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 1
    .param p1, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "in"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 420
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->replaceInQueue(Ljava/util/ArrayList;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 421
    return-void
.end method

.method resetInsertionMode()V
    .locals 5

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, "last":Z
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "pos":I
    :goto_0
    if-ltz v1, :cond_f

    .line 432
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 433
    .local v2, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-nez v1, :cond_0

    .line 434
    const/4 v0, 0x1

    .line 435
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->contextElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 437
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "select"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 439
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 440
    goto/16 :goto_3

    .line 441
    :cond_1
    const-string/jumbo v4, "td"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string/jumbo v4, "th"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 444
    :cond_2
    const-string/jumbo v4, "tr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 445
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InRow:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 446
    goto/16 :goto_3

    .line 447
    :cond_3
    const-string/jumbo v4, "tbody"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string/jumbo v4, "thead"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string/jumbo v4, "tfoot"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_1

    .line 450
    :cond_4
    const-string v4, "caption"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 451
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 452
    goto/16 :goto_3

    .line 453
    :cond_5
    const-string v4, "colgroup"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 454
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InColumnGroup:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 455
    goto :goto_3

    .line 456
    :cond_6
    const-string/jumbo v4, "table"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 457
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InTable:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 458
    goto :goto_3

    .line 459
    :cond_7
    const-string v4, "head"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 460
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 461
    goto :goto_3

    .line 462
    :cond_8
    const-string v4, "body"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 463
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 464
    goto :goto_3

    .line 465
    :cond_9
    const-string v4, "frameset"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 466
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 467
    goto :goto_3

    .line 468
    :cond_a
    const-string v4, "html"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 469
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->BeforeHead:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 470
    goto :goto_3

    .line 471
    :cond_b
    if-eqz v0, :cond_c

    .line 472
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 473
    goto :goto_3

    .line 431
    .end local v2    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .end local v3    # "name":Ljava/lang/String;
    :cond_c
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 448
    .restart local v2    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_d
    :goto_1
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 449
    goto :goto_3

    .line 442
    :cond_e
    :goto_2
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InCell:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 476
    .end local v1    # "pos":I
    .end local v2    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .end local v3    # "name":Ljava/lang/String;
    :cond_f
    :goto_3
    return-void
.end method

.method setFormElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;)V
    .locals 0
    .param p1, "formElement"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    .line 561
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    .line 562
    return-void
.end method

.method setFosterInserts(Z)V
    .locals 0
    .param p1, "fosterInserts"    # Z

    .line 553
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->fosterInserts:Z

    .line 554
    return-void
.end method

.method setHeadElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 0
    .param p1, "headElement"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 541
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->headElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 542
    return-void
.end method

.method setPendingTableCharacters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 573
    .local p1, "pendingTableCharacters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pendingTableCharacters:Ljava/util/List;

    .line 574
    return-void
.end method

.method state()Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TreeBuilder{currentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentToken:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 747
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    return-object v0
.end method

.method transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V
    .locals 0
    .param p1, "state"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 166
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 167
    return-void
.end method
