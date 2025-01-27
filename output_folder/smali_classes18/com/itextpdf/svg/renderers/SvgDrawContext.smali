.class public Lcom/itextpdf/svg/renderers/SvgDrawContext;
.super Ljava/lang/Object;
.source "SvgDrawContext.java"


# instance fields
.field private final canvases:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;",
            ">;"
        }
    .end annotation
.end field

.field private cssContext:Lcom/itextpdf/svg/css/SvgCssContext;

.field private final fontProvider:Lcom/itextpdf/layout/font/FontProvider;

.field private lastTextTransform:Lcom/itextpdf/kernel/geom/AffineTransform;

.field private final namedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private final patternIds:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

.field private tempFonts:Lcom/itextpdf/layout/font/FontSet;

.field private textMove:[F

.field private final useIds:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final viewports:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;Lcom/itextpdf/layout/font/FontProvider;)V
    .locals 2
    .param p1, "resourceResolver"    # Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    .param p2, "fontProvider"    # Lcom/itextpdf/layout/font/FontProvider;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->namedObjects:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->canvases:Ljava/util/Deque;

    .line 71
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->viewports:Ljava/util/Deque;

    .line 72
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->useIds:Ljava/util/Stack;

    .line 73
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->patternIds:Ljava/util/Stack;

    .line 79
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->lastTextTransform:Lcom/itextpdf/kernel/geom/AffineTransform;

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->textMove:[F

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    .line 93
    if-nez p2, :cond_1

    .line 94
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/font/BasicFontProvider;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/resolver/font/BasicFontProvider;-><init>()V

    move-object p2, v0

    .line 96
    :cond_1
    iput-object p2, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->fontProvider:Lcom/itextpdf/layout/font/FontProvider;

    .line 97
    new-instance v0, Lcom/itextpdf/svg/css/SvgCssContext;

    invoke-direct {v0}, Lcom/itextpdf/svg/css/SvgCssContext;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->cssContext:Lcom/itextpdf/svg/css/SvgCssContext;

    .line 98
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V
    .locals 0
    .param p1, "resourceResolver"    # Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    .param p2, "fontProvider"    # Lcom/itextpdf/layout/font/FontProvider;
    .param p3, "svgRootRenderer"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/svg/renderers/SvgDrawContext;-><init>(Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;Lcom/itextpdf/layout/font/FontProvider;)V

    .line 111
    return-void
.end method


# virtual methods
.method public addNamedObject(Ljava/lang/String;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namedObject"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 198
    if-eqz p2, :cond_2

    .line 202
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->namedObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->namedObjects:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_0
    return-void

    .line 203
    :cond_1
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v1, "The name of the named object can\'t be null or empty."

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_2
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v1, "A named object can\'t be null."

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addNamedObjects(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;)V"
        }
    .end annotation

    .line 236
    .local p1, "namedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;>;"
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->namedObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 237
    return-void
.end method

.method public addTextMove(FF)V
    .locals 3
    .param p1, "additionalMoveX"    # F
    .param p2, "additionalMoveY"    # F

    .line 334
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->textMove:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 335
    const/4 v1, 0x1

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 336
    return-void
.end method

.method public addUsedId(Ljava/lang/String;)V
    .locals 1
    .param p1, "elementId"    # Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->useIds:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-void
.end method

.method public addViewPort(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 1
    .param p1, "viewPort"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 161
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->viewports:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->cssContext:Lcom/itextpdf/svg/css/SvgCssContext;

    return-object v0
.end method

.method public getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->canvases:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-object v0
.end method

.method public getCurrentCanvasTransform()Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 15

    .line 343
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCtm()Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object v0

    .line 344
    .local v0, "currentTransform":Lcom/itextpdf/kernel/geom/Matrix;
    if-eqz v0, :cond_0

    .line 345
    new-instance v14, Lcom/itextpdf/kernel/geom/AffineTransform;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    float-to-double v2, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    float-to-double v4, v1

    const/4 v1, 0x3

    .line 346
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    float-to-double v6, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    float-to-double v8, v1

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    float-to-double v10, v1

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    float-to-double v12, v1

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    .line 345
    return-object v14

    .line 348
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v1}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    return-object v1
.end method

.method public getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->viewports:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method public getFontProvider()Lcom/itextpdf/layout/font/FontProvider;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->fontProvider:Lcom/itextpdf/layout/font/FontProvider;

    return-object v0
.end method

.method public getLastTextTransform()Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->lastTextTransform:Lcom/itextpdf/kernel/geom/AffineTransform;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->lastTextTransform:Lcom/itextpdf/kernel/geom/AffineTransform;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->lastTextTransform:Lcom/itextpdf/kernel/geom/AffineTransform;

    return-object v0
.end method

.method public getNamedObject(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->namedObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    return-object v0
.end method

.method public getRemValue()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->cssContext:Lcom/itextpdf/svg/css/SvgCssContext;

    invoke-virtual {v0}, Lcom/itextpdf/svg/css/SvgCssContext;->getRootFontSize()F

    move-result v0

    return v0
.end method

.method public getResourceResolver()Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    return-object v0
.end method

.method public getRootViewPort()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->viewports:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method public getTempFonts()Lcom/itextpdf/layout/font/FontSet;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    return-object v0
.end method

.method public getTextMove()[F
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->textMove:[F

    return-object v0
.end method

.method public isIdUsedByUseTagBefore(Ljava/lang/String;)Z
    .locals 1
    .param p1, "elementId"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->useIds:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public popCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->canvases:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 130
    .local v0, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->canvases:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 131
    return-object v0
.end method

.method public popPatternId()V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->patternIds:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 402
    return-void
.end method

.method public pushCanvas(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 142
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->canvases:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public pushPatternId(Ljava/lang/String;)Z
    .locals 1
    .param p1, "patternId"    # Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->patternIds:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x0

    return v0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->patternIds:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const/4 v0, 0x1

    return v0
.end method

.method public removeCurrentViewPort()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->viewports:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->viewports:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 189
    :cond_0
    return-void
.end method

.method public removeUsedId(Ljava/lang/String;)V
    .locals 1
    .param p1, "elementId"    # Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->useIds:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 292
    return-void
.end method

.method public resetTextMove()V
    .locals 1

    .line 325
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->textMove:[F

    .line 326
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public setCssContext(Lcom/itextpdf/svg/css/SvgCssContext;)V
    .locals 0
    .param p1, "cssContext"    # Lcom/itextpdf/svg/css/SvgCssContext;

    .line 378
    iput-object p1, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->cssContext:Lcom/itextpdf/svg/css/SvgCssContext;

    .line 379
    return-void
.end method

.method public setLastTextTransform(Lcom/itextpdf/kernel/geom/AffineTransform;)V
    .locals 0
    .param p1, "newTransform"    # Lcom/itextpdf/kernel/geom/AffineTransform;

    .line 310
    iput-object p1, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->lastTextTransform:Lcom/itextpdf/kernel/geom/AffineTransform;

    .line 311
    return-void
.end method

.method public setTempFonts(Lcom/itextpdf/layout/font/FontSet;)V
    .locals 0
    .param p1, "tempFonts"    # Lcom/itextpdf/layout/font/FontSet;

    .line 263
    iput-object p1, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    .line 264
    return-void
.end method

.method public size()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/SvgDrawContext;->canvases:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method
