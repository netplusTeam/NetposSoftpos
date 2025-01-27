.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;
.super Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
.source "XmlDeclaration.java"


# instance fields
.field private final isProcessingInstruction:Z

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "isProcessingInstruction"    # Z

    .line 64
    invoke-direct {p0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 66
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->name:Ljava/lang/String;

    .line 67
    iput-boolean p3, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->isProcessingInstruction:Z

    .line 68
    return-void
.end method


# virtual methods
.method public getWholeDeclaration()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->html()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->name:Ljava/lang/String;

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "#declaration"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 4
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "depth"    # I
    .param p3, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    nop

    .line 93
    const-string v0, "<"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->isProcessingInstruction:Z

    const-string v2, "!"

    const-string v3, "?"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 94
    :goto_0
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->name:Ljava/lang/String;

    .line 95
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 96
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->html(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V

    .line 97
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->isProcessingInstruction:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 98
    :goto_1
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    .line 99
    const-string v1, ">"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 100
    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "depth"    # I
    .param p3, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
