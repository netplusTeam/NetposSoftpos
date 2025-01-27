.class final Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;
.super Ljava/lang/Object;
.source "Cleaner.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CleaningVisitor"
.end annotation


# instance fields
.field destination:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

.field numDiscarded:I

.field final root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

.field final synthetic this$0:Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;


# direct methods
.method constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 0
    .param p2, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p3, "destination"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 126
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 p1, 0x0

    iput p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    .line 127
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 128
    iput-object p3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 129
    return-void
.end method


# virtual methods
.method public head(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 5
    .param p1, "source"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .line 132
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v0, :cond_2

    .line 133
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 135
    .local v0, "sourceEl":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->access$000(Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->isSafeTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;

    invoke-static {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->access$100(Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;

    move-result-object v1

    .line 137
    .local v1, "meta":Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;
    iget-object v2, v1, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;->el:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 138
    .local v2, "destChild":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v3, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 140
    iget v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    iget v4, v1, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;->numAttribsDiscarded:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    .line 141
    iput-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .end local v1    # "meta":Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;
    .end local v2    # "destChild":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eq p1, v1, :cond_1

    .line 143
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    goto :goto_1

    .line 142
    :cond_1
    :goto_0
    nop

    .line 145
    .end local v0    # "sourceEl":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :goto_1
    goto :goto_2

    :cond_2
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    if-eqz v0, :cond_3

    .line 146
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    .line 147
    .local v0, "sourceText":Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v1, "destText":Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 149
    .end local v0    # "sourceText":Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    .end local v1    # "destText":Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    goto :goto_2

    :cond_3
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->access$000(Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->isSafeTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    .line 151
    .local v0, "sourceData":Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v1, "destData":Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 153
    .end local v0    # "sourceData":Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;
    .end local v1    # "destData":Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;
    goto :goto_2

    .line 154
    :cond_4
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    .line 156
    :goto_2
    return-void
.end method

.method public tail(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 2
    .param p1, "source"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .line 159
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->access$000(Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;->isSafeTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 162
    :cond_0
    return-void
.end method
