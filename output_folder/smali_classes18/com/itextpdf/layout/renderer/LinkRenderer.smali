.class public Lcom/itextpdf/layout/renderer/LinkRenderer;
.super Lcom/itextpdf/layout/renderer/TextRenderer;
.source "LinkRenderer.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/Link;)V
    .locals 1
    .param p1, "link"    # Lcom/itextpdf/layout/element/Link;

    .line 60
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Link;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/renderer/LinkRenderer;-><init>(Lcom/itextpdf/layout/element/Link;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/element/Link;Ljava/lang/String;)V
    .locals 0
    .param p1, "linkElement"    # Lcom/itextpdf/layout/element/Link;
    .param p2, "text"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 4
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 76
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LinkRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    const-class v0, Lcom/itextpdf/layout/renderer/LinkRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 78
    .local v0, "logger":Lorg/slf4j/Logger;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Drawing won\'t be performed."

    aput-object v3, v2, v1

    const-string v1, "Occupied area has not been initialized. {0}"

    invoke-static {v1, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 79
    return-void

    .line 81
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_0
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 83
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LinkRenderer;->isRelativePosition()Z

    move-result v0

    .line 84
    .local v0, "isRelativePosition":Z
    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/LinkRenderer;->applyRelativePositioningTranslation(Z)V

    .line 89
    :cond_1
    return-void
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 93
    new-instance v0, Lcom/itextpdf/layout/renderer/LinkRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/LinkRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v1, Lcom/itextpdf/layout/element/Link;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/LinkRenderer;-><init>(Lcom/itextpdf/layout/element/Link;)V

    return-object v0
.end method
