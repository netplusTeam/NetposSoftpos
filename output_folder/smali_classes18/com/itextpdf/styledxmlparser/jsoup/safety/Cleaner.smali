.class public Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;
.super Ljava/lang/Object;
.source "Cleaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;,
        Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;
    }
.end annotation


# instance fields
.field private whitelist:Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;)V
    .locals 0
    .param p1, "whitelist"    # Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 80
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->whitelist:Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 1
    .param p0, "x0"    # Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;

    .line 71
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->whitelist:Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    return-object v0
.end method

.method static synthetic access$100(Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;
    .locals 1
    .param p0, "x0"    # Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;
    .param p1, "x1"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 71
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->createSafeElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;

    move-result-object v0

    return-object v0
.end method

.method private copySafeNodes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)I
    .locals 3
    .param p1, "source"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "dest"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 166
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;

    invoke-direct {v0, p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 167
    .local v0, "cleaningVisitor":Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;)V

    .line 168
    .local v1, "traversor":Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->traverse(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 169
    iget v2, v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    return v2
.end method

.method private createSafeElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;
    .locals 8
    .param p1, "sourceEl"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 173
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "sourceTag":Ljava/lang/String;
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;-><init>()V

    .line 175
    .local v1, "destAttrs":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 176
    .local v2, "dest":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    const/4 v3, 0x0

    .line 178
    .local v3, "numDiscarded":I
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v4

    .line 179
    .local v4, "sourceAttrs":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 180
    .local v6, "sourceAttr":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    iget-object v7, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->whitelist:Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    invoke-virtual {v7, v0, p1, v6}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->isSafeAttribute(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 181
    invoke-virtual {v1, v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)V

    goto :goto_1

    .line 183
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 184
    .end local v6    # "sourceAttr":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    :goto_1
    goto :goto_0

    .line 185
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->whitelist:Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    invoke-virtual {v5, v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->getEnforcedAttributes(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v5

    .line 186
    .local v5, "enforcedAttrs":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    invoke-virtual {v1, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->addAll(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 188
    new-instance v6, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;

    invoke-direct {v6, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;I)V

    return-object v6
.end method


# virtual methods
.method public clean(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 3
    .param p1, "dirtyDocument"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    .line 90
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->baseUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    .line 93
    .local v0, "clean":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->copySafeNodes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)I

    .line 96
    :cond_0
    return-object v0
.end method

.method public isValid(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;)Z
    .locals 3
    .param p1, "dirtyDocument"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    .line 111
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->baseUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    .line 114
    .local v0, "clean":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->copySafeNodes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)I

    move-result v1

    .line 115
    .local v1, "numDiscarded":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
