.class public Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;
.super Landroid/widget/RelativeLayout;
.source "DefaultScrollHandle.java"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;


# static fields
.field private static final DEFAULT_TEXT_SIZE:I = 0x10

.field private static final HANDLE_LONG:I = 0x41

.field private static final HANDLE_SHORT:I = 0x28


# instance fields
.field protected context:Landroid/content/Context;

.field private currentPos:F

.field private handler:Landroid/os/Handler;

.field private hidePageScrollerRunnable:Ljava/lang/Runnable;

.field private inverted:Z

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private relativeHandlerMiddle:F

.field protected textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;-><init>(Landroid/content/Context;Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inverted"    # Z

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->relativeHandlerMiddle:F

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->handler:Landroid/os/Handler;

    .line 33
    new-instance v0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle$1;

    invoke-direct {v0, p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle$1;-><init>(Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->hidePageScrollerRunnable:Ljava/lang/Runnable;

    .line 46
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    .line 47
    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->inverted:Z

    .line 48
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->textView:Landroid/widget/TextView;

    .line 49
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setVisibility(I)V

    .line 50
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setTextColor(I)V

    .line 51
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setTextSize(I)V

    .line 52
    return-void
.end method

.method private calculateMiddle()V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getY()F

    move-result v0

    .line 150
    .local v0, "pos":F
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 151
    .local v1, "viewSize":F
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .local v2, "pdfViewSize":F
    goto :goto_0

    .line 153
    .end local v0    # "pos":F
    .end local v1    # "viewSize":F
    .end local v2    # "pdfViewSize":F
    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getX()F

    move-result v0

    .line 154
    .restart local v0    # "pos":F
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 155
    .restart local v1    # "viewSize":F
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 157
    .restart local v2    # "pdfViewSize":F
    :goto_0
    iget v3, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->relativeHandlerMiddle:F

    add-float/2addr v3, v0

    div-float/2addr v3, v2

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->relativeHandlerMiddle:F

    .line 158
    return-void
.end method

.method private isPDFViewReady()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->documentFitsView()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setPosition(F)V
    .locals 3
    .param p1, "pos"    # F

    .line 119
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .local v0, "pdfViewSize":F
    goto :goto_0

    .line 126
    .end local v0    # "pdfViewSize":F
    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 128
    .restart local v0    # "pdfViewSize":F
    :goto_0
    iget v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->relativeHandlerMiddle:F

    sub-float/2addr p1, v1

    .line 130
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    .line 131
    const/4 p1, 0x0

    goto :goto_1

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/github/barteksc/pdfviewer/util/Util;->getDP(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    .line 133
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/github/barteksc/pdfviewer/util/Util;->getDP(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    sub-float p1, v0, v1

    .line 136
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setY(F)V

    goto :goto_2

    .line 139
    :cond_4
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setX(F)V

    .line 142
    :goto_2
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->calculateMiddle()V

    .line 143
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->invalidate()V

    .line 144
    return-void

    .line 120
    .end local v0    # "pdfViewSize":F
    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public destroyLayout()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0, p0}, Lcom/github/barteksc/pdfviewer/PDFView;->removeView(Landroid/view/View;)V

    .line 104
    return-void
.end method

.method public hide()V
    .locals 1

    .line 185
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setVisibility(I)V

    .line 186
    return-void
.end method

.method public hideDelayed()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->hidePageScrollerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 206
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->isPDFViewReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 237
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 232
    :pswitch_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->hideDelayed()V

    .line 233
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->performPageSnap()V

    .line 234
    return v1

    .line 213
    :pswitch_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->stopFling()V

    .line 214
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->hidePageScrollerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->currentPos:F

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->currentPos:F

    .line 221
    :goto_0
    :pswitch_3
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v3, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->currentPos:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->relativeHandlerMiddle:F

    add-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setPosition(F)V

    .line 223
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget v3, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->relativeHandlerMiddle:F

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v3, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->setPositionOffset(FZ)V

    goto :goto_1

    .line 225
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->currentPos:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->relativeHandlerMiddle:F

    add-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setPosition(F)V

    .line 226
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget v3, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->relativeHandlerMiddle:F

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v3, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->setPositionOffset(FZ)V

    .line 228
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setPageNum(I)V
    .locals 2
    .param p1, "pageNum"    # I

    .line 167
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    return-void
.end method

.method public setScroll(F)V
    .locals 2
    .param p1, "position"    # F

    .line 108
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->shown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->show()V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->hidePageScrollerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    :goto_1
    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setPosition(F)V

    .line 116
    :cond_2
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 189
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .param p1, "size"    # I

    .line 196
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->textView:Landroid/widget/TextView;

    int-to-float v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 197
    return-void
.end method

.method public setupLayout(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 8
    .param p1, "pdfView"    # Lcom/github/barteksc/pdfviewer/PDFView;

    .line 59
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const/16 v0, 0x41

    .line 61
    .local v0, "width":I
    const/16 v1, 0x28

    .line 62
    .local v1, "height":I
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->inverted:Z

    if-eqz v2, :cond_0

    .line 63
    const/16 v2, 0x9

    .line 64
    .local v2, "align":I
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    sget v4, Lcom/github/barteksc/pdfviewer/R$drawable;->default_scroll_handle_left:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "background":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 66
    .end local v2    # "align":I
    .end local v3    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/16 v2, 0xb

    .line 67
    .restart local v2    # "align":I
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    sget v4, Lcom/github/barteksc/pdfviewer/R$drawable;->default_scroll_handle_right:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "background":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 70
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v2    # "align":I
    .end local v3    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/16 v0, 0x28

    .line 71
    .restart local v0    # "width":I
    const/16 v1, 0x41

    .line 72
    .restart local v1    # "height":I
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->inverted:Z

    if-eqz v2, :cond_2

    .line 73
    const/16 v2, 0xa

    .line 74
    .restart local v2    # "align":I
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    sget v4, Lcom/github/barteksc/pdfviewer/R$drawable;->default_scroll_handle_top:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "background":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 76
    .end local v2    # "align":I
    .end local v3    # "background":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/16 v2, 0xc

    .line 77
    .restart local v2    # "align":I
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    sget v4, Lcom/github/barteksc/pdfviewer/R$drawable;->default_scroll_handle_bottom:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 81
    .restart local v3    # "background":Landroid/graphics/drawable/Drawable;
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_3

    .line 82
    invoke-virtual {p0, v3}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p0, v3}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :goto_1
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/github/barteksc/pdfviewer/util/Util;->getDP(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/github/barteksc/pdfviewer/util/Util;->getDP(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v4, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 90
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v5, "tvlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xd

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 93
    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v6, v5}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 96
    invoke-virtual {p1, p0, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 99
    return-void
.end method

.method public show()V
    .locals 1

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setVisibility(I)V

    .line 181
    return-void
.end method

.method public shown()Z
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
