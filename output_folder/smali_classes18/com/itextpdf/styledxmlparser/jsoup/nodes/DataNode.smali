.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;
.super Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
.source "DataNode.java"


# static fields
.field private static final DATA_KEY:Ljava/lang/String; = "data"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static createFromEncoded(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;
    .locals 2
    .param p0, "encodedData"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 104
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    invoke-direct {v1, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getWholeData()Ljava/lang/String;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "#data"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 1
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "depth"    # I
    .param p3, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 88
    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "depth"    # I
    .param p3, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 90
    return-void
.end method

.method public setWholeData(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
