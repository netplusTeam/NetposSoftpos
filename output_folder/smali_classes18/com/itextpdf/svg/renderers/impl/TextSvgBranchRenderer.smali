.class public Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "TextSvgBranchRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;
.implements Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeHelper;


# static fields
.field protected static final TEXTFLIP:Lcom/itextpdf/kernel/geom/AffineTransform;


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private font:Lcom/itextpdf/kernel/font/PdfFont;

.field private moveResolved:Z

.field protected performRootTransformations:Z

.field private posResolved:Z

.field private whiteSpaceProcessed:Z

.field private xMove:F

.field private xPos:[F

.field private yMove:F

.field private yPos:[F


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 82
    new-instance v13, Lcom/itextpdf/kernel/geom/AffineTransform;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    sput-object v13, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->TEXTFLIP:Lcom/itextpdf/kernel/geom/AffineTransform;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->children:Ljava/util/List;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->whiteSpaceProcessed:Z

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->performRootTransformations:Z

    .line 100
    iput-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->moveResolved:Z

    .line 101
    iput-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->posResolved:Z

    .line 102
    return-void
.end method

.method private applyTextRenderingMode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1
    .param p1, "currentCanvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 391
    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->doStroke:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->doFill:Z

    if-eqz v0, :cond_0

    .line 392
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextRenderingMode(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 394
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->doStroke:Z

    if-eqz v0, :cond_1

    .line 395
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextRenderingMode(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 397
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextRenderingMode(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 400
    :goto_0
    return-void
.end method

.method private deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;)V
    .locals 3
    .param p1, "deepCopy"    # Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    .line 403
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    .line 404
    .local v1, "child":Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;
    invoke-interface {v1}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    .line 405
    .local v2, "newChild":Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;
    invoke-interface {v1, p1}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 406
    invoke-virtual {p1, v2}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->addChild(Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;)V

    .line 407
    .end local v1    # "child":Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;
    .end local v2    # "newChild":Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;
    goto :goto_0

    .line 408
    :cond_0
    return-void
.end method

.method private static getPositionsFromString(Ljava/lang/String;)[F
    .locals 4
    .param p0, "rawValuesString"    # Ljava/lang/String;

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "result":[F
    invoke-static {p0}, Lcom/itextpdf/svg/utils/SvgCssUtils;->splitValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 363
    .local v1, "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 364
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [F

    .line 365
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 366
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v3

    aput v3, v0, v2

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private getTextAnchorAlignmentCorrection(F)F
    .locals 3
    .param p1, "childContentLength"    # F

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "textAnchorXCorrection":F
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v2, "text-anchor"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    invoke-virtual {p0, v2}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "textAnchorValue":Ljava/lang/String;
    const-string v2, "middle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xPos:[F

    if-eqz v2, :cond_0

    array-length v2, v2

    if-lez v2, :cond_0

    .line 419
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    sub-float/2addr v0, v2

    .line 423
    :cond_0
    const-string v2, "end"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 424
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xPos:[F

    if-eqz v2, :cond_1

    array-length v2, v2

    if-lez v2, :cond_1

    .line 425
    sub-float/2addr v0, p1

    .line 429
    .end local v1    # "textAnchorValue":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private static getTextTransform([[FLcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 6
    .param p0, "absolutePositions"    # [[F
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 374
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 376
    .local v0, "tf":Lcom/itextpdf/kernel/geom/AffineTransform;
    const/4 v1, 0x0

    aget-object v2, p0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    aget-object v2, p0, v3

    if-eqz v2, :cond_0

    .line 377
    new-array v2, v3, [F

    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getTextMove()[F

    move-result-object v4

    aget v4, v4, v1

    aput v4, v2, v1

    aput-object v2, p0, v1

    .line 380
    :cond_0
    aget-object v2, p0, v3

    if-nez v2, :cond_1

    .line 381
    new-array v2, v3, [F

    const/4 v4, 0x0

    aput v4, v2, v1

    aput-object v2, p0, v3

    .line 383
    :cond_1
    sget-object v2, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->TEXTFLIP:Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 384
    aget-object v2, p0, v1

    aget v2, v2, v1

    float-to-double v4, v2

    aget-object v2, p0, v3

    aget v1, v2, v1

    neg-float v1, v1

    float-to-double v1, v1

    invoke-static {v4, v5, v1, v2}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 386
    return-object v0
.end method

.method private resolveFontName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontInfo;
    .locals 5
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "fontWeight"    # Ljava/lang/String;
    .param p3, "fontStyle"    # Ljava/lang/String;
    .param p4, "provider"    # Lcom/itextpdf/layout/font/FontProvider;
    .param p5, "tempFonts"    # Lcom/itextpdf/layout/font/FontSet;

    .line 301
    const-string v0, "bold"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 302
    .local v0, "isBold":Z
    const-string v1, "italic"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 304
    .local v1, "isItalic":Z
    new-instance v2, Lcom/itextpdf/layout/font/FontCharacteristics;

    invoke-direct {v2}, Lcom/itextpdf/layout/font/FontCharacteristics;-><init>()V

    .line 305
    .local v2, "fontCharacteristics":Lcom/itextpdf/layout/font/FontCharacteristics;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v3, "stringArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {v2, v0}, Lcom/itextpdf/layout/font/FontCharacteristics;->setBoldFlag(Z)Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 308
    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/font/FontCharacteristics;->setItalicFlag(Z)Lcom/itextpdf/layout/font/FontCharacteristics;

    .line 310
    invoke-virtual {p4, v3, v2, p5}, Lcom/itextpdf/layout/font/FontProvider;->getFontSelector(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/font/FontSelector;->bestMatch()Lcom/itextpdf/layout/font/FontInfo;

    move-result-object v4

    return-object v4
.end method

.method private resolveTextMove()V
    .locals 6

    .line 278
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "dx"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    .local v0, "xRawValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "dy"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 282
    .local v1, "yRawValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/svg/utils/SvgCssUtils;->splitValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 283
    .local v2, "xValuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/itextpdf/svg/utils/SvgCssUtils;->splitValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 285
    .local v3, "yValuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    iput v4, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xMove:F

    .line 286
    iput v4, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->yMove:F

    .line 288
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 289
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xMove:F

    .line 292
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 293
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->yMove:F

    .line 295
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->moveResolved:Z

    .line 297
    .end local v0    # "xRawValue":Ljava/lang/String;
    .end local v1    # "yRawValue":Ljava/lang/String;
    .end local v2    # "xValuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "yValuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private resolveTextPosition()V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v1, "x"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    .local v0, "xRawValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v2, "y"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 353
    .local v1, "yRawValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getPositionsFromString(Ljava/lang/String;)[F

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xPos:[F

    .line 354
    invoke-static {v1}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getPositionsFromString(Ljava/lang/String;)[F

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->yPos:[F

    .line 356
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->posResolved:Z

    .line 358
    .end local v0    # "xRawValue":Ljava/lang/String;
    .end local v1    # "yRawValue":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public final addChild(Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;)V
    .locals 1
    .param p1, "child"    # Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    .line 114
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    return-void
.end method

.method public containsAbsolutePositionChange()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->posResolved:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->resolveTextPosition()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xPos:[F

    if-eqz v0, :cond_1

    array-length v0, v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->yPos:[F

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsRelativeMove()Z
    .locals 4

    .line 137
    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->moveResolved:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->resolveTextMove()V

    .line 138
    :cond_0
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xMove:F

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->yMove:F

    invoke-static {v1, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 139
    .local v0, "isNullMove":Z
    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 106
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;-><init>()V

    .line 107
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 108
    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;)V

    .line 109
    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 11
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 206
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 207
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 208
    .local v0, "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    iget-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->performRootTransformations:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 209
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 212
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->containsAbsolutePositionChange()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getAbsolutePositionChanges()[[F

    move-result-object v1

    invoke-static {v1, p1}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getTextTransform([[FLcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    .local v1, "rootTf":Lcom/itextpdf/kernel/geom/AffineTransform;
    goto :goto_0

    .line 215
    .end local v1    # "rootTf":Lcom/itextpdf/kernel/geom/AffineTransform;
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/geom/AffineTransform;

    sget-object v4, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->TEXTFLIP:Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v1, v4}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 217
    .restart local v1    # "rootTf":Lcom/itextpdf/kernel/geom/AffineTransform;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 219
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->resetTextMove()V

    .line 221
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->containsRelativeMove()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getRelativeTranslation()[F

    move-result-object v4

    .line 223
    .local v4, "rootMove":[F
    aget v5, v4, v2

    aget v6, v4, v3

    neg-float v6, v6

    invoke-virtual {p1, v5, v6}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addTextMove(FF)V

    .line 226
    .end local v4    # "rootMove":[F
    :cond_1
    iget-boolean v4, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->whiteSpaceProcessed:Z

    if-nez v4, :cond_2

    .line 227
    invoke-static {p0, v3}, Lcom/itextpdf/svg/utils/SvgTextUtil;->processWhiteSpace(Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;Z)V

    .line 230
    .end local v1    # "rootTf":Lcom/itextpdf/kernel/geom/AffineTransform;
    :cond_2
    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->applyTextRenderingMode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 232
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v1, :cond_8

    .line 233
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->resolveFont(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 234
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getCurrentFontSize()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 235
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    .line 236
    .local v4, "c":Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getCurrentFontSize()F

    move-result v5

    iget-object v6, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    invoke-interface {v4, v5, v6}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->getTextContentLength(FLcom/itextpdf/kernel/font/PdfFont;)F

    move-result v5

    .line 237
    .local v5, "childLength":F
    invoke-interface {v4}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->containsAbsolutePositionChange()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 239
    invoke-interface {v4}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->getAbsolutePositionChanges()[[F

    move-result-object v6

    .line 240
    .local v6, "absolutePositions":[[F
    invoke-static {v6, p1}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getTextTransform([[FLcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v7

    .line 242
    .local v7, "newTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {p1, v7}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->setLastTextTransform(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 244
    invoke-virtual {v0, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 246
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->resetTextMove()V

    .line 250
    .end local v6    # "absolutePositions":[[F
    .end local v7    # "newTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    :cond_3
    invoke-direct {p0, v5}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getTextAnchorAlignmentCorrection(F)F

    move-result v6

    .line 251
    .local v6, "textAnchorCorrection":F
    const/4 v7, 0x0

    invoke-static {v7, v6}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v8

    if-nez v8, :cond_4

    .line 252
    invoke-virtual {p1, v6, v7}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addTextMove(FF)V

    .line 255
    :cond_4
    invoke-interface {v4}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->containsRelativeMove()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 256
    invoke-interface {v4}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->getRelativeTranslation()[F

    move-result-object v8

    .line 257
    .local v8, "childMove":[F
    aget v9, v8, v2

    aget v10, v8, v3

    neg-float v10, v10

    invoke-virtual {p1, v9, v10}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addTextMove(FF)V

    .line 259
    .end local v8    # "childMove":[F
    :cond_5
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 260
    invoke-interface {v4, p1}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 262
    invoke-virtual {p1, v5, v7}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addTextMove(FF)V

    .line 263
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 265
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getLastTextTransform()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/AffineTransform;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_6

    .line 266
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getLastTextTransform()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 269
    .end local v4    # "c":Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;
    .end local v5    # "childLength":F
    .end local v6    # "textAnchorCorrection":F
    :cond_6
    goto :goto_1

    .line 270
    :cond_7
    iget-boolean v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->performRootTransformations:Z

    if-eqz v1, :cond_8

    .line 271
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 275
    .end local v0    # "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :cond_8
    return-void
.end method

.method public getAbsolutePositionChanges()[[F
    .locals 3

    .line 150
    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->posResolved:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->resolveTextPosition()V

    .line 151
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xPos:[F

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->yPos:[F

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getFont()Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    return-object v0
.end method

.method protected getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getTextRectangle(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/svg/utils/TextRectangle;

    move-result-object v0

    return-object v0
.end method

.method public getRelativeTranslation()[F
    .locals 3

    .line 131
    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->moveResolved:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->resolveTextMove()V

    .line 132
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->xMove:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->yMove:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getTextContentLength(FLcom/itextpdf/kernel/font/PdfFont;)F
    .locals 1
    .param p1, "parentFontSize"    # F
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public getTextRectangle(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/svg/utils/TextRectangle;
    .locals 19
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;
    .param p2, "basePoint"    # Lcom/itextpdf/kernel/geom/Point;

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 161
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->resolveFont(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 162
    const-wide/16 v1, 0x0

    .local v1, "x":D
    const-wide/16 v3, 0x0

    .line 163
    .local v3, "y":D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getAbsolutePositionChanges()[[F

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_0

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getAbsolutePositionChanges()[[F

    move-result-object v5

    aget-object v5, v5, v6

    aget v5, v5, v6

    float-to-double v1, v5

    goto :goto_0

    .line 165
    :cond_0
    if-eqz p2, :cond_1

    .line 166
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v1

    .line 168
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getAbsolutePositionChanges()[[F

    move-result-object v5

    const/4 v7, 0x1

    aget-object v5, v5, v7

    if-eqz v5, :cond_2

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getAbsolutePositionChanges()[[F

    move-result-object v5

    aget-object v5, v5, v7

    aget v5, v5, v6

    float-to-double v3, v5

    goto :goto_1

    .line 170
    :cond_2
    if-eqz p2, :cond_3

    .line 171
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v3

    .line 173
    :cond_3
    :goto_1
    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 174
    .end local p2    # "basePoint":Lcom/itextpdf/kernel/geom/Point;
    .local v5, "basePoint":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getRelativeTranslation()[F

    move-result-object v8

    aget v8, v8, v6

    float-to-double v8, v8

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getRelativeTranslation()[F

    move-result-object v10

    aget v10, v10, v7

    float-to-double v10, v10

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/itextpdf/kernel/geom/Point;->translate(DD)V

    .line 175
    const/4 v8, 0x0

    .line 176
    .local v8, "commonRect":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getChildren()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    .line 177
    .local v10, "child":Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;
    instance-of v11, v10, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeHelper;

    if-eqz v11, :cond_4

    .line 178
    move-object v11, v10

    check-cast v11, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeHelper;

    .line 179
    move-object/from16 v12, p1

    invoke-interface {v11, v12, v5}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeHelper;->getTextRectangle(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/svg/utils/TextRectangle;

    move-result-object v11

    .line 180
    .local v11, "rectangle":Lcom/itextpdf/svg/utils/TextRectangle;
    invoke-virtual {v11}, Lcom/itextpdf/svg/utils/TextRectangle;->getTextBaseLineRightPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v5

    .line 181
    const/4 v13, 0x2

    new-array v13, v13, [Lcom/itextpdf/kernel/geom/Rectangle;

    aput-object v8, v13, v6

    aput-object v11, v13, v7

    invoke-static {v13}, Lcom/itextpdf/kernel/geom/Rectangle;->getCommonRectangle([Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    goto :goto_3

    .line 177
    .end local v11    # "rectangle":Lcom/itextpdf/svg/utils/TextRectangle;
    :cond_4
    move-object/from16 v12, p1

    .line 183
    .end local v10    # "child":Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;
    :goto_3
    goto :goto_2

    .line 184
    :cond_5
    move-object/from16 v12, p1

    if-eqz v8, :cond_7

    .line 185
    new-instance v6, Lcom/itextpdf/svg/utils/TextRectangle;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v14

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v15

    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v16

    .line 186
    invoke-virtual {v8}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v17

    invoke-virtual {v5}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v9

    double-to-float v7, v9

    move-object v13, v6

    move/from16 v18, v7

    invoke-direct/range {v13 .. v18}, Lcom/itextpdf/svg/utils/TextRectangle;-><init>(FFFFF)V

    .line 185
    return-object v6

    .line 160
    .end local v1    # "x":D
    .end local v3    # "y":D
    .end local v5    # "basePoint":Lcom/itextpdf/kernel/geom/Point;
    .end local v8    # "commonRect":Lcom/itextpdf/kernel/geom/Rectangle;
    .restart local p2    # "basePoint":Lcom/itextpdf/kernel/geom/Point;
    :cond_6
    move-object/from16 v12, p1

    move-object/from16 v5, p2

    .line 189
    .end local p2    # "basePoint":Lcom/itextpdf/kernel/geom/Point;
    .restart local v5    # "basePoint":Lcom/itextpdf/kernel/geom/Point;
    :cond_7
    const/4 v1, 0x0

    return-object v1
.end method

.method public markWhiteSpaceProcessed()V
    .locals 1

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->whiteSpaceProcessed:Z

    .line 156
    return-void
.end method

.method resolveFont(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 10
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 314
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getFontProvider()Lcom/itextpdf/layout/font/FontProvider;

    move-result-object v6

    .line 315
    .local v6, "provider":Lcom/itextpdf/layout/font/FontProvider;
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getTempFonts()Lcom/itextpdf/layout/font/FontSet;

    move-result-object v7

    .line 316
    .local v7, "tempFonts":Lcom/itextpdf/layout/font/FontSet;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 317
    invoke-virtual {v6}, Lcom/itextpdf/layout/font/FontProvider;->getFontSet()Lcom/itextpdf/layout/font/FontSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/font/FontSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/itextpdf/layout/font/FontSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "font-family"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    .local v0, "fontFamily":Ljava/lang/String;
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "font-weight"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 320
    .local v8, "fontWeight":Ljava/lang/String;
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v2, "font-style"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 322
    .local v9, "fontStyle":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 323
    .end local v0    # "fontFamily":Ljava/lang/String;
    .local v1, "fontFamily":Ljava/lang/String;
    :goto_0
    move-object v0, p0

    move-object v2, v8

    move-object v3, v9

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->resolveFontName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontInfo;

    move-result-object v0

    .line 325
    .local v0, "fontInfo":Lcom/itextpdf/layout/font/FontInfo;
    invoke-virtual {v6, v0, v7}, Lcom/itextpdf/layout/font/FontProvider;->getPdfFont(Lcom/itextpdf/layout/font/FontInfo;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 327
    .end local v0    # "fontInfo":Lcom/itextpdf/layout/font/FontInfo;
    .end local v1    # "fontFamily":Ljava/lang/String;
    .end local v8    # "fontWeight":Ljava/lang/String;
    .end local v9    # "fontStyle":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-nez v0, :cond_3

    .line 331
    :try_start_0
    invoke-static {}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->font:Lcom/itextpdf/kernel/font/PdfFont;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    goto :goto_1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v2, "The font wasn\'t found."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 336
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    return-void
.end method
