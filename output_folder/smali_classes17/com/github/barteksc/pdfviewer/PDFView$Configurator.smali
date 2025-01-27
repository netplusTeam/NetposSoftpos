.class public Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
.super Ljava/lang/Object;
.source "PDFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/PDFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Configurator"
.end annotation


# instance fields
.field private annotationRendering:Z

.field private antialiasing:Z

.field private autoSpacing:Z

.field private defaultPage:I

.field private final documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

.field private enableDoubletap:Z

.field private enableSwipe:Z

.field private fitEachPage:Z

.field private linkHandler:Lcom/github/barteksc/pdfviewer/link/LinkHandler;

.field private nightMode:Z

.field private onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

.field private onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

.field private onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

.field private onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

.field private onLongPressListener:Lcom/github/barteksc/pdfviewer/listener/OnLongPressListener;

.field private onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

.field private onPageErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;

.field private onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

.field private onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

.field private onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

.field private pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

.field private pageFling:Z

.field private pageNumbers:[I

.field private pageSnap:Z

.field private password:Ljava/lang/String;

.field private scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

.field private spacing:I

.field private swipeHorizontal:Z

.field final synthetic this$0:Lcom/github/barteksc/pdfviewer/PDFView;


# direct methods
.method private constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;)V
    .locals 3
    .param p1, "this$0"    # Lcom/github/barteksc/pdfviewer/PDFView;
    .param p2, "documentSource"    # Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    .line 1380
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    .line 1328
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    .line 1330
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    .line 1352
    new-instance v2, Lcom/github/barteksc/pdfviewer/link/DefaultLinkHandler;

    invoke-direct {v2, p1}, Lcom/github/barteksc/pdfviewer/link/DefaultLinkHandler;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->linkHandler:Lcom/github/barteksc/pdfviewer/link/LinkHandler;

    .line 1354
    const/4 v2, 0x0

    iput v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    .line 1356
    iput-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal:Z

    .line 1358
    iput-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    .line 1360
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    .line 1362
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    .line 1364
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->antialiasing:Z

    .line 1366
    iput v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->spacing:I

    .line 1368
    iput-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->autoSpacing:Z

    .line 1370
    sget-object v0, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->WIDTH:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    .line 1372
    iput-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->fitEachPage:Z

    .line 1374
    iput-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFling:Z

    .line 1376
    iput-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageSnap:Z

    .line 1378
    iput-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->nightMode:Z

    .line 1381
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    .line 1382
    return-void
.end method

.method synthetic constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/github/barteksc/pdfviewer/PDFView;
    .param p2, "x1"    # Lcom/github/barteksc/pdfviewer/source/DocumentSource;
    .param p3, "x2"    # Lcom/github/barteksc/pdfviewer/PDFView$1;

    .line 1322
    invoke-direct {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;)V

    return-void
.end method


# virtual methods
.method public autoSpacing(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "autoSpacing"    # Z

    .line 1490
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->autoSpacing:Z

    .line 1491
    return-object p0
.end method

.method public defaultPage(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "defaultPage"    # I

    .line 1460
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    .line 1461
    return-object p0
.end method

.method public disableLongpress()Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 1

    .line 1520
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->access$100(Lcom/github/barteksc/pdfviewer/PDFView;)Lcom/github/barteksc/pdfviewer/DragPinchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->disableLongpress()V

    .line 1521
    return-object p0
.end method

.method public enableAnnotationRendering(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "annotationRendering"    # Z

    .line 1400
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    .line 1401
    return-object p0
.end method

.method public enableAntialiasing(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "antialiasing"    # Z

    .line 1480
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->antialiasing:Z

    .line 1481
    return-object p0
.end method

.method public enableDoubletap(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "enableDoubletap"    # Z

    .line 1395
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    .line 1396
    return-object p0
.end method

.method public enableSwipe(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "enableSwipe"    # Z

    .line 1390
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    .line 1391
    return-object p0
.end method

.method public fitEachPage(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "fitEachPage"    # Z

    .line 1500
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->fitEachPage:Z

    .line 1501
    return-object p0
.end method

.method public linkHandler(Lcom/github/barteksc/pdfviewer/link/LinkHandler;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "linkHandler"    # Lcom/github/barteksc/pdfviewer/link/LinkHandler;

    .line 1455
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->linkHandler:Lcom/github/barteksc/pdfviewer/link/LinkHandler;

    .line 1456
    return-object p0
.end method

.method public load()V
    .locals 4

    .line 1525
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->access$200(Lcom/github/barteksc/pdfviewer/PDFView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-static {v0, p0}, Lcom/github/barteksc/pdfviewer/PDFView;->access$302(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    .line 1527
    return-void

    .line 1529
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->recycle()V

    .line 1530
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnLoadComplete(Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;)V

    .line 1531
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnError(Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)V

    .line 1532
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnDraw(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    .line 1533
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnDrawAll(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    .line 1534
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnPageChange(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)V

    .line 1535
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnPageScroll(Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)V

    .line 1536
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnRender(Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;)V

    .line 1537
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnTap(Lcom/github/barteksc/pdfviewer/listener/OnTapListener;)V

    .line 1538
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLongPressListener:Lcom/github/barteksc/pdfviewer/listener/OnLongPressListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnLongPress(Lcom/github/barteksc/pdfviewer/listener/OnLongPressListener;)V

    .line 1539
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnPageError(Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;)V

    .line 1540
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->linkHandler:Lcom/github/barteksc/pdfviewer/link/LinkHandler;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setLinkHandler(Lcom/github/barteksc/pdfviewer/link/LinkHandler;)V

    .line 1541
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setSwipeEnabled(Z)V

    .line 1542
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->nightMode:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setNightMode(Z)V

    .line 1543
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableDoubletap(Z)V

    .line 1544
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$400(Lcom/github/barteksc/pdfviewer/PDFView;I)V

    .line 1545
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$500(Lcom/github/barteksc/pdfviewer/PDFView;Z)V

    .line 1546
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableAnnotationRendering(Z)V

    .line 1547
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$600(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V

    .line 1548
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->antialiasing:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing(Z)V

    .line 1549
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->spacing:I

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$700(Lcom/github/barteksc/pdfviewer/PDFView;I)V

    .line 1550
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->autoSpacing:Z

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$800(Lcom/github/barteksc/pdfviewer/PDFView;Z)V

    .line 1551
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$900(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/util/FitPolicy;)V

    .line 1552
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->fitEachPage:Z

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$1000(Lcom/github/barteksc/pdfviewer/PDFView;Z)V

    .line 1553
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageSnap:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setPageSnap(Z)V

    .line 1554
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFling:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setPageFling(Z)V

    .line 1556
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    if-eqz v0, :cond_1

    .line 1557
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->access$1100(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;[I)V

    goto :goto_0

    .line 1559
    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->access$1200(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;)V

    .line 1561
    :goto_0
    return-void
.end method

.method public nightMode(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "nightMode"    # Z

    .line 1515
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->nightMode:Z

    .line 1516
    return-object p0
.end method

.method public onDraw(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "onDrawListener"    # Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    .line 1405
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    .line 1406
    return-object p0
.end method

.method public onDrawAll(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "onDrawAllListener"    # Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    .line 1410
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    .line 1411
    return-object p0
.end method

.method public onError(Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "onErrorListener"    # Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    .line 1425
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    .line 1426
    return-object p0
.end method

.method public onLoad(Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "onLoadCompleteListener"    # Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    .line 1415
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    .line 1416
    return-object p0
.end method

.method public onLongPress(Lcom/github/barteksc/pdfviewer/listener/OnLongPressListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "onLongPressListener"    # Lcom/github/barteksc/pdfviewer/listener/OnLongPressListener;

    .line 1450
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLongPressListener:Lcom/github/barteksc/pdfviewer/listener/OnLongPressListener;

    .line 1451
    return-object p0
.end method

.method public onPageChange(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "onPageChangeListener"    # Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    .line 1435
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    .line 1436
    return-object p0
.end method

.method public onPageError(Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "onPageErrorListener"    # Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;

    .line 1430
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;

    .line 1431
    return-object p0
.end method

.method public onPageScroll(Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "onPageScrollListener"    # Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    .line 1420
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    .line 1421
    return-object p0
.end method

.method public onRender(Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "onRenderListener"    # Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

    .line 1440
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

    .line 1441
    return-object p0
.end method

.method public onTap(Lcom/github/barteksc/pdfviewer/listener/OnTapListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "onTapListener"    # Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

    .line 1445
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

    .line 1446
    return-object p0
.end method

.method public pageFitPolicy(Lcom/github/barteksc/pdfviewer/util/FitPolicy;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "pageFitPolicy"    # Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    .line 1495
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    .line 1496
    return-object p0
.end method

.method public pageFling(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "pageFling"    # Z

    .line 1510
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFling:Z

    .line 1511
    return-object p0
.end method

.method public pageSnap(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "pageSnap"    # Z

    .line 1505
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageSnap:Z

    .line 1506
    return-object p0
.end method

.method public varargs pages([I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "pageNumbers"    # [I

    .line 1385
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    .line 1386
    return-object p0
.end method

.method public password(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 1470
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    .line 1471
    return-object p0
.end method

.method public scrollHandle(Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "scrollHandle"    # Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    .line 1475
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    .line 1476
    return-object p0
.end method

.method public spacing(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "spacing"    # I

    .line 1485
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->spacing:I

    .line 1486
    return-object p0
.end method

.method public swipeHorizontal(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0
    .param p1, "swipeHorizontal"    # Z

    .line 1465
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal:Z

    .line 1466
    return-object p0
.end method
