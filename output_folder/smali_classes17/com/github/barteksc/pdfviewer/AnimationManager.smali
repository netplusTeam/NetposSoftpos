.class Lcom/github/barteksc/pdfviewer/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;,
        Lcom/github/barteksc/pdfviewer/AnimationManager$YAnimation;,
        Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;
    }
.end annotation


# instance fields
.field private animation:Landroid/animation/ValueAnimator;

.field private flinging:Z

.field private pageFlinging:Z

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private scroller:Landroid/widget/OverScroller;


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 2
    .param p1, "pdfView"    # Lcom/github/barteksc/pdfviewer/PDFView;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flinging:Z

    .line 44
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pageFlinging:Z

    .line 47
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 48
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;
    .locals 1
    .param p0, "x0"    # Lcom/github/barteksc/pdfviewer/AnimationManager;

    .line 34
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/github/barteksc/pdfviewer/AnimationManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/github/barteksc/pdfviewer/AnimationManager;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pageFlinging:Z

    return p1
.end method

.method static synthetic access$200(Lcom/github/barteksc/pdfviewer/AnimationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/barteksc/pdfviewer/AnimationManager;

    .line 34
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->hideHandle()V

    return-void
.end method

.method private hideHandle()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->hideDelayed()V

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method computeFling()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    .line 102
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    goto :goto_0

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flinging:Z

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flinging:Z

    .line 105
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 106
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->hideHandle()V

    .line 107
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->performPageSnap()V

    .line 109
    :cond_1
    :goto_0
    return-void
.end method

.method public isFlinging()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flinging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pageFlinging:Z

    if-eqz v0, :cond_0

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

.method public startFlingAnimation(IIIIIIII)V
    .locals 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .line 85
    move-object v0, p0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flinging:Z

    .line 87
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 88
    return-void
.end method

.method public startPageFlingAnimation(F)V
    .locals 1
    .param p1, "targetOffset"    # F

    .line 91
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startYAnimation(FF)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startXAnimation(FF)V

    .line 96
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pageFlinging:Z

    .line 97
    return-void
.end method

.method public startXAnimation(FF)V
    .locals 4
    .param p1, "xFrom"    # F
    .param p2, "xTo"    # F

    .line 52
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    .line 54
    new-instance v0, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;

    invoke-direct {v0, p0}, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;-><init>(Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    .line 55
    .local v0, "xAnimation":Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 57
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 58
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 59
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 60
    return-void
.end method

.method public startYAnimation(FF)V
    .locals 4
    .param p1, "yFrom"    # F
    .param p2, "yTo"    # F

    .line 63
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    .line 65
    new-instance v0, Lcom/github/barteksc/pdfviewer/AnimationManager$YAnimation;

    invoke-direct {v0, p0}, Lcom/github/barteksc/pdfviewer/AnimationManager$YAnimation;-><init>(Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    .line 66
    .local v0, "yAnimation":Lcom/github/barteksc/pdfviewer/AnimationManager$YAnimation;
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 68
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 70
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 71
    return-void
.end method

.method public startZoomAnimation(FFFF)V
    .locals 4
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "zoomFrom"    # F
    .param p4, "zoomTo"    # F

    .line 74
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    .line 76
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    new-instance v0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;-><init>(Lcom/github/barteksc/pdfviewer/AnimationManager;FF)V

    .line 78
    .local v0, "zoomAnim":Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 79
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 81
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 82
    return-void
.end method

.method public stopAll()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopFling()V

    .line 117
    return-void
.end method

.method public stopFling()V
    .locals 2

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flinging:Z

    .line 121
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 122
    return-void
.end method
