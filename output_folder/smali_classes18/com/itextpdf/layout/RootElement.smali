.class public abstract Lcom/itextpdf/layout/RootElement;
.super Lcom/itextpdf/layout/ElementPropertyContainer;
.source "RootElement.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/itextpdf/layout/IPropertyContainer;",
        ">",
        "Lcom/itextpdf/layout/ElementPropertyContainer<",
        "TT;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field protected childElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/element/IElement;",
            ">;"
        }
    .end annotation
.end field

.field protected defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

.field protected defaultFontProvider:Lcom/itextpdf/layout/font/FontProvider;

.field private defaultLayoutTaggingHelper:Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

.field protected defaultSplitCharacters:Lcom/itextpdf/layout/splitting/ISplitCharacters;

.field protected immediateFlush:Z

.field protected pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field protected rootRenderer:Lcom/itextpdf/layout/renderer/RootRenderer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    invoke-direct {p0}, Lcom/itextpdf/layout/ElementPropertyContainer;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/RootElement;->immediateFlush:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/RootElement;->childElements:Ljava/util/List;

    return-void
.end method

.method private initTaggingHelperIfNeeded()Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .locals 3

    .line 381
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->defaultLayoutTaggingHelper:Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    iget-object v1, p0, Lcom/itextpdf/layout/RootElement;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-boolean v2, p0, Lcom/itextpdf/layout/RootElement;->immediateFlush:Z

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V

    iput-object v0, p0, Lcom/itextpdf/layout/RootElement;->defaultLayoutTaggingHelper:Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->defaultLayoutTaggingHelper:Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .param p1, "element"    # Lcom/itextpdf/layout/element/IBlockElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/element/IBlockElement;",
            ")TT;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/RootElement;->createAndAddRendererSubTree(Lcom/itextpdf/layout/element/IElement;)V

    .line 107
    iget-boolean v0, p0, Lcom/itextpdf/layout/RootElement;->immediateFlush:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->childElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 110
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public add(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .param p1, "image"    # Lcom/itextpdf/layout/element/Image;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/element/Image;",
            ")TT;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/RootElement;->createAndAddRendererSubTree(Lcom/itextpdf/layout/element/IElement;)V

    .line 123
    iget-boolean v0, p0, Lcom/itextpdf/layout/RootElement;->immediateFlush:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->childElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 126
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method protected createAndAddRendererSubTree(Lcom/itextpdf/layout/element/IElement;)V
    .locals 4
    .param p1, "element"    # Lcom/itextpdf/layout/element/IElement;

    .line 372
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    invoke-interface {p1}, Lcom/itextpdf/layout/element/IElement;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    .line 373
    .local v0, "rendererSubTreeRoot":Lcom/itextpdf/layout/renderer/IRenderer;
    invoke-direct {p0}, Lcom/itextpdf/layout/RootElement;->initTaggingHelperIfNeeded()Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    move-result-object v1

    .line 374
    .local v1, "taggingHelper":Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    if-eqz v1, :cond_0

    .line 375
    iget-object v2, p0, Lcom/itextpdf/layout/RootElement;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getAutoTaggingPointer()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Iterable;)V

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/RootElement;->ensureRootRendererNotNull()Lcom/itextpdf/layout/renderer/RootRenderer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/itextpdf/layout/renderer/RootRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 378
    return-void
.end method

.method public deleteOwnProperty(I)V
    .locals 2
    .param p1, "property"    # I

    .line 211
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method protected abstract ensureRootRendererNotNull()Lcom/itextpdf/layout/renderer/RootRenderer;
.end method

.method public getDefaultProperty(I)Ljava/lang/Object;
    .locals 3
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    sparse-switch p1, :sswitch_data_0

    .line 202
    const/4 v0, 0x0

    return-object v0

    .line 194
    :sswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/itextpdf/layout/RootElement;->initTaggingHelperIfNeeded()Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    move-result-object v0

    return-object v0

    .line 182
    :sswitch_1
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->defaultFontProvider:Lcom/itextpdf/layout/font/FontProvider;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/itextpdf/layout/font/FontProvider;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/FontProvider;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/RootElement;->defaultFontProvider:Lcom/itextpdf/layout/font/FontProvider;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->defaultFontProvider:Lcom/itextpdf/layout/font/FontProvider;

    return-object v0

    .line 198
    :sswitch_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 196
    :sswitch_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 187
    :sswitch_4
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->defaultSplitCharacters:Lcom/itextpdf/layout/splitting/ISplitCharacters;

    if-nez v0, :cond_1

    .line 188
    new-instance v0, Lcom/itextpdf/layout/splitting/DefaultSplitCharacters;

    invoke-direct {v0}, Lcom/itextpdf/layout/splitting/DefaultSplitCharacters;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/RootElement;->defaultSplitCharacters:Lcom/itextpdf/layout/splitting/ISplitCharacters;

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->defaultSplitCharacters:Lcom/itextpdf/layout/splitting/ISplitCharacters;

    return-object v0

    .line 200
    :sswitch_5
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 192
    :sswitch_6
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    return-object v0

    .line 177
    :sswitch_7
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    if-nez v0, :cond_2

    .line 178
    invoke-static {}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/RootElement;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "exc":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_7
        0x18 -> :sswitch_6
        0x3d -> :sswitch_5
        0x3e -> :sswitch_4
        0x47 -> :sswitch_3
        0x48 -> :sswitch_2
        0x5b -> :sswitch_1
        0x6c -> :sswitch_0
    .end sparse-switch
.end method

.method public getFontProvider()Lcom/itextpdf/layout/font/FontProvider;
    .locals 2

    .line 135
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/RootElement;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 136
    .local v0, "fontProvider":Ljava/lang/Object;
    instance-of v1, v0, Lcom/itextpdf/layout/font/FontProvider;

    if-eqz v1, :cond_0

    .line 137
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/layout/font/FontProvider;

    return-object v1

    .line 139
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getOwnProperty(I)Ljava/lang/Object;
    .locals 2
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/RootElement;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRenderer()Lcom/itextpdf/layout/renderer/RootRenderer;
    .locals 1

    .line 227
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    invoke-virtual {p0}, Lcom/itextpdf/layout/RootElement;->ensureRootRendererNotNull()Lcom/itextpdf/layout/renderer/RootRenderer;

    move-result-object v0

    return-object v0
.end method

.method public hasOwnProperty(I)Z
    .locals 2
    .param p1, "property"    # I

    .line 159
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .line 154
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/RootElement;->hasOwnProperty(I)Z

    move-result v0

    return v0
.end method

.method public setFontProvider(Lcom/itextpdf/layout/font/FontProvider;)V
    .locals 1
    .param p1, "fontProvider"    # Lcom/itextpdf/layout/font/FontProvider;

    .line 149
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    const/16 v0, 0x5b

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/RootElement;->setProperty(ILjava/lang/Object;)V

    .line 150
    return-void
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 216
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFILcom/itextpdf/layout/property/TextAlignment;Lcom/itextpdf/layout/property/VerticalAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 7
    .param p1, "p"    # Lcom/itextpdf/layout/element/Paragraph;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pageNumber"    # I
    .param p5, "textAlign"    # Lcom/itextpdf/layout/property/TextAlignment;
    .param p6, "vertAlign"    # Lcom/itextpdf/layout/property/VerticalAlignment;
    .param p7, "radAngle"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/element/Paragraph;",
            "FFI",
            "Lcom/itextpdf/layout/property/TextAlignment;",
            "Lcom/itextpdf/layout/property/VerticalAlignment;",
            "F)TT;"
        }
    .end annotation

    .line 332
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    new-instance v0, Lcom/itextpdf/layout/element/Div;

    invoke-direct {v0}, Lcom/itextpdf/layout/element/Div;-><init>()V

    .line 333
    .local v0, "div":Lcom/itextpdf/layout/element/Div;
    invoke-virtual {v0, p5}, Lcom/itextpdf/layout/element/Div;->setTextAlignment(Lcom/itextpdf/layout/property/TextAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/Div;

    invoke-virtual {v1, p6}, Lcom/itextpdf/layout/element/Div;->setVerticalAlignment(Lcom/itextpdf/layout/property/VerticalAlignment;)Lcom/itextpdf/layout/element/IElement;

    .line 334
    const/4 v1, 0x0

    cmpl-float v2, p7, v1

    if-eqz v2, :cond_0

    .line 335
    invoke-virtual {v0, p7}, Lcom/itextpdf/layout/element/Div;->setRotationAngle(F)Lcom/itextpdf/layout/element/IElement;

    .line 337
    :cond_0
    const/16 v2, 0x3a

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/layout/element/Div;->setProperty(ILjava/lang/Object;)V

    .line 338
    const/16 v2, 0x3b

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/layout/element/Div;->setProperty(ILjava/lang/Object;)V

    .line 340
    const v2, 0x459c4000    # 5000.0f

    .line 341
    .local v2, "divSize":F
    move v3, p2

    .local v3, "divX":F
    move v4, p3

    .line 342
    .local v4, "divY":F
    sget-object v5, Lcom/itextpdf/layout/property/TextAlignment;->CENTER:Lcom/itextpdf/layout/property/TextAlignment;

    const/high16 v6, 0x40000000    # 2.0f

    if-ne p5, v5, :cond_1

    .line 343
    div-float v5, v2, v6

    sub-float v3, p2, v5

    .line 344
    sget-object v5, Lcom/itextpdf/layout/property/HorizontalAlignment;->CENTER:Lcom/itextpdf/layout/property/HorizontalAlignment;

    invoke-virtual {p1, v5}, Lcom/itextpdf/layout/element/Paragraph;->setHorizontalAlignment(Lcom/itextpdf/layout/property/HorizontalAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    goto :goto_0

    .line 345
    :cond_1
    sget-object v5, Lcom/itextpdf/layout/property/TextAlignment;->RIGHT:Lcom/itextpdf/layout/property/TextAlignment;

    if-ne p5, v5, :cond_2

    .line 346
    sub-float v3, p2, v2

    .line 347
    sget-object v5, Lcom/itextpdf/layout/property/HorizontalAlignment;->RIGHT:Lcom/itextpdf/layout/property/HorizontalAlignment;

    invoke-virtual {p1, v5}, Lcom/itextpdf/layout/element/Paragraph;->setHorizontalAlignment(Lcom/itextpdf/layout/property/HorizontalAlignment;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 350
    :cond_2
    :goto_0
    sget-object v5, Lcom/itextpdf/layout/property/VerticalAlignment;->MIDDLE:Lcom/itextpdf/layout/property/VerticalAlignment;

    if-ne p6, v5, :cond_3

    .line 351
    div-float v5, v2, v6

    sub-float v4, p3, v5

    goto :goto_1

    .line 352
    :cond_3
    sget-object v5, Lcom/itextpdf/layout/property/VerticalAlignment;->TOP:Lcom/itextpdf/layout/property/VerticalAlignment;

    if-ne p6, v5, :cond_4

    .line 353
    sub-float v4, p3, v2

    .line 356
    :cond_4
    :goto_1
    if-nez p4, :cond_5

    .line 357
    const/4 p4, 0x1

    .line 358
    :cond_5
    invoke-virtual {v0, p4, v3, v4, v2}, Lcom/itextpdf/layout/element/Div;->setFixedPosition(IFFF)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/element/Div;

    invoke-virtual {v5, v2}, Lcom/itextpdf/layout/element/Div;->setMinHeight(F)Lcom/itextpdf/layout/element/IElement;

    .line 359
    const/16 v5, 0x21

    invoke-virtual {p1, v5}, Lcom/itextpdf/layout/element/Paragraph;->getProperty(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    .line 360
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v5}, Lcom/itextpdf/layout/element/Paragraph;->setMultipliedLeading(F)Lcom/itextpdf/layout/element/Paragraph;

    .line 362
    :cond_6
    invoke-virtual {p1, v1, v1, v1, v1}, Lcom/itextpdf/layout/element/Paragraph;->setMargins(FFFF)Lcom/itextpdf/layout/element/IElement;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/element/Div;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Div;

    .line 363
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Div;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v1

    const-string v5, "Artifact"

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    .line 364
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/RootElement;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 366
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v1
.end method

.method public showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFLcom/itextpdf/layout/property/TextAlignment;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 9
    .param p1, "p"    # Lcom/itextpdf/layout/element/Paragraph;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "textAlign"    # Lcom/itextpdf/layout/property/TextAlignment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/element/Paragraph;",
            "FF",
            "Lcom/itextpdf/layout/property/TextAlignment;",
            ")TT;"
        }
    .end annotation

    .line 300
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v5

    sget-object v7, Lcom/itextpdf/layout/property/VerticalAlignment;->BOTTOM:Lcom/itextpdf/layout/property/VerticalAlignment;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v8}, Lcom/itextpdf/layout/RootElement;->showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFILcom/itextpdf/layout/property/TextAlignment;Lcom/itextpdf/layout/property/VerticalAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    return-object v0
.end method

.method public showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFLcom/itextpdf/layout/property/TextAlignment;Lcom/itextpdf/layout/property/VerticalAlignment;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 9
    .param p1, "p"    # Lcom/itextpdf/layout/element/Paragraph;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "textAlign"    # Lcom/itextpdf/layout/property/TextAlignment;
    .param p5, "vertAlign"    # Lcom/itextpdf/layout/property/VerticalAlignment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/element/Paragraph;",
            "FF",
            "Lcom/itextpdf/layout/property/TextAlignment;",
            "Lcom/itextpdf/layout/property/VerticalAlignment;",
            ")TT;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/layout/RootElement;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v5

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/itextpdf/layout/RootElement;->showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFILcom/itextpdf/layout/property/TextAlignment;Lcom/itextpdf/layout/property/VerticalAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    return-object v0
.end method

.method public showTextAligned(Ljava/lang/String;FFLcom/itextpdf/layout/property/TextAlignment;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "textAlign"    # Lcom/itextpdf/layout/property/TextAlignment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF",
            "Lcom/itextpdf/layout/property/TextAlignment;",
            ")TT;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/RootElement;->showTextAligned(Ljava/lang/String;FFLcom/itextpdf/layout/property/TextAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    return-object v0
.end method

.method public showTextAligned(Ljava/lang/String;FFLcom/itextpdf/layout/property/TextAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "textAlign"    # Lcom/itextpdf/layout/property/TextAlignment;
    .param p5, "angle"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF",
            "Lcom/itextpdf/layout/property/TextAlignment;",
            "F)TT;"
        }
    .end annotation

    .line 254
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    sget-object v5, Lcom/itextpdf/layout/property/VerticalAlignment;->BOTTOM:Lcom/itextpdf/layout/property/VerticalAlignment;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/RootElement;->showTextAligned(Ljava/lang/String;FFLcom/itextpdf/layout/property/TextAlignment;Lcom/itextpdf/layout/property/VerticalAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    return-object v0
.end method

.method public showTextAligned(Ljava/lang/String;FFLcom/itextpdf/layout/property/TextAlignment;Lcom/itextpdf/layout/property/VerticalAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "textAlign"    # Lcom/itextpdf/layout/property/TextAlignment;
    .param p5, "vertAlign"    # Lcom/itextpdf/layout/property/VerticalAlignment;
    .param p6, "angle"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF",
            "Lcom/itextpdf/layout/property/TextAlignment;",
            "Lcom/itextpdf/layout/property/VerticalAlignment;",
            "F)TT;"
        }
    .end annotation

    .line 269
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    new-instance v0, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/element/Paragraph;->setMultipliedLeading(F)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/element/Paragraph;->setMargin(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Paragraph;

    .line 270
    .local v0, "p":Lcom/itextpdf/layout/element/Paragraph;
    iget-object v1, p0, Lcom/itextpdf/layout/RootElement;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v5

    move-object v1, p0

    move-object v2, v0

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/itextpdf/layout/RootElement;->showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFILcom/itextpdf/layout/property/TextAlignment;Lcom/itextpdf/layout/property/VerticalAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    return-object v1
.end method

.method public showTextAlignedKerned(Ljava/lang/String;FFLcom/itextpdf/layout/property/TextAlignment;Lcom/itextpdf/layout/property/VerticalAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "textAlign"    # Lcom/itextpdf/layout/property/TextAlignment;
    .param p5, "vertAlign"    # Lcom/itextpdf/layout/property/VerticalAlignment;
    .param p6, "radAngle"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF",
            "Lcom/itextpdf/layout/property/TextAlignment;",
            "Lcom/itextpdf/layout/property/VerticalAlignment;",
            "F)TT;"
        }
    .end annotation

    .line 285
    .local p0, "this":Lcom/itextpdf/layout/RootElement;, "Lcom/itextpdf/layout/RootElement<TT;>;"
    new-instance v0, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/element/Paragraph;->setMultipliedLeading(F)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/element/Paragraph;->setMargin(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Paragraph;

    sget-object v1, Lcom/itextpdf/layout/property/FontKerning;->YES:Lcom/itextpdf/layout/property/FontKerning;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/element/Paragraph;->setFontKerning(Lcom/itextpdf/layout/property/FontKerning;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Paragraph;

    .line 286
    .local v0, "p":Lcom/itextpdf/layout/element/Paragraph;
    iget-object v1, p0, Lcom/itextpdf/layout/RootElement;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v5

    move-object v1, p0

    move-object v2, v0

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/itextpdf/layout/RootElement;->showTextAligned(Lcom/itextpdf/layout/element/Paragraph;FFILcom/itextpdf/layout/property/TextAlignment;Lcom/itextpdf/layout/property/VerticalAlignment;F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    return-object v1
.end method
