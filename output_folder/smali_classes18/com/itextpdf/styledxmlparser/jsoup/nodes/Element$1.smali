.class Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$1;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->text()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

.field final synthetic val$accum:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 955
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$1;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public head(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 3
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .line 957
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    if-eqz v0, :cond_0

    .line 958
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    .line 959
    .local v0, "textNode":Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->access$000(Ljava/lang/StringBuilder;Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;)V

    .end local v0    # "textNode":Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    goto :goto_0

    .line 960
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v0, :cond_2

    .line 961
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 962
    .local v0, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 963
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->isBlock()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->access$100(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "br"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    .line 964
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 965
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 960
    .end local v0    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_2
    :goto_0
    nop

    .line 967
    :cond_3
    :goto_1
    return-void
.end method

.method public tail(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 0
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .line 970
    return-void
.end method
