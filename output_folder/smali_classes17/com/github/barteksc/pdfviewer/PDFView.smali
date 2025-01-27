.class public Lcom/github/barteksc/pdfviewer/PDFView;
.super Landroid/widget/RelativeLayout;
.source "PDFView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/PDFView$Configurator;,
        Lcom/github/barteksc/pdfviewer/PDFView$State;,
        Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_SCALE:F = 3.0f

.field public static final DEFAULT_MID_SCALE:F = 1.75f

.field public static final DEFAULT_MIN_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

.field private annotationRendering:Z

.field private antialiasFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private autoSpacing:Z

.field private bestQuality:Z

.field cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

.field callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

.field private currentPage:I

.field private currentXOffset:F

.field private currentYOffset:F

.field private debugPaint:Landroid/graphics/Paint;

.field private decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

.field private defaultPage:I

.field private doubletapEnabled:Z

.field private dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

.field private enableAntialiasing:Z

.field private enableSwipe:Z

.field private fitEachPage:Z

.field private hasSize:Z

.field private isScrollHandleInit:Z

.field private maxZoom:F

.field private midZoom:F

.field private minZoom:F

.field private nightMode:Z

.field private onDrawPagesNums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

.field private pageFling:Z

.field private pageSnap:Z

.field private pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

.field private paint:Landroid/graphics/Paint;

.field pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

.field private pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

.field private recycled:Z

.field private renderDuringScale:Z

.field renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

.field private renderingHandlerThread:Landroid/os/HandlerThread;

.field private scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

.field private scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

.field private spacingPx:I

.field private state:Lcom/github/barteksc/pdfviewer/PDFView$State;

.field private swipeVertical:Z

.field private waitingDocumentConfigurator:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

.field private zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    const-class v0, Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/barteksc/pdfviewer/PDFView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .line 246
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    .line 103
    const/high16 v1, 0x3fe00000    # 1.75f

    iput v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->midZoom:F

    .line 104
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->maxZoom:F

    .line 115
    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    .line 136
    const/4 v1, 0x0

    iput v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 143
    iput v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 146
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    .line 152
    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 164
    new-instance v1, Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-direct {v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;-><init>()V

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    .line 173
    sget-object v1, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->WIDTH:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    .line 175
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->fitEachPage:Z

    .line 177
    iput v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->defaultPage:I

    .line 180
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    .line 182
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableSwipe:Z

    .line 184
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->doubletapEnabled:Z

    .line 186
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->nightMode:Z

    .line 188
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageSnap:Z

    .line 195
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    .line 205
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->bestQuality:Z

    .line 211
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->annotationRendering:Z

    .line 219
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderDuringScale:Z

    .line 222
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    .line 223
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->antialiasFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 227
    iput v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    .line 230
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->autoSpacing:Z

    .line 233
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageFling:Z

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    .line 239
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->hasSize:Z

    .line 248
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "PDF renderer"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    .line 250
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    return-void

    .line 254
    :cond_0
    new-instance v0, Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-direct {v0}, Lcom/github/barteksc/pdfviewer/CacheManager;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    .line 255
    new-instance v0, Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-direct {v0, p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    .line 256
    new-instance v2, Lcom/github/barteksc/pdfviewer/DragPinchManager;

    invoke-direct {v2, p0, v0}, Lcom/github/barteksc/pdfviewer/DragPinchManager;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    iput-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    .line 257
    new-instance v0, Lcom/github/barteksc/pdfviewer/PagesLoader;

    invoke-direct {v0, p0}, Lcom/github/barteksc/pdfviewer/PagesLoader;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

    .line 259
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->paint:Landroid/graphics/Paint;

    .line 260
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->debugPaint:Landroid/graphics/Paint;

    .line 261
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 263
    new-instance v0, Lcom/shockwave/pdfium/PdfiumCore;

    invoke-direct {v0, p1}, Lcom/shockwave/pdfium/PdfiumCore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    .line 264
    invoke-virtual {p0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setWillNotDraw(Z)V

    .line 265
    return-void
.end method

.method static synthetic access$100(Lcom/github/barteksc/pdfviewer/PDFView;)Lcom/github/barteksc/pdfviewer/DragPinchManager;
    .locals 1
    .param p0, "x0"    # Lcom/github/barteksc/pdfviewer/PDFView;

    .line 94
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/github/barteksc/pdfviewer/PDFView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/github/barteksc/pdfviewer/PDFView;
    .param p1, "x1"    # Z

    .line 94
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setFitEachPage(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/github/barteksc/pdfviewer/PDFView;
    .param p1, "x1"    # Lcom/github/barteksc/pdfviewer/source/DocumentSource;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [I

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/github/barteksc/pdfviewer/PDFView;->load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/barteksc/pdfviewer/PDFView;
    .param p1, "x1"    # Lcom/github/barteksc/pdfviewer/source/DocumentSource;
    .param p2, "x2"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/github/barteksc/pdfviewer/PDFView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/github/barteksc/pdfviewer/PDFView;

    .line 94
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->hasSize:Z

    return v0
.end method

.method static synthetic access$302(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p0, "x0"    # Lcom/github/barteksc/pdfviewer/PDFView;
    .param p1, "x1"    # Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    .line 94
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->waitingDocumentConfigurator:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/github/barteksc/pdfviewer/PDFView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/github/barteksc/pdfviewer/PDFView;
    .param p1, "x1"    # I

    .line 94
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setDefaultPage(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/github/barteksc/pdfviewer/PDFView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/github/barteksc/pdfviewer/PDFView;
    .param p1, "x1"    # Z

    .line 94
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setSwipeVertical(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/barteksc/pdfviewer/PDFView;
    .param p1, "x1"    # Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    .line 94
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setScrollHandle(Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/github/barteksc/pdfviewer/PDFView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/github/barteksc/pdfviewer/PDFView;
    .param p1, "x1"    # I

    .line 94
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setSpacing(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/github/barteksc/pdfviewer/PDFView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/github/barteksc/pdfviewer/PDFView;
    .param p1, "x1"    # Z

    .line 94
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setAutoSpacing(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/util/FitPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/barteksc/pdfviewer/PDFView;
    .param p1, "x1"    # Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    .line 94
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setPageFitPolicy(Lcom/github/barteksc/pdfviewer/util/FitPolicy;)V

    return-void
.end method

.method private drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "part"    # Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 673
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 674
    .local v2, "pageRelativeBounds":Landroid/graphics/RectF;
    invoke-virtual/range {p2 .. p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 676
    .local v3, "renderedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 677
    return-void

    .line 681
    :cond_0
    const/4 v4, 0x0

    .line 682
    .local v4, "localTranslationX":F
    const/4 v5, 0x0

    .line 683
    .local v5, "localTranslationY":F
    iget-object v6, v0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual/range {p2 .. p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageSize(I)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v6

    .line 685
    .local v6, "size":Lcom/shockwave/pdfium/util/SizeF;
    iget-boolean v7, v0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v7, :cond_1

    .line 686
    iget-object v7, v0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual/range {p2 .. p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPage()I

    move-result v9

    iget v10, v0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v7, v9, v10}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v5

    .line 687
    iget-object v7, v0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v7}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageWidth()F

    move-result v7

    .line 688
    .local v7, "maxWidth":F
    invoke-virtual {v6}, Lcom/shockwave/pdfium/util/SizeF;->getWidth()F

    move-result v9

    sub-float v9, v7, v9

    invoke-virtual {v0, v9}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v9

    div-float/2addr v9, v8

    .line 689
    .end local v4    # "localTranslationX":F
    .end local v7    # "maxWidth":F
    .local v9, "localTranslationX":F
    goto :goto_0

    .line 690
    .end local v9    # "localTranslationX":F
    .restart local v4    # "localTranslationX":F
    :cond_1
    iget-object v7, v0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual/range {p2 .. p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPage()I

    move-result v9

    iget v10, v0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v7, v9, v10}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v9

    .line 691
    .end local v4    # "localTranslationX":F
    .restart local v9    # "localTranslationX":F
    iget-object v4, v0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageHeight()F

    move-result v4

    .line 692
    .local v4, "maxHeight":F
    invoke-virtual {v6}, Lcom/shockwave/pdfium/util/SizeF;->getHeight()F

    move-result v7

    sub-float v7, v4, v7

    invoke-virtual {v0, v7}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v7

    div-float v5, v7, v8

    .line 694
    .end local v4    # "maxHeight":F
    :goto_0
    invoke-virtual {v1, v9, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 696
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 697
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 699
    .local v4, "srcRect":Landroid/graphics/Rect;
    iget v7, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6}, Lcom/shockwave/pdfium/util/SizeF;->getWidth()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual {v0, v7}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v7

    .line 700
    .local v7, "offsetX":F
    iget v8, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Lcom/shockwave/pdfium/util/SizeF;->getHeight()F

    move-result v10

    mul-float/2addr v8, v10

    invoke-virtual {v0, v8}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v8

    .line 701
    .local v8, "offsetY":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-virtual {v6}, Lcom/shockwave/pdfium/util/SizeF;->getWidth()F

    move-result v11

    mul-float/2addr v10, v11

    invoke-virtual {v0, v10}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v10

    .line 702
    .local v10, "width":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-virtual {v6}, Lcom/shockwave/pdfium/util/SizeF;->getHeight()F

    move-result v12

    mul-float/2addr v11, v12

    invoke-virtual {v0, v11}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v11

    .line 707
    .local v11, "height":F
    new-instance v12, Landroid/graphics/RectF;

    float-to-int v13, v7

    int-to-float v13, v13

    float-to-int v14, v8

    int-to-float v14, v14

    add-float v15, v7, v10

    float-to-int v15, v15

    int-to-float v15, v15

    move-object/from16 v16, v2

    .end local v2    # "pageRelativeBounds":Landroid/graphics/RectF;
    .local v16, "pageRelativeBounds":Landroid/graphics/RectF;
    add-float v2, v8, v11

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-direct {v12, v13, v14, v15, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v2, v12

    .line 712
    .local v2, "dstRect":Landroid/graphics/RectF;
    iget v12, v0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    add-float/2addr v12, v9

    .line 713
    .local v12, "translationX":F
    iget v13, v0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    add-float/2addr v13, v5

    .line 714
    .local v13, "translationY":F
    iget v14, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v14, v12

    invoke-virtual/range {p0 .. p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v15

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-gez v14, :cond_5

    iget v14, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v14, v12

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-lez v14, :cond_5

    iget v14, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v14, v13

    .line 715
    invoke-virtual/range {p0 .. p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-gez v14, :cond_5

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v14, v13

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_2

    goto :goto_2

    .line 720
    :cond_2
    iget-object v14, v0, Lcom/github/barteksc/pdfviewer/PDFView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 722
    sget-boolean v14, Lcom/github/barteksc/pdfviewer/util/Constants;->DEBUG_MODE:Z

    if-eqz v14, :cond_4

    .line 723
    iget-object v14, v0, Lcom/github/barteksc/pdfviewer/PDFView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPage()I

    move-result v15

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_3

    const/high16 v15, -0x10000

    goto :goto_1

    :cond_3
    const v15, -0xffff01

    :goto_1
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 724
    iget-object v14, v0, Lcom/github/barteksc/pdfviewer/PDFView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 728
    :cond_4
    neg-float v14, v9

    neg-float v15, v5

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 730
    return-void

    .line 716
    :cond_5
    :goto_2
    neg-float v14, v9

    neg-float v15, v5

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 717
    return-void
.end method

.method private drawWithListener(Landroid/graphics/Canvas;ILcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "page"    # I
    .param p3, "listener"    # Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    .line 649
    if-eqz p3, :cond_1

    .line 651
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_0

    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, "translateX":F
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v1, p2, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v1

    .local v1, "translateY":F
    goto :goto_0

    .line 655
    .end local v0    # "translateX":F
    .end local v1    # "translateY":F
    :cond_0
    const/4 v1, 0x0

    .line 656
    .restart local v1    # "translateY":F
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, p2, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v0

    .line 659
    .restart local v0    # "translateX":F
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 660
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v2, p2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageSize(I)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v2

    .line 661
    .local v2, "size":Lcom/shockwave/pdfium/util/SizeF;
    nop

    .line 662
    invoke-virtual {v2}, Lcom/shockwave/pdfium/util/SizeF;->getWidth()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v3

    .line 663
    invoke-virtual {v2}, Lcom/shockwave/pdfium/util/SizeF;->getHeight()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v4

    .line 661
    invoke-interface {p3, p1, v3, v4, p2}, Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;->onLayerDrawn(Landroid/graphics/Canvas;FFI)V

    .line 666
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 668
    .end local v0    # "translateX":F
    .end local v1    # "translateY":F
    .end local v2    # "size":Lcom/shockwave/pdfium/util/SizeF;
    :cond_1
    return-void
.end method

.method private load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;)V
    .locals 1
    .param p1, "docSource"    # Lcom/github/barteksc/pdfviewer/source/DocumentSource;
    .param p2, "password"    # Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;[I)V

    .line 269
    return-void
.end method

.method private load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;[I)V
    .locals 8
    .param p1, "docSource"    # Lcom/github/barteksc/pdfviewer/source/DocumentSource;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userPages"    # [I

    .line 273
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    .line 279
    new-instance v7, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;-><init>(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;[ILcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;)V

    iput-object v7, p0, Lcom/github/barteksc/pdfviewer/PDFView;->decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    .line 280
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v7, v1, v0}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 281
    return-void

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t call load on a PDF View without recycling it first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setAutoSpacing(Z)V
    .locals 0
    .param p1, "autoSpacing"    # Z

    .line 1235
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->autoSpacing:Z

    .line 1236
    return-void
.end method

.method private setDefaultPage(I)V
    .locals 0
    .param p1, "defaultPage"    # I

    .line 1117
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->defaultPage:I

    .line 1118
    return-void
.end method

.method private setFitEachPage(Z)V
    .locals 0
    .param p1, "fitEachPage"    # Z

    .line 1247
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->fitEachPage:Z

    .line 1248
    return-void
.end method

.method private setPageFitPolicy(Lcom/github/barteksc/pdfviewer/util/FitPolicy;)V
    .locals 0
    .param p1, "pageFitPolicy"    # Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    .line 1239
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    .line 1240
    return-void
.end method

.method private setScrollHandle(Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V
    .locals 0
    .param p1, "scrollHandle"    # Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    .line 1137
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    .line 1138
    return-void
.end method

.method private setSpacing(I)V
    .locals 1
    .param p1, "spacingDp"    # I

    .line 1231
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/barteksc/pdfviewer/util/Util;->getDP(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    .line 1232
    return-void
.end method

.method private setSwipeVertical(Z)V
    .locals 0
    .param p1, "swipeVertical"    # Z

    .line 1191
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    .line 1192
    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 4
    .param p1, "direction"    # I

    .line 520
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 521
    return v1

    .line 524
    :cond_0
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 525
    if-gez p1, :cond_1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 526
    return v1

    .line 527
    :cond_1
    if-lez p1, :cond_4

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    .line 528
    return v1

    .line 531
    :cond_2
    if-gez p1, :cond_3

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 532
    return v1

    .line 533
    :cond_3
    if-lez p1, :cond_4

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v0

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    .line 534
    return v1

    .line 537
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically(I)Z
    .locals 4
    .param p1, "direction"    # I

    .line 542
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 543
    return v1

    .line 546
    :cond_0
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 547
    if-gez p1, :cond_1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 548
    return v1

    .line 549
    :cond_1
    if-lez p1, :cond_4

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v0

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    .line 550
    return v1

    .line 553
    :cond_2
    if-gez p1, :cond_3

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 554
    return v1

    .line 555
    :cond_3
    if-lez p1, :cond_4

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    .line 556
    return v1

    .line 559
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public computeScroll()V
    .locals 1

    .line 458
    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    .line 459
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->computeFling()V

    .line 463
    return-void
.end method

.method public doRenderDuringScale()Z
    .locals 1

    .line 1263
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderDuringScale:Z

    return v0
.end method

.method public documentFitsView()Z
    .locals 4

    .line 1064
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v0

    .line 1065
    .local v0, "len":F
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1066
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 1068
    :cond_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method public enableAnnotationRendering(Z)V
    .locals 0
    .param p1, "annotationRendering"    # Z

    .line 1195
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->annotationRendering:Z

    .line 1196
    return-void
.end method

.method public enableAntialiasing(Z)V
    .locals 0
    .param p1, "enableAntialiasing"    # Z

    .line 1211
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    .line 1212
    return-void
.end method

.method enableDoubletap(Z)V
    .locals 0
    .param p1, "enableDoubletap"    # Z

    .line 401
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->doubletapEnabled:Z

    .line 402
    return-void
.end method

.method public enableRenderDuringScale(Z)V
    .locals 0
    .param p1, "renderDuringScale"    # Z

    .line 1203
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderDuringScale:Z

    .line 1204
    return-void
.end method

.method findFocusPage(FF)I
    .locals 6
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F

    .line 989
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, p1

    .line 990
    .local v1, "currOffset":F
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    :goto_1
    int-to-float v0, v0

    .line 992
    .local v0, "length":F
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 993
    const/4 v2, 0x0

    return v2

    .line 994
    :cond_2
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v2, v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v2

    neg-float v2, v2

    add-float/2addr v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    .line 995
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 998
    :cond_3
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    sub-float v2, v1, v2

    .line 999
    .local v2, "center":F
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    neg-float v4, v2

    iget v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v3, v4, v5}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageAtOffset(FF)I

    move-result v3

    return v3
.end method

.method findSnapEdge(I)Lcom/github/barteksc/pdfviewer/util/SnapEdge;
    .locals 6
    .param p1, "page"    # I

    .line 952
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageSnap:Z

    if-eqz v0, :cond_6

    if-gez p1, :cond_0

    goto :goto_2

    .line 955
    :cond_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 956
    .local v0, "currentOffset":F
    :goto_0
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v1, p1, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v1

    neg-float v1, v1

    .line 957
    .local v1, "offset":F
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    .line 958
    .local v2, "length":I
    :goto_1
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v3, p1, v4}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageLength(IF)F

    move-result v3

    .line 960
    .local v3, "pageLength":F
    int-to-float v4, v2

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_3

    .line 961
    sget-object v4, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->CENTER:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    return-object v4

    .line 962
    :cond_3
    cmpl-float v4, v0, v1

    if-ltz v4, :cond_4

    .line 963
    sget-object v4, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->START:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    return-object v4

    .line 964
    :cond_4
    sub-float v4, v1, v3

    int-to-float v5, v2

    sub-float v5, v0, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 965
    sget-object v4, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->END:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    return-object v4

    .line 967
    :cond_5
    sget-object v4, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->NONE:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    return-object v4

    .line 953
    .end local v0    # "currentOffset":F
    .end local v1    # "offset":F
    .end local v2    # "length":I
    .end local v3    # "pageLength":F
    :cond_6
    :goto_2
    sget-object v0, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->NONE:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    return-object v0
.end method

.method public fitToWidth(I)V
    .locals 2
    .param p1, "page"    # I

    .line 1073
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v0, v1, :cond_0

    .line 1074
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView;->TAG:Ljava/lang/String;

    const-string v1, "Cannot fit, document not rendered yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    return-void

    .line 1077
    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v1, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageSize(I)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shockwave/pdfium/util/SizeF;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomTo(F)V

    .line 1078
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->jumpTo(I)V

    .line 1079
    return-void
.end method

.method public fromAsset(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 3
    .param p1, "assetName"    # Ljava/lang/String;

    .line 1292
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/AssetSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/AssetSource;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromBytes([B)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 3
    .param p1, "bytes"    # [B

    .line 1307
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/ByteArraySource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/ByteArraySource;-><init>([B)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromFile(Ljava/io/File;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .line 1297
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/FileSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/FileSource;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromSource(Lcom/github/barteksc/pdfviewer/source/DocumentSource;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 2
    .param p1, "docSource"    # Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    .line 1317
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromStream(Ljava/io/InputStream;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 1312
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/InputStreamSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/InputStreamSource;-><init>(Ljava/io/InputStream;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromUri(Landroid/net/Uri;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1302
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/UriSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/UriSource;-><init>(Landroid/net/Uri;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .line 1089
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    return v0
.end method

.method public getCurrentXOffset()F
    .locals 1

    .line 1093
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    return v0
.end method

.method public getCurrentYOffset()F
    .locals 1

    .line 1097
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    return v0
.end method

.method public getDocumentMeta()Lcom/shockwave/pdfium/PdfDocument$Meta;
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-nez v0, :cond_0

    .line 1269
    const/4 v0, 0x0

    return-object v0

    .line 1271
    :cond_0
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMetaData()Lcom/shockwave/pdfium/PdfDocument$Meta;

    move-result-object v0

    return-object v0
.end method

.method public getLinks(I)Ljava/util/List;
    .locals 1
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/PdfDocument$Link;",
            ">;"
        }
    .end annotation

    .line 1284
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-nez v0, :cond_0

    .line 1285
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1287
    :cond_0
    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageLinks(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 1

    .line 1167
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->maxZoom:F

    return v0
.end method

.method public getMidZoom()F
    .locals 1

    .line 1159
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->midZoom:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    .line 1151
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    return v0
.end method

.method public getPageAtPositionOffset(F)I
    .locals 3
    .param p1, "positionOffset"    # F

    .line 1147
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageAtOffset(FF)I

    move-result v0

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x0

    return v0

    .line 376
    :cond_0
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v0

    return v0
.end method

.method public getPageFitPolicy()Lcom/github/barteksc/pdfviewer/util/FitPolicy;
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    return-object v0
.end method

.method public getPageSize(I)Lcom/shockwave/pdfium/util/SizeF;
    .locals 2
    .param p1, "pageIndex"    # I

    .line 1082
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-nez v0, :cond_0

    .line 1083
    new-instance v0, Lcom/shockwave/pdfium/util/SizeF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/shockwave/pdfium/util/SizeF;-><init>(FF)V

    return-object v0

    .line 1085
    :cond_0
    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageSize(I)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v0

    return-object v0
.end method

.method public getPositionOffset()F
    .locals 3

    .line 342
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_0

    .line 343
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v1, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .local v0, "offset":F
    goto :goto_0

    .line 345
    .end local v0    # "offset":F
    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v1, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 347
    .restart local v0    # "offset":F
    :goto_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->limit(FFF)F

    move-result v1

    return v1
.end method

.method getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    return-object v0
.end method

.method public getSpacingPx()I
    .locals 1

    .line 1215
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    return v0
.end method

.method public getTableOfContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    .line 1276
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-nez v0, :cond_0

    .line 1277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1279
    :cond_0
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getBookmarks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    .line 1109
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    return v0
.end method

.method public isAnnotationRendering()Z
    .locals 1

    .line 1199
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->annotationRendering:Z

    return v0
.end method

.method public isAntialiasing()Z
    .locals 1

    .line 1207
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    return v0
.end method

.method public isAutoSpacingEnabled()Z
    .locals 1

    .line 1219
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->autoSpacing:Z

    return v0
.end method

.method public isBestQuality()Z
    .locals 1

    .line 1179
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->bestQuality:Z

    return v0
.end method

.method isDoubletapEnabled()Z
    .locals 1

    .line 405
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->doubletapEnabled:Z

    return v0
.end method

.method public isFitEachPage()Z
    .locals 1

    .line 1251
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->fitEachPage:Z

    return v0
.end method

.method public isPageFlingEnabled()Z
    .locals 1

    .line 1227
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageFling:Z

    return v0
.end method

.method public isPageSnap()Z
    .locals 1

    .line 1255
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageSnap:Z

    return v0
.end method

.method public isRecycled()Z
    .locals 1

    .line 452
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    return v0
.end method

.method public isSwipeEnabled()Z
    .locals 1

    .line 1187
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableSwipe:Z

    return v0
.end method

.method public isSwipeVertical()Z
    .locals 1

    .line 1183
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    return v0
.end method

.method public isZooming()Z
    .locals 2

    .line 1113
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jumpTo(I)V
    .locals 1
    .param p1, "page"    # I

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->jumpTo(IZ)V

    .line 313
    return-void
.end method

.method public jumpTo(IZ)V
    .locals 3
    .param p1, "page"    # I
    .param p2, "withAnimation"    # Z

    .line 289
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-nez v0, :cond_0

    .line 290
    return-void

    .line 293
    :cond_0
    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->determineValidPageNumberFrom(I)I

    move-result p1

    .line 294
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, p1, v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v0

    neg-float v0, v0

    .line 295
    .local v0, "offset":F
    :goto_0
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v1, :cond_3

    .line 296
    if-eqz p2, :cond_2

    .line 297
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {v1, v2, v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startYAnimation(FF)V

    goto :goto_1

    .line 299
    :cond_2
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    invoke-virtual {p0, v1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    goto :goto_1

    .line 302
    :cond_3
    if-eqz p2, :cond_4

    .line 303
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    invoke-virtual {v1, v2, v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startXAnimation(FF)V

    goto :goto_1

    .line 305
    :cond_4
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    .line 308
    :goto_1
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->showPage(I)V

    .line 309
    return-void
.end method

.method loadComplete(Lcom/github/barteksc/pdfviewer/PdfFile;)V
    .locals 2
    .param p1, "pdfFile"    # Lcom/github/barteksc/pdfviewer/PdfFile;

    .line 752
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 754
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    .line 756
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 759
    :cond_0
    new-instance v0, Lcom/github/barteksc/pdfviewer/RenderingHandler;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/github/barteksc/pdfviewer/RenderingHandler;-><init>(Landroid/os/Looper;Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    .line 760
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->start()V

    .line 762
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz v0, :cond_1

    .line 763
    invoke-interface {v0, p0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->setupLayout(Lcom/github/barteksc/pdfviewer/PDFView;)V

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->enable()V

    .line 769
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->callOnLoadComplete(I)V

    .line 771
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->defaultPage:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->jumpTo(IZ)V

    .line 772
    return-void
.end method

.method loadError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 775
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->ERROR:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 777
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->getOnError()Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    move-result-object v0

    .line 778
    .local v0, "onErrorListener":Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->recycle()V

    .line 779
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->invalidate()V

    .line 780
    if-eqz v0, :cond_0

    .line 781
    invoke-interface {v0, p1}, Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 783
    :cond_0
    const-string v1, "PDFView"

    const-string v2, "load pdf error"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 785
    :goto_0
    return-void
.end method

.method loadPageByOffset()V
    .locals 5

    .line 905
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 906
    return-void

    .line 910
    :cond_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 911
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 912
    .local v0, "offset":F
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .local v2, "screenCenter":F
    goto :goto_0

    .line 914
    .end local v0    # "offset":F
    .end local v2    # "screenCenter":F
    :cond_1
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 915
    .restart local v0    # "offset":F
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 918
    .restart local v2    # "screenCenter":F
    :goto_0
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    sub-float v3, v0, v2

    neg-float v3, v3

    iget v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v1, v3, v4}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageAtOffset(FF)I

    move-result v1

    .line 920
    .local v1, "page":I
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    move-result v3

    if-eq v1, v3, :cond_2

    .line 921
    invoke-virtual {p0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->showPage(I)V

    goto :goto_1

    .line 923
    :cond_2
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 925
    :goto_1
    return-void
.end method

.method public loadPages()V
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 743
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->removeMessages(I)V

    .line 744
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/CacheManager;->makeANewSet()V

    .line 746
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadPages()V

    .line 747
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->redraw()V

    .line 748
    return-void

    .line 739
    :cond_1
    :goto_0
    return-void
.end method

.method public moveRelativeTo(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 1023
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    .line 1024
    return-void
.end method

.method public moveTo(FF)V
    .locals 1
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .line 813
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FFZ)V

    .line 814
    return-void
.end method

.method public moveTo(FFZ)V
    .locals 5
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F
    .param p3, "moveHandle"    # Z

    .line 825
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 827
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    .line 828
    .local v0, "scaledPageWidth":F
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float v4, v0, v1

    sub-float p1, v3, v4

    goto :goto_0

    .line 831
    :cond_0
    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    .line 832
    const/4 p1, 0x0

    goto :goto_0

    .line 833
    :cond_1
    add-float v3, p1, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 834
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float p1, v3, v0

    .line 839
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v3, v4}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v3

    .line 840
    .local v3, "contentHeight":F
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_3

    .line 841
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v3

    div-float p2, v2, v1

    goto :goto_1

    .line 843
    :cond_3
    cmpl-float v1, p2, v2

    if-lez v1, :cond_4

    .line 844
    const/4 p2, 0x0

    goto :goto_1

    .line 845
    :cond_4
    add-float v1, p2, v3

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 846
    neg-float v1, v3

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float p2, v1, v2

    .line 850
    :cond_5
    :goto_1
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    cmpg-float v2, p2, v1

    if-gez v2, :cond_6

    .line 851
    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->END:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto :goto_2

    .line 852
    :cond_6
    cmpl-float v1, p2, v1

    if-lez v1, :cond_7

    .line 853
    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->START:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto :goto_2

    .line 855
    :cond_7
    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    .line 857
    .end local v0    # "scaledPageWidth":F
    .end local v3    # "contentHeight":F
    :goto_2
    goto/16 :goto_5

    .line 859
    :cond_8
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    .line 860
    .local v0, "scaledPageHeight":F
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_9

    .line 861
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float v4, v0, v1

    sub-float p2, v3, v4

    goto :goto_3

    .line 863
    :cond_9
    cmpl-float v3, p2, v2

    if-lez v3, :cond_a

    .line 864
    const/4 p2, 0x0

    goto :goto_3

    .line 865
    :cond_a
    add-float v3, p2, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    .line 866
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float p2, v3, v0

    .line 871
    :cond_b
    :goto_3
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v3, v4}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v3

    .line 872
    .local v3, "contentWidth":F
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_c

    .line 873
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v3

    div-float p1, v2, v1

    goto :goto_4

    .line 875
    :cond_c
    cmpl-float v1, p1, v2

    if-lez v1, :cond_d

    .line 876
    const/4 p1, 0x0

    goto :goto_4

    .line 877
    :cond_d
    add-float v1, p1, v3

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    .line 878
    neg-float v1, v3

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float p1, v1, v2

    .line 882
    :cond_e
    :goto_4
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_f

    .line 883
    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->END:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto :goto_5

    .line 884
    :cond_f
    cmpl-float v1, p1, v1

    if-lez v1, :cond_10

    .line 885
    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->START:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto :goto_5

    .line 887
    :cond_10
    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    .line 891
    .end local v0    # "scaledPageHeight":F
    .end local v3    # "contentWidth":F
    :goto_5
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 892
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 893
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPositionOffset()F

    move-result v0

    .line 895
    .local v0, "positionOffset":F
    if-eqz p3, :cond_11

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->documentFitsView()Z

    move-result v1

    if-nez v1, :cond_11

    .line 896
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    invoke-interface {v1, v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->setScroll(F)V

    .line 899
    :cond_11
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->callOnPageScroll(IF)V

    .line 901
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->redraw()V

    .line 902
    return-void
.end method

.method public onBitmapRendered(Lcom/github/barteksc/pdfviewer/model/PagePart;)V
    .locals 2
    .param p1, "part"    # Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 799
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-ne v0, v1, :cond_0

    .line 800
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 801
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->callOnRender(I)V

    .line 804
    :cond_0
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->isThumbnail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/CacheManager;->cacheThumbnail(Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    goto :goto_0

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/CacheManager;->cachePart(Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    .line 809
    :goto_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->redraw()V

    .line 810
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 467
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->recycle()V

    .line 468
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 469
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 474
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    .line 476
    :cond_1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 477
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 564
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    return-void

    .line 598
    :cond_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->antialiasFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 602
    :cond_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 603
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_3

    .line 604
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->nightMode:Z

    if-eqz v1, :cond_2

    const/high16 v1, -0x1000000

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1

    .line 606
    :cond_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 609
    :goto_1
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-eqz v1, :cond_4

    .line 610
    return-void

    .line 613
    :cond_4
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v2, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v1, v2, :cond_5

    .line 614
    return-void

    .line 618
    :cond_5
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 619
    .local v1, "currentXOffset":F
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 620
    .local v2, "currentYOffset":F
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 623
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/CacheManager;->getThumbnails()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 624
    .local v4, "part":Lcom/github/barteksc/pdfviewer/model/PagePart;
    invoke-direct {p0, p1, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    .line 626
    .end local v4    # "part":Lcom/github/barteksc/pdfviewer/model/PagePart;
    goto :goto_2

    .line 629
    :cond_6
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/CacheManager;->getPageParts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 630
    .restart local v4    # "part":Lcom/github/barteksc/pdfviewer/model/PagePart;
    invoke-direct {p0, p1, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    .line 631
    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->getOnDrawAll()Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    .line 632
    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPage()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 633
    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPage()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    .end local v4    # "part":Lcom/github/barteksc/pdfviewer/model/PagePart;
    :cond_7
    goto :goto_3

    .line 637
    :cond_8
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 638
    .local v4, "page":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-virtual {v6}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->getOnDrawAll()Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    move-result-object v6

    invoke-direct {p0, p1, v5, v6}, Lcom/github/barteksc/pdfviewer/PDFView;->drawWithListener(Landroid/graphics/Canvas;ILcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    .line 639
    .end local v4    # "page":Ljava/lang/Integer;
    goto :goto_4

    .line 640
    :cond_9
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 642
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->getOnDraw()Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->drawWithListener(Landroid/graphics/Canvas;ILcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    .line 645
    neg-float v3, v1

    neg-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 646
    return-void
.end method

.method onPageError(Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;)V
    .locals 3
    .param p1, "ex"    # Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;

    .line 409
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;->getPage()I

    move-result v1

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->callOnPageError(ILjava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;->getPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->hasSize:Z

    .line 482
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->waitingDocumentConfigurator:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->load()V

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    .line 490
    :cond_1
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    neg-float v0, v0

    int-to-float v1, p3

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 491
    .local v0, "centerPointInStripXOffset":F
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    neg-float v1, v1

    int-to-float v3, p4

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 496
    .local v1, "centerPointInStripYOffset":F
    iget-boolean v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v3, :cond_2

    .line 497
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageWidth()F

    move-result v3

    div-float v3, v0, v3

    .line 498
    .local v3, "relativeCenterPointInStripXOffset":F
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v4, v5}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v4

    div-float v4, v1, v4

    .local v4, "relativeCenterPointInStripYOffset":F
    goto :goto_0

    .line 500
    .end local v3    # "relativeCenterPointInStripXOffset":F
    .end local v4    # "relativeCenterPointInStripYOffset":F
    :cond_2
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v3, v4}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v3

    div-float v3, v0, v3

    .line 501
    .restart local v3    # "relativeCenterPointInStripXOffset":F
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageHeight()F

    move-result v4

    div-float v4, v1, v4

    .line 504
    .restart local v4    # "relativeCenterPointInStripYOffset":F
    :goto_0
    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    .line 505
    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    new-instance v6, Lcom/shockwave/pdfium/util/Size;

    invoke-direct {v6, p1, p2}, Lcom/shockwave/pdfium/util/Size;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/github/barteksc/pdfviewer/PdfFile;->recalculatePageSizes(Lcom/shockwave/pdfium/util/Size;)V

    .line 507
    iget-boolean v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v5, :cond_3

    .line 508
    neg-float v5, v3

    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v6}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageWidth()F

    move-result v6

    mul-float/2addr v5, v6

    int-to-float v6, p1

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iput v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 509
    neg-float v5, v4

    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v7, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v6, v7}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v6

    mul-float/2addr v5, v6

    int-to-float v6, p2

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iput v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    goto :goto_1

    .line 511
    :cond_3
    neg-float v5, v3

    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v7, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v6, v7}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v6

    mul-float/2addr v5, v6

    int-to-float v6, p1

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iput v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 512
    neg-float v5, v4

    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v6}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageHeight()F

    move-result v6

    mul-float/2addr v5, v6

    int-to-float v6, p2

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iput v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 514
    :goto_1
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    iget v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, v2, v5}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    .line 515
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    .line 516
    return-void

    .line 486
    .end local v0    # "centerPointInStripXOffset":F
    .end local v1    # "centerPointInStripYOffset":F
    .end local v3    # "relativeCenterPointInStripXOffset":F
    .end local v4    # "relativeCenterPointInStripYOffset":F
    :cond_4
    :goto_2
    return-void
.end method

.method public pageFillsScreen()Z
    .locals 6

    .line 1006
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v0

    neg-float v0, v0

    .line 1007
    .local v0, "start":F
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v1, v2, v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageLength(IF)F

    move-result v1

    sub-float v1, v0, v1

    .line 1008
    .local v1, "end":F
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 1009
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    cmpl-float v5, v0, v2

    if-lez v5, :cond_0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    .line 1011
    :cond_1
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    cmpl-float v5, v0, v2

    if-lez v5, :cond_2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    return v3
.end method

.method public performPageSnap()V
    .locals 6

    .line 931
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageSnap:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 934
    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->findFocusPage(FF)I

    move-result v0

    .line 935
    .local v0, "centerPage":I
    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->findSnapEdge(I)Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    move-result-object v1

    .line 936
    .local v1, "edge":Lcom/github/barteksc/pdfviewer/util/SnapEdge;
    sget-object v2, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->NONE:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    if-ne v1, v2, :cond_1

    .line 937
    return-void

    .line 940
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->snapOffsetForPage(ILcom/github/barteksc/pdfviewer/util/SnapEdge;)F

    move-result v2

    .line 941
    .local v2, "offset":F
    iget-boolean v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v3, :cond_2

    .line 942
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    neg-float v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startYAnimation(FF)V

    goto :goto_0

    .line 944
    :cond_2
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    neg-float v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startXAnimation(FF)V

    .line 946
    :goto_0
    return-void

    .line 932
    .end local v0    # "centerPage":I
    .end local v1    # "edge":Lcom/github/barteksc/pdfviewer/util/SnapEdge;
    .end local v2    # "offset":F
    :cond_3
    :goto_1
    return-void
.end method

.method public recycle()V
    .locals 4

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->waitingDocumentConfigurator:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    .line 417
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    .line 418
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->disable()V

    .line 421
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->stop()V

    .line 423
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    invoke-virtual {v1, v2}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->removeMessages(I)V

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    if-eqz v1, :cond_1

    .line 426
    invoke-virtual {v1, v2}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancel(Z)Z

    .line 430
    :cond_1
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/CacheManager;->recycle()V

    .line 432
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    if-eqz v3, :cond_2

    .line 433
    invoke-interface {v1}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->destroyLayout()V

    .line 436
    :cond_2
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-eqz v1, :cond_3

    .line 437
    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->dispose()V

    .line 438
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    .line 441
    :cond_3
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    .line 442
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    .line 444
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 445
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    .line 446
    iput-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    .line 447
    new-instance v0, Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-direct {v0}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    .line 448
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 449
    return-void
.end method

.method redraw()V
    .locals 0

    .line 788
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->invalidate()V

    .line 789
    return-void
.end method

.method public resetZoom()V
    .locals 1

    .line 1121
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomTo(F)V

    .line 1122
    return-void
.end method

.method public resetZoomWithAnimation()V
    .locals 1

    .line 1125
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomWithAnimation(F)V

    .line 1126
    return-void
.end method

.method public setMaxZoom(F)V
    .locals 0
    .param p1, "maxZoom"    # F

    .line 1171
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->maxZoom:F

    .line 1172
    return-void
.end method

.method public setMidZoom(F)V
    .locals 0
    .param p1, "midZoom"    # F

    .line 1163
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->midZoom:F

    .line 1164
    return-void
.end method

.method public setMinZoom(F)V
    .locals 0
    .param p1, "minZoom"    # F

    .line 1155
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    .line 1156
    return-void
.end method

.method public setNightMode(Z)V
    .locals 3
    .param p1, "nightMode"    # Z

    .line 384
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->nightMode:Z

    .line 385
    if-eqz p1, :cond_0

    .line 386
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 393
    .local v0, "colorMatrixInverted":Landroid/graphics/ColorMatrix;
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 394
    .local v1, "filter":Landroid/graphics/ColorMatrixColorFilter;
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 395
    .end local v0    # "colorMatrixInverted":Landroid/graphics/ColorMatrix;
    .end local v1    # "filter":Landroid/graphics/ColorMatrixColorFilter;
    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 398
    :goto_0
    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setPageFling(Z)V
    .locals 0
    .param p1, "pageFling"    # Z

    .line 1223
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageFling:Z

    .line 1224
    return-void
.end method

.method public setPageSnap(Z)V
    .locals 0
    .param p1, "pageSnap"    # Z

    .line 1259
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageSnap:Z

    .line 1260
    return-void
.end method

.method public setPositionOffset(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 365
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setPositionOffset(FZ)V

    .line 366
    return-void
.end method

.method public setPositionOffset(FZ)V
    .locals 3
    .param p1, "progress"    # F
    .param p2, "moveHandle"    # Z

    .line 356
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_0

    .line 357
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v1, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FFZ)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FFZ)V

    .line 361
    :goto_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    .line 362
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0
    .param p1, "enableSwipe"    # Z

    .line 380
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableSwipe:Z

    .line 381
    return-void
.end method

.method showPage(I)V
    .locals 3
    .param p1, "pageNb"    # I

    .line 316
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-eqz v0, :cond_0

    .line 317
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->determineValidPageNumberFrom(I)I

    move-result p1

    .line 323
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    .line 325
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 327
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->documentFitsView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->setPageNum(I)V

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->callOnPageChange(II)V

    .line 332
    return-void
.end method

.method snapOffsetForPage(ILcom/github/barteksc/pdfviewer/util/SnapEdge;)F
    .locals 5
    .param p1, "pageIndex"    # I
    .param p2, "edge"    # Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    .line 975
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, p1, v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v0

    .line 977
    .local v0, "offset":F
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    .line 978
    .local v1, "length":F
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v2, p1, v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageLength(IF)F

    move-result v2

    .line 980
    .local v2, "pageLength":F
    sget-object v3, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->CENTER:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    if-ne p2, v3, :cond_1

    .line 981
    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v1, v3

    sub-float v4, v0, v4

    div-float v3, v2, v3

    add-float v0, v4, v3

    goto :goto_1

    .line 982
    :cond_1
    sget-object v3, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->END:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    if-ne p2, v3, :cond_2

    .line 983
    sub-float v3, v0, v1

    add-float v0, v3, v2

    .line 985
    :cond_2
    :goto_1
    return v0
.end method

.method public stopFling()V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopFling()V

    .line 370
    return-void
.end method

.method public toCurrentScale(F)F
    .locals 1
    .param p1, "size"    # F

    .line 1105
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public toRealScale(F)F
    .locals 1
    .param p1, "size"    # F

    .line 1101
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    div-float v0, p1, v0

    return v0
.end method

.method public useBestQuality(Z)V
    .locals 0
    .param p1, "bestQuality"    # Z

    .line 1175
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->bestQuality:Z

    .line 1176
    return-void
.end method

.method public zoomCenteredRelativeTo(FLandroid/graphics/PointF;)V
    .locals 1
    .param p1, "dzoom"    # F
    .param p2, "pivot"    # Landroid/graphics/PointF;

    .line 1055
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomCenteredTo(FLandroid/graphics/PointF;)V

    .line 1056
    return-void
.end method

.method public zoomCenteredTo(FLandroid/graphics/PointF;)V
    .locals 5
    .param p1, "zoom"    # F
    .param p2, "pivot"    # Landroid/graphics/PointF;

    .line 1042
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    div-float v0, p1, v0

    .line 1043
    .local v0, "dzoom":F
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomTo(F)V

    .line 1044
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    mul-float/2addr v1, v0

    .line 1045
    .local v1, "baseX":F
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    mul-float/2addr v2, v0

    .line 1046
    .local v2, "baseY":F
    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 1047
    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 1048
    invoke-virtual {p0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    .line 1049
    return-void
.end method

.method public zoomTo(F)V
    .locals 0
    .param p1, "zoom"    # F

    .line 1030
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    .line 1031
    return-void
.end method

.method public zoomWithAnimation(F)V
    .locals 4
    .param p1, "scale"    # F

    .line 1133
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startZoomAnimation(FFFF)V

    .line 1134
    return-void
.end method

.method public zoomWithAnimation(FFF)V
    .locals 2
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "scale"    # F

    .line 1129
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startZoomAnimation(FFFF)V

    .line 1130
    return-void
.end method
