.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;
.super Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
.source "DocumentType.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PUBLIC_ID:Ljava/lang/String; = "publicId"

.field private static final SYSTEM_ID:Ljava/lang/String; = "systemId"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "baseUri"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 70
    const-string/jumbo v0, "publicId"

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 71
    const-string/jumbo v0, "systemId"

    invoke-virtual {p0, v0, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 72
    return-void
.end method

.method private has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "attribute"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "#doctype"

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

    .line 81
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->syntax()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    const-string/jumbo v2, "systemId"

    const-string/jumbo v3, "publicId"

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const-string v0, "<!doctype"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 85
    :cond_0
    const-string v0, "<!DOCTYPE"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 87
    :goto_0
    const-string v0, "name"

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    const-string v1, " "

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 89
    :cond_1
    invoke-direct {p0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x22

    if-eqz v0, :cond_2

    .line 90
    const-string v0, " PUBLIC \""

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 91
    :cond_2
    invoke-direct {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    const-string v0, " \""

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 93
    :cond_3
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 94
    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "depth"    # I
    .param p3, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 98
    return-void
.end method
