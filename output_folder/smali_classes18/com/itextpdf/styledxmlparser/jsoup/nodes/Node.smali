.class public abstract Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$OuterHtmlVisitor;
    }
.end annotation


# static fields
.field private static final EMPTY_NODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

.field baseUri:Ljava/lang/String;

.field childNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

.field siblingIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->EMPTY_NODES:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->EMPTY_NODES:Ljava/util/List;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 94
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 86
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "attributes"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 77
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->EMPTY_NODES:Ljava/util/List;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->baseUri:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 82
    return-void
.end method

.method private addSiblingHtml(ILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "html"    # Ljava/lang/String;

    .line 359
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 362
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 363
    .local v0, "context":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 364
    .local v1, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;>;"
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 365
    return-void
.end method

.method private getDeepChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2
    .param p1, "el"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 426
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->children()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    .line 427
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 428
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->getDeepChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    return-object v1

    .line 430
    :cond_0
    return-object p1
.end method

.method private partialClone()Ljava/lang/Object;
    .locals 2

    .line 705
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private reindexChildren(I)V
    .locals 2
    .param p1, "start"    # I

    .line 504
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->setSiblingIndex(I)V

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public absUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "attributeKey"    # Ljava/lang/String;

    .line 219
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    const-string v0, ""

    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->baseUri:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "children"    # [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 481
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->noNullElements([Ljava/lang/Object;)V

    .line 482
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()V

    .line 483
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 484
    aget-object v1, p2, v0

    .line 485
    .local v1, "in":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    invoke-virtual {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->reparentChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 486
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 487
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->reindexChildren(I)V

    .line 483
    .end local v1    # "in":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 489
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected varargs addChildren([Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 4
    .param p1, "children"    # [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 472
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 473
    .local v2, "child":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    invoke-virtual {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->reparentChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 474
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ensureChildNodes()V

    .line 475
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->setSiblingIndex(I)V

    .line 472
    .end local v2    # "child":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    :cond_0
    return-void
.end method

.method public after(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 4
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 351
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v2, v2, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 355
    return-object p0
.end method

.method public after(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .line 340
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->addSiblingHtml(ILjava/lang/String;)V

    .line 341
    return-object p0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-object p0
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "attributeKey"    # Ljava/lang/String;

    .line 118
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "abs:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 124
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    return-object v0
.end method

.method public baseUri()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->baseUri:Ljava/lang/String;

    return-object v0
.end method

.method public before(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 4
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 326
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 330
    return-object p0
.end method

.method public before(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .line 315
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->addSiblingHtml(ILjava/lang/String;)V

    .line 316
    return-object p0
.end method

.method public childNode(I)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1
    .param p1, "index"    # I

    .line 234
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-object v0
.end method

.method public final childNodeSize()I
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public childNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected childNodesAsArray()[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodeSize()I

    move-result v1

    new-array v1, v1, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-object v0
.end method

.method public childNodesCopy()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;>;"
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 254
    .local v2, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v2    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    goto :goto_0

    .line 256
    :cond_0
    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .line 665
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->doClone(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    .line 668
    .local v0, "thisClone":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 669
    .local v1, "nodesToProcess":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;>;"
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 671
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 672
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 674
    .local v2, "currParent":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 675
    iget-object v4, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {v4, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->doClone(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v4

    .line 676
    .local v4, "childClone":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    iget-object v5, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v5, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 677
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 674
    .end local v4    # "childClone":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 679
    .end local v2    # "currParent":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .end local v3    # "i":I
    :cond_0
    goto :goto_0

    .line 681
    :cond_1
    return-object v0
.end method

.method protected doClone(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 4
    .param p1, "parent"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 690
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->partialClone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 691
    .local v0, "clone":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    iput-object p1, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 692
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    :goto_0
    iput v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    .line 693
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 694
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->baseUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->baseUri:Ljava/lang/String;

    .line 695
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    .line 697
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 698
    .local v2, "child":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    iget-object v3, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 700
    .end local v2    # "child":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    :cond_2
    return-object v0
.end method

.method protected ensureChildNodes()V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->EMPTY_NODES:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    .line 495
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 638
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getOutputSettings()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 2

    .line 598
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ownerDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ownerDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    return-object v0
.end method

.method public hasAttr(Ljava/lang/String;)Z
    .locals 3
    .param p1, "attributeKey"    # Ljava/lang/String;

    .line 152
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 154
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    const/4 v1, 0x1

    return v1

    .line 159
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSameValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 649
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 650
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 652
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 650
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public html(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 0
    .param p1, "appendable"    # Ljava/lang/Appendable;

    .line 617
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->outerHtml(Ljava/lang/Appendable;)V

    .line 618
    return-object p1
.end method

.method protected indent(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 2
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "depth"    # I
    .param p3, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    const-string v0, "\n"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->indentAmount()I

    move-result v1

    mul-int/2addr v1, p2

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->padding(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 627
    return-void
.end method

.method public nextSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 4

    .line 531
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 532
    return-object v1

    .line 534
    :cond_0
    iget-object v0, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    .line 535
    .local v0, "siblings":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;>;"
    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    add-int/lit8 v2, v2, 0x1

    .line 536
    .local v2, "index":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 537
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-object v1

    .line 539
    :cond_1
    return-object v1
.end method

.method public abstract nodeName()Ljava/lang/String;
.end method

.method public outerHtml()Ljava/lang/String;
    .locals 2

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 588
    .local v0, "accum":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->outerHtml(Ljava/lang/Appendable;)V

    .line 589
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected outerHtml(Ljava/lang/Appendable;)V
    .locals 3
    .param p1, "accum"    # Ljava/lang/Appendable;

    .line 593
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$OuterHtmlVisitor;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->getOutputSettings()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$OuterHtmlVisitor;-><init>(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;)V

    invoke-virtual {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->traverse(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 594
    return-void
.end method

.method abstract outerHtmlHead(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract outerHtmlTail(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public ownerDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1

    .line 292
    instance-of v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    if-eqz v0, :cond_0

    .line 293
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    return-object v0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-nez v0, :cond_1

    .line 295
    const/4 v0, 0x0

    return-object v0

    .line 297
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->ownerDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-object v0
.end method

.method public final parentNode()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-object v0
.end method

.method public previousSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 548
    return-object v1

    .line 550
    :cond_0
    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    if-lez v2, :cond_1

    .line 551
    iget-object v0, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    return-object v0

    .line 553
    :cond_1
    return-object v1
.end method

.method public remove()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->removeChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 306
    return-void
.end method

.method public removeAttr(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .line 168
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->remove(Ljava/lang/String;)V

    .line 170
    return-object p0
.end method

.method protected removeChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 2
    .param p1, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 463
    iget-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(Z)V

    .line 464
    iget v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    .line 465
    .local v0, "index":I
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 466
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->reindexChildren(I)V

    .line 467
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 468
    return-void
.end method

.method protected reparentChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 1
    .param p1, "child"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 498
    iget-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->removeChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 500
    :cond_0
    invoke-virtual {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->setParentNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 501
    return-void
.end method

.method protected replaceChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 2
    .param p1, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .param p2, "in"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 450
    iget-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(Z)V

    .line 451
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 452
    iget-object v0, p2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-eqz v0, :cond_1

    .line 453
    invoke-virtual {v0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->removeChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 455
    :cond_1
    iget v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    .line 456
    .local v0, "index":I
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 457
    iput-object p0, p2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 458
    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->setSiblingIndex(I)V

    .line 459
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 460
    return-void
.end method

.method public replaceWith(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 1
    .param p1, "in"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 438
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->replaceChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 441
    return-void
.end method

.method public setBaseUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 186
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 188
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$1;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$1;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->traverse(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 196
    return-void
.end method

.method protected setParentNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 1
    .param p1, "parentNode"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 444
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->removeChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 446
    :cond_0
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 447
    return-void
.end method

.method protected setSiblingIndex(I)V
    .locals 0
    .param p1, "siblingIndex"    # I

    .line 567
    iput p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    .line 568
    return-void
.end method

.method public siblingIndex()I
    .locals 1

    .line 563
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    return v0
.end method

.method public siblingNodes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    if-nez v0, :cond_0

    .line 516
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 518
    :cond_0
    iget-object v0, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    .line 519
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 520
    .local v1, "siblings":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 521
    .local v3, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    if-eq v3, p0, :cond_1

    .line 522
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    .end local v3    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    :cond_1
    goto :goto_0

    .line 523
    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 622
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public traverse(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 1
    .param p1, "nodeVisitor"    # Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;

    .line 576
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 577
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;)V

    .line 578
    .local v0, "traversor":Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;
    invoke-virtual {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->traverse(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 579
    return-object p0
.end method

.method public unwrap()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 4

    .line 416
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 419
    .local v0, "firstChild":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->siblingIndex:I

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodesAsArray()[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->addChildren(I[Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 420
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->remove()V

    .line 422
    return-object v0
.end method

.method public wrap(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .locals 8
    .param p1, "html"    # Ljava/lang/String;

    .line 373
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 376
    .local v0, "context":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 377
    .local v2, "wrapChildren":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 378
    .local v4, "wrapNode":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    if-eqz v4, :cond_3

    instance-of v5, v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-nez v5, :cond_1

    goto :goto_2

    .line 381
    :cond_1
    move-object v1, v4

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 382
    .local v1, "wrap":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->getDeepChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v5

    .line 383
    .local v5, "deepest":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    iget-object v6, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {v6, p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->replaceChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 384
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    aput-object p0, v6, v3

    invoke-virtual {v5, v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->addChildren([Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 387
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 388
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 389
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 390
    .local v6, "remainder":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    iget-object v7, v6, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-virtual {v7, v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->removeChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 391
    invoke-virtual {v1, v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 388
    .end local v6    # "remainder":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 394
    .end local v3    # "i":I
    :cond_2
    return-object p0

    .line 379
    .end local v1    # "wrap":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .end local v5    # "deepest":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_3
    :goto_2
    return-object v1
.end method
