.class Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$1;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->setBaseUri(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

.field final synthetic val$baseUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 188
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$1;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$1;->val$baseUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public head(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 1
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .line 190
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$1;->val$baseUri:Ljava/lang/String;

    iput-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->baseUri:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public tail(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 0
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .line 194
    return-void
.end method
