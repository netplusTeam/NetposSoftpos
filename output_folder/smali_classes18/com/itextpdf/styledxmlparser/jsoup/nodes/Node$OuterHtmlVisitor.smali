.class Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$OuterHtmlVisitor;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OuterHtmlVisitor"
.end annotation


# instance fields
.field private accum:Ljava/lang/Appendable;

.field private out:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$OuterHtmlVisitor;->accum:Ljava/lang/Appendable;

    .line 717
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$OuterHtmlVisitor;->out:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 718
    return-void
.end method


# virtual methods
.method public head(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 2
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$OuterHtmlVisitor;->accum:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$OuterHtmlVisitor;->out:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p1, v0, p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->outerHtmlHead(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    nop

    .line 726
    return-void

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "exception":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/SerializationException;

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public tail(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 2
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .line 729
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$OuterHtmlVisitor;->accum:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node$OuterHtmlVisitor;->out:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p1, v0, p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->outerHtmlTail(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    goto :goto_0

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "exception":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/SerializationException;

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 736
    .end local v0    # "exception":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method
