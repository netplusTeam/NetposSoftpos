.class Lcom/github/barteksc/pdfviewer/RenderingHandler;
.super Landroid/os/Handler;
.source "RenderingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;
    }
.end annotation


# static fields
.field static final MSG_RENDER_TASK:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private renderBounds:Landroid/graphics/RectF;

.field private renderMatrix:Landroid/graphics/Matrix;

.field private roundedRenderBounds:Landroid/graphics/Rect;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/github/barteksc/pdfviewer/RenderingHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "pdfView"    # Lcom/github/barteksc/pdfviewer/PDFView;

    .line 52
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderBounds:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->running:Z

    .line 53
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/github/barteksc/pdfviewer/RenderingHandler;)Lcom/github/barteksc/pdfviewer/PDFView;
    .locals 1
    .param p0, "x0"    # Lcom/github/barteksc/pdfviewer/RenderingHandler;

    .line 36
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    return-object v0
.end method

.method private calculateBounds(IILandroid/graphics/RectF;)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pageSliceBounds"    # Landroid/graphics/RectF;

    .line 117
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 118
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p3, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 119
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 121
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderBounds:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 122
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 123
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 124
    return-void
.end method

.method private proceed(Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;)Lcom/github/barteksc/pdfviewer/model/PagePart;
    .locals 11
    .param p1, "renderingTask"    # Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    .line 91
    .local v0, "pdfFile":Lcom/github/barteksc/pdfviewer/PdfFile;
    iget v1, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->openPage(I)Z

    .line 93
    iget v1, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->width:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 94
    .local v1, "w":I
    iget v2, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->height:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 96
    .local v2, "h":I
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    iget v4, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    invoke-virtual {v0, v4}, Lcom/github/barteksc/pdfviewer/PdfFile;->pageHasError(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    :try_start_0
    iget-boolean v4, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->bestQuality:Z

    if-eqz v4, :cond_1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .local v3, "render":Landroid/graphics/Bitmap;
    nop

    .line 107
    iget-object v4, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->bounds:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v2, v4}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->calculateBounds(IILandroid/graphics/RectF;)V

    .line 109
    iget v4, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    iget-boolean v6, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->annotationRendering:Z

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/github/barteksc/pdfviewer/PdfFile;->renderPageBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Z)V

    .line 111
    new-instance v10, Lcom/github/barteksc/pdfviewer/model/PagePart;

    iget v5, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    iget-object v7, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->bounds:Landroid/graphics/RectF;

    iget-boolean v8, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->thumbnail:Z

    iget v9, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->cacheOrder:I

    move-object v4, v10

    move-object v6, v3

    invoke-direct/range {v4 .. v9}, Lcom/github/barteksc/pdfviewer/model/PagePart;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/RectF;ZI)V

    return-object v10

    .line 103
    .end local v3    # "render":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 104
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/github/barteksc/pdfviewer/RenderingHandler;->TAG:Ljava/lang/String;

    const-string v6, "Cannot create bitmap"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    return-object v3

    .line 97
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_1
    return-object v3
.end method


# virtual methods
.method addRenderingTask(IFFLandroid/graphics/RectF;ZIZZ)V
    .locals 12
    .param p1, "page"    # I
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "bounds"    # Landroid/graphics/RectF;
    .param p5, "thumbnail"    # Z
    .param p6, "cacheOrder"    # I
    .param p7, "bestQuality"    # Z
    .param p8, "annotationRendering"    # Z

    .line 57
    move-object v10, p0

    new-instance v11, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;

    move-object v0, v11

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move v5, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;-><init>(Lcom/github/barteksc/pdfviewer/RenderingHandler;FFLandroid/graphics/RectF;IZIZZ)V

    .line 58
    .local v0, "task":Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 59
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 64
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;

    .line 66
    .local v0, "task":Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->proceed(Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;)Lcom/github/barteksc/pdfviewer/model/PagePart;

    move-result-object v1

    .line 67
    .local v1, "part":Lcom/github/barteksc/pdfviewer/model/PagePart;
    if-eqz v1, :cond_1

    .line 68
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->running:Z

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    new-instance v3, Lcom/github/barteksc/pdfviewer/RenderingHandler$1;

    invoke-direct {v3, p0, v1}, Lcom/github/barteksc/pdfviewer/RenderingHandler$1;-><init>(Lcom/github/barteksc/pdfviewer/RenderingHandler;Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    invoke-virtual {v2, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Lcom/github/barteksc/pdfviewer/exception/PageRenderingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1    # "part":Lcom/github/barteksc/pdfviewer/model/PagePart;
    :cond_1
    :goto_0
    goto :goto_1

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "ex":Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    new-instance v3, Lcom/github/barteksc/pdfviewer/RenderingHandler$2;

    invoke-direct {v3, p0, v1}, Lcom/github/barteksc/pdfviewer/RenderingHandler$2;-><init>(Lcom/github/barteksc/pdfviewer/RenderingHandler;Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;)V

    invoke-virtual {v2, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->post(Ljava/lang/Runnable;)Z

    .line 87
    .end local v1    # "ex":Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;
    :goto_1
    return-void
.end method

.method start()V
    .locals 1

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->running:Z

    .line 132
    return-void
.end method

.method stop()V
    .locals 1

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->running:Z

    .line 128
    return-void
.end method
