.class public Lcom/itextpdf/signatures/PdfSignatureAppearance;
.super Ljava/lang/Object;
.source "PdfSignatureAppearance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;
    }
.end annotation


# static fields
.field private static final MARGIN:F = 2.0f

.field private static final TOP_SECTION:F = 0.3f


# instance fields
.field private contact:Ljava/lang/String;

.field private document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private fieldName:Ljava/lang/String;

.field private image:Lcom/itextpdf/io/image/ImageData;

.field private imageScale:F

.field private layer2Font:Lcom/itextpdf/kernel/font/PdfFont;

.field private layer2FontColor:Lcom/itextpdf/kernel/colors/Color;

.field private layer2FontSize:F

.field private layer2Text:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private locationCaption:Ljava/lang/String;

.field private n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

.field private n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

.field private page:I

.field private pageRect:Lcom/itextpdf/kernel/geom/Rectangle;

.field private reason:Ljava/lang/String;

.field private reasonCaption:Ljava/lang/String;

.field private rect:Lcom/itextpdf/kernel/geom/Rectangle;

.field private renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

.field private reuseAppearance:Z

.field private signCertificate:Ljava/security/cert/Certificate;

.field private signDate:Ljava/util/Calendar;

.field private signatureCreator:Ljava/lang/String;

.field private signatureGraphic:Lcom/itextpdf/io/image/ImageData;

.field private topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;I)V
    .locals 3
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "pageRect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "pageNumber"    # I

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->page:I

    .line 124
    sget-object v0, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reason:Ljava/lang/String;

    .line 134
    const-string v1, "Reason: "

    iput-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reasonCaption:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->location:Ljava/lang/String;

    .line 144
    const-string v1, "Location: "

    iput-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->locationCaption:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureCreator:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->contact:Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2FontSize:F

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reuseAppearance:Z

    .line 220
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 221
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, p2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 222
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 223
    iput p3, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->page:I

    .line 224
    return-void
.end method

.method private addTextToCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "font"    # Lcom/itextpdf/kernel/font/PdfFont;
    .param p3, "dataRect"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 943
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 944
    .local v0, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    new-instance v1, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v1, p1}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/itextpdf/layout/element/Paragraph;->setFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/Paragraph;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itextpdf/layout/element/Paragraph;->setMargin(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/Paragraph;

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v1, v3}, Lcom/itextpdf/layout/element/Paragraph;->setMultipliedLeading(F)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object v1

    .line 945
    .local v1, "paragraph":Lcom/itextpdf/layout/element/Paragraph;
    new-instance v3, Lcom/itextpdf/layout/Canvas;

    invoke-direct {v3, v0, p3}, Lcom/itextpdf/layout/Canvas;-><init>(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 946
    .local v3, "layoutCanvas":Lcom/itextpdf/layout/Canvas;
    iget-object v4, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2FontColor:Lcom/itextpdf/kernel/colors/Color;

    invoke-virtual {v1, v4}, Lcom/itextpdf/layout/element/Paragraph;->setFontColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 947
    iget v4, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2FontSize:F

    cmpl-float v2, v4, v2

    if-nez v2, :cond_0

    .line 948
    invoke-virtual {v3}, Lcom/itextpdf/layout/Canvas;->getRenderer()Lcom/itextpdf/layout/renderer/RootRenderer;

    move-result-object v2

    invoke-direct {p0, v1, p3, v2}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->applyCopyFittingFontSize(Lcom/itextpdf/layout/element/Paragraph;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_0

    .line 950
    :cond_0
    invoke-virtual {v1, v4}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    .line 952
    :goto_0
    invoke-virtual {v3, v1}, Lcom/itextpdf/layout/Canvas;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 953
    return-void
.end method

.method private applyCopyFittingFontSize(Lcom/itextpdf/layout/element/Paragraph;Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 10
    .param p1, "paragraph"    # Lcom/itextpdf/layout/element/Paragraph;
    .param p2, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p3, "parentRenderer"    # Lcom/itextpdf/layout/renderer/IRenderer;

    .line 956
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Paragraph;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    .line 957
    .local v0, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    new-instance v1, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v2, Lcom/itextpdf/layout/layout/LayoutArea;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v1, v2}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    .line 958
    .local v1, "layoutContext":Lcom/itextpdf/layout/layout/LayoutContext;
    const v2, 0x3dcccccd    # 0.1f

    .local v2, "lFontSize":F
    const/high16 v4, 0x42c80000    # 100.0f

    .line 959
    .local v4, "rFontSize":F
    const/16 v5, 0xf

    .line 960
    .local v5, "numberOfIterations":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 961
    add-float v7, v2, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 962
    .local v7, "mFontSize":F
    invoke-virtual {p1, v7}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    .line 963
    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v8

    .line 964
    .local v8, "result":Lcom/itextpdf/layout/layout/LayoutResult;
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v9

    if-ne v9, v3, :cond_0

    .line 965
    move v2, v7

    goto :goto_1

    .line 967
    :cond_0
    move v4, v7

    .line 960
    .end local v7    # "mFontSize":F
    .end local v8    # "result":Lcom/itextpdf/layout/layout/LayoutResult;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 970
    .end local v6    # "i":I
    :cond_1
    invoke-virtual {p1, v2}, Lcom/itextpdf/layout/element/Paragraph;->setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;

    .line 971
    return-void
.end method

.method private createBlankN0()V
    .locals 3

    .line 934
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v1, v2, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 935
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 937
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 938
    .local v0, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    const-string v1, "% DSBlank\n"

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 939
    return-void
.end method

.method private static rotateRectangle(Lcom/itextpdf/kernel/geom/Rectangle;I)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 3
    .param p0, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p1, "angle"    # I

    .line 926
    div-int/lit8 v0, p1, 0x5a

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 927
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object v0

    .line 929
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method protected getAppearance()Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 642
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->isInvisible()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 643
    new-instance v1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v3, v2, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    invoke-direct {v1, v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 644
    .local v1, "appearance":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 645
    return-object v1

    .line 648
    .end local v1    # "appearance":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    :cond_0
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reuseAppearance:Z

    if-nez v1, :cond_1

    .line 649
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->createBlankN0()V

    .line 652
    :cond_1
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-nez v1, :cond_1a

    .line 653
    new-instance v1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v3, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v1, v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 654
    iget-object v3, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 656
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v3, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v4, v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 657
    .local v4, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget v3, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->page:I

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getRotation()I

    move-result v1

    .line 659
    .local v1, "rotation":I
    const/16 v3, 0x5a

    if-ne v1, v3, :cond_2

    .line 660
    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const-wide/16 v11, 0x0

    iget-object v3, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    float-to-double v13, v3

    const-wide/16 v15, 0x0

    invoke-virtual/range {v4 .. v16}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 661
    :cond_2
    const/16 v3, 0xb4

    if-ne v1, v3, :cond_3

    .line 662
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    iget-object v3, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    float-to-double v14, v3

    iget-object v3, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    float-to-double v2, v3

    move-object v5, v4

    move-wide/from16 v16, v2

    invoke-virtual/range {v5 .. v17}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 663
    :cond_3
    const/16 v2, 0x10e

    if-ne v1, v2, :cond_4

    .line 664
    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    float-to-double v2, v2

    move-object v5, v4

    move-wide/from16 v16, v2

    invoke-virtual/range {v5 .. v17}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 667
    :cond_4
    :goto_0
    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v3, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget v5, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->page:I

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->getRotation()I

    move-result v3

    invoke-static {v2, v3}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rotateRectangle(Lcom/itextpdf/kernel/geom/Rectangle;I)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 671
    .local v2, "rotatedRect":Lcom/itextpdf/kernel/geom/Rectangle;
    iget-object v3, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2Text:Ljava/lang/String;

    const-string v5, "E"

    const-string v6, "CN"

    if-nez v3, :cond_9

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    .local v3, "buf":Ljava/lang/StringBuilder;
    const-string v7, "Digitally signed by "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    const/4 v7, 0x0

    .line 675
    .local v7, "name":Ljava/lang/String;
    iget-object v8, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signCertificate:Ljava/security/cert/Certificate;

    check-cast v8, Ljava/security/cert/X509Certificate;

    invoke-static {v8}, Lcom/itextpdf/signatures/CertificateInfo;->getSubjectFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/signatures/CertificateInfo$X500Name;

    move-result-object v8

    .line 676
    .local v8, "x500name":Lcom/itextpdf/signatures/CertificateInfo$X500Name;
    if-eqz v8, :cond_5

    .line 677
    invoke-virtual {v8, v6}, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 678
    if-nez v7, :cond_5

    .line 679
    invoke-virtual {v8, v5}, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 681
    :cond_5
    if-nez v7, :cond_6

    .line 682
    const-string v7, ""

    .line 683
    :cond_6
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 684
    const-string v9, "Date: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signDate:Ljava/util/Calendar;

    invoke-static {v11}, Lcom/itextpdf/signatures/SignUtils;->dateToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    iget-object v9, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reason:Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 686
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reasonCaption:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reason:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :cond_7
    iget-object v9, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->location:Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 688
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->locationCaption:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->location:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 690
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "x500name":Lcom/itextpdf/signatures/CertificateInfo$X500Name;
    .local v3, "text":Ljava/lang/String;
    goto :goto_1

    .line 691
    .end local v3    # "text":Ljava/lang/String;
    :cond_9
    iget-object v3, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2Text:Ljava/lang/String;

    .line 694
    .restart local v3    # "text":Ljava/lang/String;
    :goto_1
    iget-object v7, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v7, :cond_c

    .line 695
    iget v7, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->imageScale:F

    const/4 v9, 0x0

    cmpl-float v10, v7, v9

    if-nez v10, :cond_a

    .line 696
    new-instance v7, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v9, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v10, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v7, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    move-object/from16 v18, v7

    .line 697
    .end local v4    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .local v18, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    iget-object v4, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v25}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImage(Lcom/itextpdf/io/image/ImageData;FFFFFF)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    goto :goto_2

    .line 699
    .end local v18    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .restart local v4    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :cond_a
    iget v9, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->imageScale:F

    .line 701
    .local v9, "usableScale":F
    const/4 v10, 0x0

    cmpg-float v7, v7, v10

    if-gez v7, :cond_b

    .line 702
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v7

    iget-object v10, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v10}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v10

    div-float/2addr v7, v10

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v10

    iget-object v11, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v11}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v11

    div-float/2addr v10, v11

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 705
    :cond_b
    iget-object v7, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v7}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v7

    mul-float/2addr v7, v9

    .line 706
    .local v7, "w":F
    iget-object v10, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v10}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v10

    mul-float v18, v10, v9

    .line 707
    .local v18, "h":F
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v10

    sub-float/2addr v10, v7

    div-float v19, v10, v8

    .line 708
    .local v19, "x":F
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v10

    sub-float v10, v10, v18

    div-float v20, v10, v8

    .line 710
    .local v20, "y":F
    new-instance v10, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v11, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v12, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v10, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 711
    .end local v4    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .local v10, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    iget-object v11, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v12, v7

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v17, v20

    invoke-virtual/range {v10 .. v17}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImage(Lcom/itextpdf/io/image/ImageData;FFFFFF)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-object/from16 v18, v10

    goto :goto_2

    .line 694
    .end local v7    # "w":F
    .end local v9    # "usableScale":F
    .end local v10    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v18    # "h":F
    .end local v19    # "x":F
    .end local v20    # "y":F
    .restart local v4    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :cond_c
    move-object/from16 v18, v4

    .line 717
    .end local v4    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .local v18, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :goto_2
    iget-object v4, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/kernel/font/PdfFont;

    if-nez v4, :cond_d

    .line 718
    invoke-static {}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v4

    .local v4, "font":Lcom/itextpdf/kernel/font/PdfFont;
    goto :goto_3

    .line 720
    .end local v4    # "font":Lcom/itextpdf/kernel/font/PdfFont;
    :cond_d
    iget-object v4, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 723
    .restart local v4    # "font":Lcom/itextpdf/kernel/font/PdfFont;
    :goto_3
    const/4 v7, 0x0

    .line 724
    .local v7, "dataRect":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v9, 0x0

    .line 726
    .local v9, "signatureRect":Lcom/itextpdf/kernel/geom/Rectangle;
    iget-object v10, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    sget-object v11, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->NAME_AND_DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    const/high16 v12, 0x40800000    # 4.0f

    if-eq v10, v11, :cond_11

    iget-object v10, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    sget-object v11, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->GRAPHIC_AND_DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    if-ne v10, v11, :cond_e

    iget-object v10, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    if-eqz v10, :cond_e

    goto :goto_4

    .line 752
    :cond_e
    iget-object v10, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    sget-object v11, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->GRAPHIC:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    if-ne v10, v11, :cond_10

    .line 753
    iget-object v10, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    if-eqz v10, :cond_f

    .line 757
    new-instance v10, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 760
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v11

    sub-float/2addr v11, v12

    .line 761
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v13

    sub-float/2addr v13, v12

    invoke-direct {v10, v8, v8, v11, v13}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v9, v10

    goto/16 :goto_5

    .line 754
    :cond_f
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "A signature image must be present when rendering mode is graphic. Use setSignatureGraphic()"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 763
    :cond_10
    new-instance v10, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 766
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v11

    sub-float/2addr v11, v12

    .line 767
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v13

    const v14, 0x3f333333    # 0.7f

    mul-float/2addr v13, v14

    sub-float/2addr v13, v12

    invoke-direct {v10, v8, v8, v11, v13}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v7, v10

    goto :goto_5

    .line 728
    :cond_11
    :goto_4
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v10

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_12

    .line 729
    new-instance v10, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 731
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v11

    div-float/2addr v11, v8

    .line 732
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v13

    sub-float/2addr v13, v12

    .line 733
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v14

    div-float/2addr v14, v8

    invoke-direct {v10, v8, v11, v13, v14}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v9, v10

    .line 734
    new-instance v10, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 737
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v11

    sub-float/2addr v11, v12

    .line 738
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v13

    div-float/2addr v13, v8

    sub-float/2addr v13, v12

    invoke-direct {v10, v8, v8, v11, v13}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v7, v10

    goto :goto_5

    .line 741
    :cond_12
    new-instance v10, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 744
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v11

    div-float/2addr v11, v8

    sub-float/2addr v11, v12

    .line 745
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v13

    sub-float/2addr v13, v12

    invoke-direct {v10, v8, v8, v11, v13}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v9, v10

    .line 746
    new-instance v10, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 747
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v11

    div-float/2addr v11, v8

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v11, v13

    .line 749
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v13

    div-float/2addr v13, v8

    sub-float/2addr v13, v8

    .line 750
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v14

    sub-float/2addr v14, v12

    invoke-direct {v10, v11, v8, v13, v14}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    move-object v7, v10

    .line 770
    :goto_5
    sget-object v10, Lcom/itextpdf/signatures/PdfSignatureAppearance$1;->$SwitchMap$com$itextpdf$signatures$PdfSignatureAppearance$RenderingMode:[I

    iget-object v11, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    invoke-virtual {v11}, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    move/from16 v16, v1

    .end local v1    # "rotation":I
    .local v16, "rotation":I
    goto/16 :goto_6

    .line 815
    .end local v16    # "rotation":I
    .restart local v1    # "rotation":I
    :pswitch_0
    iget-object v5, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v5}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v5

    .line 817
    .local v5, "imgWidth":F
    const/4 v6, 0x0

    cmpl-float v10, v5, v6

    if-nez v10, :cond_13

    .line 818
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    .line 821
    :cond_13
    iget-object v10, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v10}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v10

    .line 823
    .local v10, "imgHeight":F
    cmpl-float v11, v10, v6

    if-nez v11, :cond_14

    .line 824
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v10

    .line 827
    :cond_14
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v6

    iget-object v11, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v11}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v11

    div-float/2addr v6, v11

    .line 828
    .local v6, "multiplierH":F
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v11

    iget-object v12, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v12}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v12

    div-float/2addr v11, v12

    .line 829
    .local v11, "multiplierW":F
    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 830
    .local v12, "multiplier":F
    mul-float/2addr v5, v12

    .line 831
    mul-float/2addr v10, v12

    .line 833
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v13

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v14

    sub-float/2addr v14, v5

    div-float/2addr v14, v8

    add-float/2addr v13, v14

    .line 834
    .local v13, "x":F
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v14

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v15

    sub-float/2addr v15, v10

    div-float/2addr v15, v8

    add-float/2addr v14, v15

    .line 836
    .local v14, "y":F
    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v15, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move/from16 v16, v1

    .end local v1    # "rotation":I
    .restart local v16    # "rotation":I
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v8, v15, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    move-object/from16 v19, v8

    .line 837
    .end local v18    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .local v19, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v1

    move/from16 v21, v5

    move/from16 v24, v10

    move/from16 v25, v13

    move/from16 v26, v14

    invoke-virtual/range {v19 .. v26}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImage(Lcom/itextpdf/io/image/ImageData;FFFFFF)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-object/from16 v18, v19

    goto/16 :goto_6

    .line 785
    .end local v5    # "imgWidth":F
    .end local v6    # "multiplierH":F
    .end local v10    # "imgHeight":F
    .end local v11    # "multiplierW":F
    .end local v12    # "multiplier":F
    .end local v13    # "x":F
    .end local v14    # "y":F
    .end local v16    # "rotation":I
    .end local v19    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .restart local v1    # "rotation":I
    .restart local v18    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :pswitch_1
    move/from16 v16, v1

    .end local v1    # "rotation":I
    .restart local v16    # "rotation":I
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    if-eqz v1, :cond_17

    .line 789
    invoke-virtual {v1}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v1

    .line 791
    .local v1, "imgWidth":F
    const/4 v5, 0x0

    cmpl-float v6, v1, v5

    if-nez v6, :cond_15

    .line 792
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    .line 795
    :cond_15
    iget-object v6, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v6}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v6

    .line 797
    .local v6, "imgHeight":F
    cmpl-float v10, v6, v5

    if-nez v10, :cond_16

    .line 798
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v6

    .line 801
    :cond_16
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    iget-object v10, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v10}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v10

    div-float/2addr v5, v10

    .line 802
    .local v5, "multiplierH":F
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v10

    iget-object v11, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    invoke-virtual {v11}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v11

    div-float/2addr v10, v11

    .line 803
    .local v10, "multiplierW":F
    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 804
    .local v11, "multiplier":F
    mul-float/2addr v1, v11

    .line 805
    mul-float/2addr v6, v11

    .line 807
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v12

    sub-float/2addr v12, v1

    .line 808
    .local v12, "x":F
    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v13

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v14

    sub-float/2addr v14, v6

    div-float/2addr v14, v8

    add-float/2addr v13, v14

    .line 810
    .local v13, "y":F
    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v14, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v15, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v8, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    move-object/from16 v19, v8

    .line 811
    .end local v18    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .restart local v19    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    iget-object v8, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v8

    move/from16 v21, v1

    move/from16 v24, v6

    move/from16 v25, v12

    move/from16 v26, v13

    invoke-virtual/range {v19 .. v26}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImage(Lcom/itextpdf/io/image/ImageData;FFFFFF)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 812
    move-object/from16 v18, v19

    goto :goto_6

    .line 786
    .end local v1    # "imgWidth":F
    .end local v5    # "multiplierH":F
    .end local v6    # "imgHeight":F
    .end local v10    # "multiplierW":F
    .end local v11    # "multiplier":F
    .end local v12    # "x":F
    .end local v13    # "y":F
    .end local v19    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .restart local v18    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v5, "A signature image must be present when rendering mode is graphic and description. Use setSignatureGraphic()"

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 772
    .end local v16    # "rotation":I
    .local v1, "rotation":I
    :pswitch_2
    move/from16 v16, v1

    .end local v1    # "rotation":I
    .restart local v16    # "rotation":I
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signCertificate:Ljava/security/cert/Certificate;

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lcom/itextpdf/signatures/CertificateInfo;->getSubjectFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/signatures/CertificateInfo$X500Name;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "signedBy":Ljava/lang/String;
    if-nez v1, :cond_18

    .line 775
    iget-object v6, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signCertificate:Ljava/security/cert/Certificate;

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-static {v6}, Lcom/itextpdf/signatures/CertificateInfo;->getSubjectFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/signatures/CertificateInfo$X500Name;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/itextpdf/signatures/CertificateInfo$X500Name;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 778
    :cond_18
    if-nez v1, :cond_19

    .line 779
    const-string v1, ""

    .line 782
    :cond_19
    invoke-direct {v0, v1, v4, v9}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->addTextToCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 783
    nop

    .line 841
    .end local v1    # "signedBy":Ljava/lang/String;
    :goto_6
    iget-object v1, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    sget-object v5, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->GRAPHIC:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    if-eq v1, v5, :cond_1a

    .line 842
    invoke-direct {v0, v3, v4, v7}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->addTextToCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFont;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 846
    .end local v2    # "rotatedRect":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "font":Lcom/itextpdf/kernel/font/PdfFont;
    .end local v7    # "dataRect":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v9    # "signatureRect":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v16    # "rotation":I
    .end local v18    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :cond_1a
    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 848
    .local v1, "rotated":Lcom/itextpdf/kernel/geom/Rectangle;
    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-nez v2, :cond_1e

    .line 849
    new-instance v2, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 850
    iget-object v3, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 852
    iget-boolean v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reuseAppearance:Z

    const-string v3, "n0"

    if-eqz v2, :cond_1c

    .line 853
    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v2

    .line 854
    .local v2, "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    iget-object v4, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->fieldName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v4

    .line 855
    .local v4, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    invoke-virtual {v4}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getAppearanceDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v5

    .line 856
    .local v5, "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    new-instance v7, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v7, v5}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 858
    .local v7, "xobj":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    if-eqz v5, :cond_1b

    .line 859
    iget-object v6, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v6

    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v8, v3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfResources;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    .line 860
    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v6, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v9, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v8, v6, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 861
    .local v8, "canvas1":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v7

    invoke-virtual/range {v8 .. v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 862
    .end local v8    # "canvas1":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    goto :goto_7

    .line 863
    :cond_1b
    iput-boolean v6, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reuseAppearance:Z

    .line 865
    iget-object v6, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-nez v6, :cond_1c

    .line 866
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->createBlankN0()V

    .line 871
    .end local v2    # "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    .end local v4    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    .end local v5    # "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v7    # "xobj":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    :cond_1c
    :goto_7
    iget-boolean v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reuseAppearance:Z

    if-nez v2, :cond_1d

    .line 872
    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v2

    iget-object v4, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v5, v3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfResources;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    .line 873
    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v3, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v6, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 874
    .local v6, "canvas1":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    iget-object v7, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 877
    .end local v6    # "canvas1":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :cond_1d
    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v2

    iget-object v3, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v5, "n2"

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfResources;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    .line 878
    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v2, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v3, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v6, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 879
    .restart local v6    # "canvas1":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    iget-object v7, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 882
    .end local v6    # "canvas1":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :cond_1e
    new-instance v2, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 883
    .local v2, "napp":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    iget-object v3, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 884
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v3

    iget-object v4, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v6, "FRM"

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfResources;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    .line 886
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v4, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v3, v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 887
    .local v3, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    iget-object v4, v0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->topLayer:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 889
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signCertificate:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/itextpdf/io/image/ImageData;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    return-object v0
.end method

.method public getImageScale()F
    .locals 1

    .line 520
    iget v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->imageScale:F

    return v0
.end method

.method public getLayer0()Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 287
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n0:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    return-object v0
.end method

.method public getLayer2()Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 301
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->n2:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    return-object v0
.end method

.method public getLayer2Font()Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/kernel/font/PdfFont;

    return-object v0
.end method

.method public getLayer2FontColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2FontColor:Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getLayer2FontSize()F
    .locals 1

    .line 599
    iget v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2FontSize:F

    return v0
.end method

.method public getLayer2Text()Ljava/lang/String;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2Text:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNumber()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->page:I

    return v0
.end method

.method public getPageRect()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderingMode()Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    return-object v0
.end method

.method protected getSignDate()Ljava/util/Calendar;
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getSignatureCreator()Ljava/lang/String;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureCreator:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureGraphic()Lcom/itextpdf/io/image/ImageData;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    return-object v0
.end method

.method public isInvisible()Z
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setCertificate(Ljava/security/cert/Certificate;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "signCertificate"    # Ljava/security/cert/Certificate;

    .line 445
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signCertificate:Ljava/security/cert/Certificate;

    .line 446
    return-object p0
.end method

.method public setContact(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "contact"    # Ljava/lang/String;

    .line 432
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->contact:Ljava/lang/String;

    .line 433
    return-object p0
.end method

.method protected setFieldName(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 921
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->fieldName:Ljava/lang/String;

    .line 922
    return-object p0
.end method

.method public setImage(Lcom/itextpdf/io/image/ImageData;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "image"    # Lcom/itextpdf/io/image/ImageData;

    .line 510
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->image:Lcom/itextpdf/io/image/ImageData;

    .line 511
    return-object p0
.end method

.method public setImageScale(F)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "imageScale"    # F

    .line 534
    iput p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->imageScale:F

    .line 535
    return-object p0
.end method

.method public setLayer2Font(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "layer2Font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 577
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 578
    return-object p0
.end method

.method public setLayer2FontColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;

    .line 610
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2FontColor:Lcom/itextpdf/kernel/colors/Color;

    .line 611
    return-object p0
.end method

.method public setLayer2FontSize(F)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "fontSize"    # F

    .line 589
    iput p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2FontSize:F

    .line 590
    return-object p0
.end method

.method public setLayer2Text(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 547
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->layer2Text:Ljava/lang/String;

    .line 548
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .line 378
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->location:Ljava/lang/String;

    .line 379
    return-object p0
.end method

.method public setLocationCaption(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "locationCaption"    # Ljava/lang/String;

    .line 390
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->locationCaption:Ljava/lang/String;

    .line 391
    return-object p0
.end method

.method public setPageNumber(I)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 1
    .param p1, "pageNumber"    # I

    .line 248
    iput p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->page:I

    .line 249
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p0, v0}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->setPageRect(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/signatures/PdfSignatureAppearance;

    .line 250
    return-object p0
.end method

.method public setPageRect(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 3
    .param p1, "pageRect"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 274
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 275
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->rect:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 276
    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 345
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reason:Ljava/lang/String;

    .line 346
    return-object p0
.end method

.method public setReasonCaption(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "reasonCaption"    # Ljava/lang/String;

    .line 357
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reasonCaption:Ljava/lang/String;

    .line 358
    return-object p0
.end method

.method public setRenderingMode(Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "renderingMode"    # Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    .line 324
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    .line 325
    return-object p0
.end method

.method public setReuseAppearance(Z)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "reuseAppearance"    # Z

    .line 487
    iput-boolean p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->reuseAppearance:Z

    .line 488
    return-object p0
.end method

.method protected setSignDate(Ljava/util/Calendar;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "signDate"    # Ljava/util/Calendar;

    .line 909
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signDate:Ljava/util/Calendar;

    .line 910
    return-object p0
.end method

.method public setSignatureCreator(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "signatureCreator"    # Ljava/lang/String;

    .line 411
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureCreator:Ljava/lang/String;

    .line 412
    return-object p0
.end method

.method public setSignatureGraphic(Lcom/itextpdf/io/image/ImageData;)Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 0
    .param p1, "signatureGraphic"    # Lcom/itextpdf/io/image/ImageData;

    .line 475
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/io/image/ImageData;

    .line 476
    return-object p0
.end method
