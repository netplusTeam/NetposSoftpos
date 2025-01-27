.class public Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
.super Ljava/lang/Object;
.source "CssDeclaration.java"


# instance fields
.field private expression:Ljava/lang/String;

.field private property:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "expression"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->normalizeCssProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->resolveAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->property:Ljava/lang/String;

    .line 67
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->normalizeCssProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->expression:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public getExpression()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->expression:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->property:Ljava/lang/String;

    return-object v0
.end method

.method resolveAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "normalizedCssProperty"    # Ljava/lang/String;

    .line 113
    const-string/jumbo v0, "word-wrap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "overflow-wrap"

    return-object v0

    .line 116
    :cond_0
    return-object p1
.end method

.method public setExpression(Ljava/lang/String;)V
    .locals 0
    .param p1, "expression"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->expression:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->property:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->expression:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "{0}: {1}"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
