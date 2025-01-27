.class public Lcom/chaos/view/PinView;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "PinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chaos/view/PinView$DefaultActionModeCallback;,
        Lcom/chaos/view/PinView$Blink;
    }
.end annotation


# static fields
.field private static final BLINK:I = 0x1f4

.field private static final DBG:Z = false

.field private static final DEFAULT_COUNT:I = 0x4

.field private static final HIGHLIGHT_STATES:[I

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final TAG:Ljava/lang/String; = "PinView"

.field private static final VIEW_TYPE_LINE:I = 0x1

.field private static final VIEW_TYPE_NONE:I = 0x2

.field private static final VIEW_TYPE_RECTANGLE:I


# instance fields
.field private drawCursor:Z

.field private isAnimationEnable:Z

.field private isCursorVisible:Z

.field private isPasswordHidden:Z

.field private final mAnimatorTextPaint:Landroid/text/TextPaint;

.field private mBlink:Lcom/chaos/view/PinView$Blink;

.field private mCurLineColor:I

.field private mCursorColor:I

.field private mCursorHeight:F

.field private mCursorWidth:I

.field private mDefaultAddAnimator:Landroid/animation/ValueAnimator;

.field private mHideLineWhenFilled:Z

.field private mItemBackground:Landroid/graphics/drawable/Drawable;

.field private mItemBackgroundResource:I

.field private final mItemBorderRect:Landroid/graphics/RectF;

.field private final mItemCenterPoint:Landroid/graphics/PointF;

.field private final mItemLineRect:Landroid/graphics/RectF;

.field private mLineColor:Landroid/content/res/ColorStateList;

.field private mLineWidth:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mPinItemCount:I

.field private mPinItemHeight:I

.field private mPinItemRadius:I

.field private mPinItemSpacing:I

.field private mPinItemWidth:I

.field private final mTextRect:Landroid/graphics/Rect;

.field private mTransformed:Ljava/lang/String;

.field private mViewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/text/InputFilter;

    sput-object v1, Lcom/chaos/view/PinView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 74
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a1

    aput v2, v1, v0

    sput-object v1, Lcom/chaos/view/PinView;->HIGHLIGHT_STATES:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/chaos/view/PinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 126
    sget v0, Lcom/chaos/view/R$attr;->pinViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/chaos/view/PinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/chaos/view/PinView;->mAnimatorTextPaint:Landroid/text/TextPaint;

    .line 94
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/chaos/view/PinView;->mCurLineColor:I

    .line 97
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/chaos/view/PinView;->mTextRect:Landroid/graphics/Rect;

    .line 98
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    .line 99
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/chaos/view/PinView;->mItemLineRect:Landroid/graphics/RectF;

    .line 100
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    .line 101
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/chaos/view/PinView;->mItemCenterPoint:Landroid/graphics/PointF;

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chaos/view/PinView;->isAnimationEnable:Z

    .line 132
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 134
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    .line 135
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 141
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    sget-object v5, Lcom/chaos/view/R$styleable;->PinView:[I

    invoke-virtual {v0, p2, v5, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 143
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/chaos/view/R$styleable;->PinView_viewType:I

    invoke-virtual {v5, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/chaos/view/PinView;->mViewType:I

    .line 144
    sget v6, Lcom/chaos/view/R$styleable;->PinView_itemCount:I

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/chaos/view/PinView;->mPinItemCount:I

    .line 145
    sget v6, Lcom/chaos/view/R$styleable;->PinView_itemHeight:I

    sget v7, Lcom/chaos/view/R$dimen;->pv_pin_view_item_size:I

    .line 146
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    .line 145
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/chaos/view/PinView;->mPinItemHeight:I

    .line 147
    sget v6, Lcom/chaos/view/R$styleable;->PinView_itemWidth:I

    sget v7, Lcom/chaos/view/R$dimen;->pv_pin_view_item_size:I

    .line 148
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    .line 147
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/chaos/view/PinView;->mPinItemWidth:I

    .line 149
    sget v6, Lcom/chaos/view/R$styleable;->PinView_itemSpacing:I

    sget v7, Lcom/chaos/view/R$dimen;->pv_pin_view_item_spacing:I

    .line 150
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 149
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/chaos/view/PinView;->mPinItemSpacing:I

    .line 151
    sget v6, Lcom/chaos/view/R$styleable;->PinView_itemRadius:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/chaos/view/PinView;->mPinItemRadius:I

    .line 152
    sget v6, Lcom/chaos/view/R$styleable;->PinView_lineWidth:I

    sget v7, Lcom/chaos/view/R$dimen;->pv_pin_view_item_line_width:I

    .line 153
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    .line 152
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/chaos/view/PinView;->mLineWidth:I

    .line 154
    sget v6, Lcom/chaos/view/R$styleable;->PinView_lineColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/chaos/view/PinView;->mLineColor:Landroid/content/res/ColorStateList;

    .line 155
    sget v6, Lcom/chaos/view/R$styleable;->PinView_android_cursorVisible:I

    invoke-virtual {v5, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/chaos/view/PinView;->isCursorVisible:Z

    .line 156
    sget v4, Lcom/chaos/view/R$styleable;->PinView_cursorColor:I

    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getCurrentTextColor()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/chaos/view/PinView;->mCursorColor:I

    .line 157
    sget v4, Lcom/chaos/view/R$styleable;->PinView_cursorWidth:I

    sget v6, Lcom/chaos/view/R$dimen;->pv_pin_view_cursor_width:I

    .line 158
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 157
    invoke-virtual {v5, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/chaos/view/PinView;->mCursorWidth:I

    .line 160
    sget v4, Lcom/chaos/view/R$styleable;->PinView_android_itemBackground:I

    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/chaos/view/PinView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    .line 161
    sget v4, Lcom/chaos/view/R$styleable;->PinView_hideLineWhenFilled:I

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chaos/view/PinView;->mHideLineWhenFilled:Z

    .line 163
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    iget-object v1, p0, Lcom/chaos/view/PinView;->mLineColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/chaos/view/PinView;->mCurLineColor:I

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/chaos/view/PinView;->updateCursorHeight()V

    .line 170
    invoke-direct {p0}, Lcom/chaos/view/PinView;->checkItemRadius()V

    .line 172
    iget v1, p0, Lcom/chaos/view/PinView;->mPinItemCount:I

    invoke-direct {p0, v1}, Lcom/chaos/view/PinView;->setMaxLength(I)V

    .line 173
    iget v1, p0, Lcom/chaos/view/PinView;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    invoke-direct {p0}, Lcom/chaos/view/PinView;->setupAnimator()V

    .line 176
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/chaos/view/PinView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 177
    invoke-direct {p0}, Lcom/chaos/view/PinView;->disableSelectionMenu()V

    .line 180
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getInputType()I

    move-result v1

    invoke-static {v1}, Lcom/chaos/view/PinView;->isPasswordInputType(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chaos/view/PinView;->isPasswordHidden:Z

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/chaos/view/PinView;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lcom/chaos/view/PinView;

    .line 62
    iget-object v0, p0, Lcom/chaos/view/PinView;->mAnimatorTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$300(Lcom/chaos/view/PinView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/chaos/view/PinView;

    .line 62
    invoke-direct {p0}, Lcom/chaos/view/PinView;->shouldBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/chaos/view/PinView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/chaos/view/PinView;

    .line 62
    iget-boolean v0, p0, Lcom/chaos/view/PinView;->drawCursor:Z

    return v0
.end method

.method static synthetic access$500(Lcom/chaos/view/PinView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/chaos/view/PinView;
    .param p1, "x1"    # Z

    .line 62
    invoke-direct {p0, p1}, Lcom/chaos/view/PinView;->invalidateCursor(Z)V

    return-void
.end method

.method private checkItemRadius()V
    .locals 3

    .line 247
    iget v0, p0, Lcom/chaos/view/PinView;->mViewType:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 248
    iget v0, p0, Lcom/chaos/view/PinView;->mLineWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 249
    .local v0, "halfOfLineWidth":F
    iget v1, p0, Lcom/chaos/view/PinView;->mPinItemRadius:I

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_0

    .end local v0    # "halfOfLineWidth":F
    goto :goto_0

    .line 250
    .restart local v0    # "halfOfLineWidth":F
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The itemRadius can not be greater than lineWidth when viewType is line"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    .end local v0    # "halfOfLineWidth":F
    :cond_1
    if-nez v0, :cond_3

    .line 253
    iget v0, p0, Lcom/chaos/view/PinView;->mPinItemWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 254
    .local v0, "halfOfItemWidth":F
    iget v1, p0, Lcom/chaos/view/PinView;->mPinItemRadius:I

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_2

    goto :goto_1

    .line 255
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The itemRadius can not be greater than itemWidth"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    .end local v0    # "halfOfItemWidth":F
    :cond_3
    :goto_0
    nop

    .line 258
    :goto_1
    return-void
.end method

.method private disableSelectionMenu()V
    .locals 2

    .line 1112
    new-instance v0, Lcom/chaos/view/PinView$DefaultActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chaos/view/PinView$DefaultActionModeCallback;-><init>(Lcom/chaos/view/PinView$1;)V

    invoke-virtual {p0, v0}, Lcom/chaos/view/PinView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 1113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 1114
    new-instance v0, Lcom/chaos/view/PinView$2;

    invoke-direct {v0, p0}, Lcom/chaos/view/PinView$2;-><init>(Lcom/chaos/view/PinView;)V

    invoke-virtual {p0, v0}, Lcom/chaos/view/PinView;->setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 1122
    :cond_0
    return-void
.end method

.method private dpToPx(F)I
    .locals 2
    .param p1, "dp"    # F

    .line 1131
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private drawAnchorLine(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 632
    iget-object v0, p0, Lcom/chaos/view/PinView;->mItemCenterPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 633
    .local v0, "cx":F
    iget-object v1, p0, Lcom/chaos/view/PinView;->mItemCenterPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 634
    .local v1, "cy":F
    iget-object v2, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 635
    iget-object v2, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 636
    iget-object v2, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 638
    iget-object v2, p0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 639
    iget-object v2, p0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 640
    iget-object v2, p0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 641
    iget-object v2, p0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 643
    iget-object v2, p0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 644
    iget-object v2, p0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 645
    iget-object v2, p0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 646
    iget-object v2, p0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 648
    iget-object v2, p0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 650
    iget-object v2, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/chaos/view/PinView;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 651
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "i"    # I

    .line 613
    invoke-direct {p0, p2}, Lcom/chaos/view/PinView;->getPaintByIndex(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 614
    .local v0, "paint":Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/chaos/view/PinView;->mItemCenterPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 615
    .local v1, "cx":F
    iget-object v2, p0, Lcom/chaos/view/PinView;->mItemCenterPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 616
    .local v2, "cy":F
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 617
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 495
    iget-boolean v0, p0, Lcom/chaos/view/PinView;->drawCursor:Z

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/chaos/view/PinView;->mItemCenterPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 497
    .local v0, "cx":F
    iget-object v1, p0, Lcom/chaos/view/PinView;->mItemCenterPoint:Landroid/graphics/PointF;

    iget v7, v1, Landroid/graphics/PointF;->y:F

    .line 498
    .local v7, "cy":F
    move v2, v0

    .line 499
    .local v2, "x":F
    iget v1, p0, Lcom/chaos/view/PinView;->mCursorHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float v8, v7, v1

    .line 501
    .local v8, "y":F
    iget-object v1, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    .line 502
    .local v9, "color":I
    iget-object v1, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v10

    .line 503
    .local v10, "width":F
    iget-object v1, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/chaos/view/PinView;->mCursorColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 504
    iget-object v1, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/chaos/view/PinView;->mCursorWidth:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 506
    iget v1, p0, Lcom/chaos/view/PinView;->mCursorHeight:F

    add-float v5, v8, v1

    iget-object v6, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v8

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 508
    iget-object v1, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 509
    iget-object v1, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 511
    .end local v0    # "cx":F
    .end local v2    # "x":F
    .end local v7    # "cy":F
    .end local v8    # "y":F
    .end local v9    # "color":I
    .end local v10    # "width":F
    :cond_0
    return-void
.end method

.method private drawHint(Landroid/graphics/Canvas;I)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "i"    # I

    .line 598
    invoke-direct {p0, p2}, Lcom/chaos/view/PinView;->getPaintByIndex(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 599
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getCurrentHintTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 600
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/chaos/view/PinView;->drawTextAtBox(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/CharSequence;I)V

    .line 601
    return-void
.end method

.method private drawItemBackground(Landroid/graphics/Canvas;Z)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Z

    .line 426
    iget-object v0, p0, Lcom/chaos/view/PinView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 427
    return-void

    .line 429
    :cond_0
    iget v0, p0, Lcom/chaos/view/PinView;->mLineWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 430
    .local v0, "delta":F
    iget-object v1, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 431
    .local v1, "left":I
    iget-object v2, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 432
    .local v2, "top":I
    iget-object v3, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 433
    .local v3, "right":I
    iget-object v4, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 435
    .local v4, "bottom":I
    iget-object v5, p0, Lcom/chaos/view/PinView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 436
    iget-object v5, p0, Lcom/chaos/view/PinView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    sget-object v6, Lcom/chaos/view/PinView;->HIGHLIGHT_STATES:[I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getDrawableState()[I

    move-result-object v6

    :goto_0
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 437
    iget-object v5, p0, Lcom/chaos/view/PinView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 438
    return-void
.end method

.method private drawPinBox(Landroid/graphics/Canvas;I)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "i"    # I

    .line 457
    iget-boolean v0, p0, Lcom/chaos/view/PinView;->mHideLineWhenFilled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 458
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 461
    return-void
.end method

.method private drawPinLine(Landroid/graphics/Canvas;I)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "i"    # I

    .line 464
    iget-boolean v0, p0, Lcom/chaos/view/PinView;->mHideLineWhenFilled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 465
    return-void

    .line 468
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .local v1, "r":Z
    move v2, v0

    .line 469
    .local v2, "l":Z
    iget v3, p0, Lcom/chaos/view/PinView;->mPinItemSpacing:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/chaos/view/PinView;->mPinItemCount:I

    if-le v3, v0, :cond_3

    .line 470
    if-nez p2, :cond_1

    .line 472
    const/4 v1, 0x0

    goto :goto_0

    .line 473
    :cond_1
    sub-int/2addr v3, v0

    if-ne p2, v3, :cond_2

    .line 475
    const/4 v2, 0x0

    goto :goto_0

    .line 478
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    .line 481
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 482
    iget-object v0, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/chaos/view/PinView;->mLineWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 483
    iget v0, p0, Lcom/chaos/view/PinView;->mLineWidth:I

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 484
    .local v0, "halfLineWidth":F
    iget-object v3, p0, Lcom/chaos/view/PinView;->mItemLineRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v0

    iget-object v5, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v0

    iget-object v6, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 490
    iget-object v4, p0, Lcom/chaos/view/PinView;->mItemLineRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/chaos/view/PinView;->mPinItemRadius:I

    int-to-float v5, v3

    int-to-float v6, v3

    move-object v3, p0

    move v7, v2

    move v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/chaos/view/PinView;->updateRoundRectPath(Landroid/graphics/RectF;FFZZ)V

    .line 491
    iget-object v3, p0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 492
    return-void
.end method

.method private drawPinView(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 369
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 370
    .local v0, "highlightIdx":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/chaos/view/PinView;->mPinItemCount:I

    if-ge v1, v2, :cond_9

    .line 371
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->isFocused()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-ne v0, v1, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 372
    .local v2, "highlight":Z
    :goto_1
    iget-object v4, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    sget-object v5, Lcom/chaos/view/PinView;->HIGHLIGHT_STATES:[I

    invoke-direct {p0, v5}, Lcom/chaos/view/PinView;->getLineColorForState([I)I

    move-result v5

    goto :goto_2

    :cond_1
    iget v5, p0, Lcom/chaos/view/PinView;->mCurLineColor:I

    :goto_2
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    invoke-direct {p0, v1}, Lcom/chaos/view/PinView;->updateItemRectF(I)V

    .line 375
    invoke-direct {p0}, Lcom/chaos/view/PinView;->updateCenterPoint()V

    .line 377
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 378
    iget v4, p0, Lcom/chaos/view/PinView;->mViewType:I

    if-nez v4, :cond_2

    .line 379
    invoke-direct {p0, v1}, Lcom/chaos/view/PinView;->updatePinBoxPath(I)V

    .line 380
    iget-object v4, p0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 382
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/chaos/view/PinView;->drawItemBackground(Landroid/graphics/Canvas;Z)V

    .line 383
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 385
    if-eqz v2, :cond_3

    .line 386
    invoke-direct {p0, p1}, Lcom/chaos/view/PinView;->drawCursor(Landroid/graphics/Canvas;)V

    .line 389
    :cond_3
    iget v4, p0, Lcom/chaos/view/PinView;->mViewType:I

    if-nez v4, :cond_4

    .line 390
    invoke-direct {p0, p1, v1}, Lcom/chaos/view/PinView;->drawPinBox(Landroid/graphics/Canvas;I)V

    goto :goto_3

    .line 391
    :cond_4
    if-ne v4, v3, :cond_5

    .line 392
    invoke-direct {p0, p1, v1}, Lcom/chaos/view/PinView;->drawPinLine(Landroid/graphics/Canvas;I)V

    .line 399
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/chaos/view/PinView;->mTransformed:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_7

    .line 400
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/chaos/view/PinView;->isPasswordHidden:Z

    if-eqz v3, :cond_6

    .line 401
    invoke-direct {p0, p1, v1}, Lcom/chaos/view/PinView;->drawCircle(Landroid/graphics/Canvas;I)V

    goto :goto_4

    .line 403
    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/chaos/view/PinView;->drawText(Landroid/graphics/Canvas;I)V

    goto :goto_4

    .line 405
    :cond_7
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v4, p0, Lcom/chaos/view/PinView;->mPinItemCount:I

    if-ne v3, v4, :cond_8

    .line 406
    invoke-direct {p0, p1, v1}, Lcom/chaos/view/PinView;->drawHint(Landroid/graphics/Canvas;I)V

    .line 370
    .end local v2    # "highlight":Z
    :cond_8
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 411
    .end local v1    # "i":I
    :cond_9
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iget v2, p0, Lcom/chaos/view/PinView;->mPinItemCount:I

    if-eq v1, v2, :cond_a

    iget v1, p0, Lcom/chaos/view/PinView;->mViewType:I

    if-nez v1, :cond_a

    .line 412
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 413
    .local v1, "index":I
    invoke-direct {p0, v1}, Lcom/chaos/view/PinView;->updateItemRectF(I)V

    .line 414
    invoke-direct {p0}, Lcom/chaos/view/PinView;->updateCenterPoint()V

    .line 415
    invoke-direct {p0, v1}, Lcom/chaos/view/PinView;->updatePinBoxPath(I)V

    .line 416
    iget-object v2, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Lcom/chaos/view/PinView;->HIGHLIGHT_STATES:[I

    invoke-direct {p0, v3}, Lcom/chaos/view/PinView;->getLineColorForState([I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    invoke-direct {p0, p1, v1}, Lcom/chaos/view/PinView;->drawPinBox(Landroid/graphics/Canvas;I)V

    .line 419
    .end local v1    # "index":I
    :cond_a
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;I)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "i"    # I

    .line 587
    invoke-direct {p0, p2}, Lcom/chaos/view/PinView;->getPaintByIndex(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 594
    .local v0, "paint":Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/chaos/view/PinView;->mTransformed:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/chaos/view/PinView;->drawTextAtBox(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/CharSequence;I)V

    .line 595
    return-void
.end method

.method private drawTextAtBox(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/CharSequence;I)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "charAt"    # I

    .line 604
    move-object v0, p0

    move/from16 v8, p4

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v8, 0x1

    iget-object v3, v0, Lcom/chaos/view/PinView;->mTextRect:Landroid/graphics/Rect;

    move-object/from16 v9, p2

    invoke-virtual {v9, v1, v8, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 605
    iget-object v1, v0, Lcom/chaos/view/PinView;->mItemCenterPoint:Landroid/graphics/PointF;

    iget v10, v1, Landroid/graphics/PointF;->x:F

    .line 606
    .local v10, "cx":F
    iget-object v1, v0, Lcom/chaos/view/PinView;->mItemCenterPoint:Landroid/graphics/PointF;

    iget v11, v1, Landroid/graphics/PointF;->y:F

    .line 607
    .local v11, "cy":F
    iget-object v1, v0, Lcom/chaos/view/PinView;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, v10, v1

    iget-object v3, v0, Lcom/chaos/view/PinView;->mTextRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float v12, v1, v3

    .line 608
    .local v12, "x":F
    iget-object v1, v0, Lcom/chaos/view/PinView;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v2

    add-float/2addr v1, v11

    iget-object v2, v0, Lcom/chaos/view/PinView;->mTextRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v13, v1, v2

    .line 609
    .local v13, "y":F
    add-int/lit8 v4, v8, 0x1

    move-object v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move v5, v12

    move v6, v13

    move-object/from16 v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 610
    return-void
.end method

.method private varargs getLineColorForState([I)I
    .locals 2
    .param p1, "states"    # [I

    .line 422
    iget-object v0, p0, Lcom/chaos/view/PinView;->mLineColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/chaos/view/PinView;->mCurLineColor:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/chaos/view/PinView;->mCurLineColor:I

    :goto_0
    return v0
.end method

.method private getPaintByIndex(I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "i"    # I

    .line 620
    iget-boolean v0, p0, Lcom/chaos/view/PinView;->isAnimationEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/chaos/view/PinView;->mAnimatorTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 622
    iget-object v0, p0, Lcom/chaos/view/PinView;->mAnimatorTextPaint:Landroid/text/TextPaint;

    return-object v0

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method private invalidateCursor(Z)V
    .locals 1
    .param p1, "showCursor"    # Z

    .line 1069
    iget-boolean v0, p0, Lcom/chaos/view/PinView;->drawCursor:Z

    if-eq v0, p1, :cond_0

    .line 1070
    iput-boolean p1, p0, Lcom/chaos/view/PinView;->drawCursor:Z

    .line 1071
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->invalidate()V

    .line 1073
    :cond_0
    return-void
.end method

.method private static isPasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .line 680
    and-int/lit16 v0, p0, 0xfff

    .line 682
    .local v0, "variation":I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private makeBlink()V
    .locals 3

    .line 1040
    invoke-direct {p0}, Lcom/chaos/view/PinView;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/chaos/view/PinView;->mBlink:Lcom/chaos/view/PinView$Blink;

    if-nez v0, :cond_0

    .line 1042
    new-instance v0, Lcom/chaos/view/PinView$Blink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chaos/view/PinView$Blink;-><init>(Lcom/chaos/view/PinView;Lcom/chaos/view/PinView$1;)V

    iput-object v0, p0, Lcom/chaos/view/PinView;->mBlink:Lcom/chaos/view/PinView$Blink;

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/chaos/view/PinView;->mBlink:Lcom/chaos/view/PinView$Blink;

    invoke-virtual {p0, v0}, Lcom/chaos/view/PinView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1045
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chaos/view/PinView;->drawCursor:Z

    .line 1046
    iget-object v0, p0, Lcom/chaos/view/PinView;->mBlink:Lcom/chaos/view/PinView$Blink;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/chaos/view/PinView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/chaos/view/PinView;->mBlink:Lcom/chaos/view/PinView$Blink;

    if-eqz v0, :cond_2

    .line 1049
    invoke-virtual {p0, v0}, Lcom/chaos/view/PinView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1052
    :cond_2
    :goto_0
    return-void
.end method

.method private moveSelectionToEnd()V
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chaos/view/PinView;->setSelection(I)V

    .line 340
    return-void
.end method

.method private resumeBlink()V
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/chaos/view/PinView;->mBlink:Lcom/chaos/view/PinView$Blink;

    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {v0}, Lcom/chaos/view/PinView$Blink;->uncancel()V

    .line 1064
    invoke-direct {p0}, Lcom/chaos/view/PinView;->makeBlink()V

    .line 1066
    :cond_0
    return-void
.end method

.method private setMaxLength(I)V
    .locals 3
    .param p1, "maxLength"    # I

    .line 223
    if-ltz p1, :cond_0

    .line 224
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/chaos/view/PinView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 226
    :cond_0
    sget-object v0, Lcom/chaos/view/PinView;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Lcom/chaos/view/PinView;->setFilters([Landroid/text/InputFilter;)V

    .line 228
    :goto_0
    return-void
.end method

.method private setupAnimator()V
    .locals 3

    .line 231
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/chaos/view/PinView;->mDefaultAddAnimator:Landroid/animation/ValueAnimator;

    .line 232
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 233
    iget-object v0, p0, Lcom/chaos/view/PinView;->mDefaultAddAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 234
    iget-object v0, p0, Lcom/chaos/view/PinView;->mDefaultAddAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/chaos/view/PinView$1;

    invoke-direct {v1, p0}, Lcom/chaos/view/PinView$1;-><init>(Lcom/chaos/view/PinView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 244
    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private shouldBlink()Z
    .locals 1

    .line 1036
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->isCursorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chaos/view/PinView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private suspendBlink()V
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/chaos/view/PinView;->mBlink:Lcom/chaos/view/PinView$Blink;

    if-eqz v0, :cond_0

    .line 1056
    invoke-static {v0}, Lcom/chaos/view/PinView$Blink;->access$200(Lcom/chaos/view/PinView$Blink;)V

    .line 1057
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chaos/view/PinView;->invalidateCursor(Z)V

    .line 1059
    :cond_0
    return-void
.end method

.method private updateCenterPoint()V
    .locals 4

    .line 674
    iget-object v0, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 675
    .local v0, "cx":F
    iget-object v1, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 676
    .local v1, "cy":F
    iget-object v2, p0, Lcom/chaos/view/PinView;->mItemCenterPoint:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 677
    return-void
.end method

.method private updateColors()V
    .locals 4

    .line 654
    const/4 v0, 0x0

    .line 657
    .local v0, "inval":Z
    iget-object v1, p0, Lcom/chaos/view/PinView;->mLineColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .local v1, "color":I
    goto :goto_0

    .line 660
    .end local v1    # "color":I
    :cond_0
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getCurrentTextColor()I

    move-result v1

    .line 663
    .restart local v1    # "color":I
    :goto_0
    iget v2, p0, Lcom/chaos/view/PinView;->mCurLineColor:I

    if-eq v1, v2, :cond_1

    .line 664
    iput v1, p0, Lcom/chaos/view/PinView;->mCurLineColor:I

    .line 665
    const/4 v0, 0x1

    .line 668
    :cond_1
    if-eqz v0, :cond_2

    .line 669
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->invalidate()V

    .line 671
    :cond_2
    return-void
.end method

.method private updateCursorHeight()V
    .locals 3

    .line 1076
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Lcom/chaos/view/PinView;->dpToPx(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 1077
    .local v0, "delta":I
    iget v1, p0, Lcom/chaos/view/PinView;->mPinItemHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getTextSize()F

    move-result v2

    sub-float/2addr v1, v2

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getTextSize()F

    move-result v1

    int-to-float v2, v0

    add-float/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getTextSize()F

    move-result v1

    :goto_0
    iput v1, p0, Lcom/chaos/view/PinView;->mCursorHeight:F

    .line 1078
    return-void
.end method

.method private updateItemRectF(I)V
    .locals 6
    .param p1, "i"    # I

    .line 574
    iget v0, p0, Lcom/chaos/view/PinView;->mLineWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 575
    .local v0, "halfLineWidth":F
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getScrollX()I

    move-result v1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/chaos/view/PinView;->mPinItemSpacing:I

    iget v3, p0, Lcom/chaos/view/PinView;->mPinItemWidth:I

    add-int v4, v2, v3

    mul-int/2addr v4, p1

    add-int/2addr v1, v4

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 576
    .local v1, "left":F
    if-nez v2, :cond_0

    if-lez p1, :cond_0

    .line 577
    iget v2, p0, Lcom/chaos/view/PinView;->mLineWidth:I

    mul-int/2addr v2, p1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 579
    :cond_0
    int-to-float v2, v3

    add-float/2addr v2, v1

    iget v3, p0, Lcom/chaos/view/PinView;->mLineWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 580
    .local v2, "right":F
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v3, v0

    .line 581
    .local v3, "top":F
    iget v4, p0, Lcom/chaos/view/PinView;->mPinItemHeight:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget v5, p0, Lcom/chaos/view/PinView;->mLineWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 583
    .local v4, "bottom":F
    iget-object v5, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v1, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 584
    return-void
.end method

.method private updatePaints()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/chaos/view/PinView;->mCurLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 363
    iget-object v0, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 364
    iget-object v0, p0, Lcom/chaos/view/PinView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/chaos/view/PinView;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 365
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 366
    return-void
.end method

.method private updatePinBoxPath(I)V
    .locals 8
    .param p1, "i"    # I

    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, "drawRightCorner":Z
    const/4 v1, 0x0

    .line 443
    .local v1, "drawLeftCorner":Z
    iget v2, p0, Lcom/chaos/view/PinView;->mPinItemSpacing:I

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 444
    move v0, v3

    move v1, v3

    goto :goto_0

    .line 446
    :cond_0
    if-nez p1, :cond_1

    iget v2, p0, Lcom/chaos/view/PinView;->mPinItemCount:I

    sub-int/2addr v2, v3

    if-eq p1, v2, :cond_1

    .line 447
    const/4 v1, 0x1

    .line 449
    :cond_1
    iget v2, p0, Lcom/chaos/view/PinView;->mPinItemCount:I

    sub-int/2addr v2, v3

    if-ne p1, v2, :cond_2

    if-eqz p1, :cond_2

    .line 450
    const/4 v0, 0x1

    .line 453
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/chaos/view/PinView;->mItemBorderRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/chaos/view/PinView;->mPinItemRadius:I

    int-to-float v4, v2

    int-to-float v5, v2

    move-object v2, p0

    move v6, v1

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/chaos/view/PinView;->updateRoundRectPath(Landroid/graphics/RectF;FFZZ)V

    .line 454
    return-void
.end method

.method private updateRoundRectPath(Landroid/graphics/RectF;FFZZ)V
    .locals 8
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "l"    # Z
    .param p5, "r"    # Z

    .line 514
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p5

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/chaos/view/PinView;->updateRoundRectPath(Landroid/graphics/RectF;FFZZZZ)V

    .line 515
    return-void
.end method

.method private updateRoundRectPath(Landroid/graphics/RectF;FFZZZZ)V
    .locals 16
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "tl"    # Z
    .param p5, "tr"    # Z
    .param p6, "br"    # Z
    .param p7, "bl"    # Z

    .line 519
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 521
    iget v4, v1, Landroid/graphics/RectF;->left:F

    .line 522
    .local v4, "l":F
    iget v5, v1, Landroid/graphics/RectF;->top:F

    .line 523
    .local v5, "t":F
    iget v6, v1, Landroid/graphics/RectF;->right:F

    .line 524
    .local v6, "r":F
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    .line 526
    .local v7, "b":F
    sub-float v8, v6, v4

    .line 527
    .local v8, "w":F
    sub-float v9, v7, v5

    .line 529
    .local v9, "h":F
    const/high16 v10, 0x40000000    # 2.0f

    mul-float v11, v2, v10

    sub-float v11, v8, v11

    .line 530
    .local v11, "lw":F
    mul-float/2addr v10, v3

    sub-float v10, v9, v10

    .line 532
    .local v10, "lh":F
    iget-object v12, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    add-float v13, v5, v3

    invoke-virtual {v12, v4, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 534
    const/4 v12, 0x0

    if-eqz p4, :cond_0

    .line 535
    iget-object v13, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    neg-float v14, v3

    neg-float v15, v3

    invoke-virtual {v13, v12, v14, v2, v15}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_0

    .line 537
    :cond_0
    iget-object v13, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    neg-float v14, v3

    invoke-virtual {v13, v12, v14}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 538
    iget-object v13, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v13, v2, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 541
    :goto_0
    iget-object v13, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v13, v11, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 543
    if-eqz p5, :cond_1

    .line 544
    iget-object v13, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v13, v2, v12, v2, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_1

    .line 546
    :cond_1
    iget-object v13, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v13, v2, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 547
    iget-object v13, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v13, v12, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 550
    :goto_1
    iget-object v13, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v13, v12, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 552
    if-eqz p6, :cond_2

    .line 553
    iget-object v13, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    neg-float v14, v2

    invoke-virtual {v13, v12, v3, v14, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_2

    .line 555
    :cond_2
    iget-object v13, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v13, v12, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 556
    iget-object v13, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    neg-float v14, v2

    invoke-virtual {v13, v14, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 559
    :goto_2
    iget-object v13, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    neg-float v14, v11

    invoke-virtual {v13, v14, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 561
    if-eqz p7, :cond_3

    .line 562
    iget-object v13, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    neg-float v14, v2

    neg-float v15, v2

    neg-float v1, v3

    invoke-virtual {v13, v14, v12, v15, v1}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_3

    .line 564
    :cond_3
    iget-object v1, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    neg-float v13, v2

    invoke-virtual {v1, v13, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 565
    iget-object v1, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    neg-float v13, v3

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 568
    :goto_3
    iget-object v1, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    neg-float v13, v10

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 570
    iget-object v1, v0, Lcom/chaos/view/PinView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 571
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 344
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->drawableStateChanged()V

    .line 346
    iget-object v0, p0, Lcom/chaos/view/PinView;->mLineColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/chaos/view/PinView;->updateColors()V

    .line 349
    :cond_1
    return-void
.end method

.method public getCurrentLineColor()I
    .locals 1

    .line 746
    iget v0, p0, Lcom/chaos/view/PinView;->mCurLineColor:I

    return v0
.end method

.method public getCursorColor()I
    .locals 1

    .line 993
    iget v0, p0, Lcom/chaos/view/PinView;->mCursorColor:I

    return v0
.end method

.method public getCursorWidth()I
    .locals 1

    .line 967
    iget v0, p0, Lcom/chaos/view/PinView;->mCursorWidth:I

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .line 693
    invoke-static {}, Lcom/chaos/view/DefaultMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 786
    iget v0, p0, Lcom/chaos/view/PinView;->mPinItemCount:I

    return v0
.end method

.method public getItemHeight()I
    .locals 1

    .line 846
    iget v0, p0, Lcom/chaos/view/PinView;->mPinItemHeight:I

    return v0
.end method

.method public getItemRadius()I
    .locals 1

    .line 806
    iget v0, p0, Lcom/chaos/view/PinView;->mPinItemRadius:I

    return v0
.end method

.method public getItemSpacing()I
    .locals 1

    .line 826
    iget v0, p0, Lcom/chaos/view/PinView;->mPinItemSpacing:I

    return v0
.end method

.method public getItemWidth()I
    .locals 1

    .line 866
    iget v0, p0, Lcom/chaos/view/PinView;->mPinItemWidth:I

    return v0
.end method

.method public getLineColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/chaos/view/PinView;->mLineColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLineWidth()I
    .locals 1

    .line 766
    iget v0, p0, Lcom/chaos/view/PinView;->mLineWidth:I

    return v0
.end method

.method public isCursorVisible()Z
    .locals 1

    .line 1007
    iget-boolean v0, p0, Lcom/chaos/view/PinView;->isCursorVisible:Z

    return v0
.end method

.method public isPasswordHidden()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/chaos/view/PinView;->isPasswordHidden:Z

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .locals 1

    .line 1126
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1025
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onAttachedToWindow()V

    .line 1026
    invoke-direct {p0}, Lcom/chaos/view/PinView;->resumeBlink()V

    .line 1027
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1031
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onDetachedFromWindow()V

    .line 1032
    invoke-direct {p0}, Lcom/chaos/view/PinView;->suspendBlink()V

    .line 1033
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 353
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 355
    invoke-direct {p0}, Lcom/chaos/view/PinView;->updatePaints()V

    .line 356
    invoke-direct {p0, p1}, Lcom/chaos/view/PinView;->drawPinView(Landroid/graphics/Canvas;)V

    .line 358
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 359
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 321
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 323
    if-eqz p1, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/chaos/view/PinView;->moveSelectionToEnd()V

    .line 325
    invoke-direct {p0}, Lcom/chaos/view/PinView;->makeBlink()V

    .line 327
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 262
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 263
    .local v0, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 264
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 265
    .local v2, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 270
    .local v3, "heightSize":I
    iget v4, p0, Lcom/chaos/view/PinView;->mPinItemHeight:I

    .line 272
    .local v4, "boxHeight":I
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v0, v5, :cond_0

    .line 274
    move v6, v2

    .local v6, "width":I
    goto :goto_0

    .line 276
    .end local v6    # "width":I
    :cond_0
    iget v6, p0, Lcom/chaos/view/PinView;->mPinItemCount:I

    add-int/lit8 v7, v6, -0x1

    iget v8, p0, Lcom/chaos/view/PinView;->mPinItemSpacing:I

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/chaos/view/PinView;->mPinItemWidth:I

    mul-int/2addr v6, v8

    add-int/2addr v7, v6

    .line 277
    .local v7, "boxesWidth":I
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v6

    add-int/2addr v6, v7

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v8

    add-int/2addr v6, v8

    .line 278
    .restart local v6    # "width":I
    iget v8, p0, Lcom/chaos/view/PinView;->mPinItemSpacing:I

    if-nez v8, :cond_1

    .line 279
    iget v8, p0, Lcom/chaos/view/PinView;->mPinItemCount:I

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Lcom/chaos/view/PinView;->mLineWidth:I

    mul-int/2addr v8, v9

    sub-int/2addr v6, v8

    .line 283
    .end local v7    # "boxesWidth":I
    :cond_1
    :goto_0
    if-ne v1, v5, :cond_2

    .line 285
    move v5, v3

    .local v5, "height":I
    goto :goto_1

    .line 287
    .end local v5    # "height":I
    :cond_2
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v5, v7

    .line 290
    .restart local v5    # "height":I
    :goto_1
    invoke-virtual {p0, v6, v5}, Lcom/chaos/view/PinView;->setMeasuredDimension(II)V

    .line 291
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 0
    .param p1, "screenState"    # I

    .line 1012
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onScreenStateChanged(I)V

    .line 1013
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1015
    :pswitch_0
    invoke-direct {p0}, Lcom/chaos/view/PinView;->resumeBlink()V

    .line 1016
    goto :goto_0

    .line 1018
    :pswitch_1
    invoke-direct {p0}, Lcom/chaos/view/PinView;->suspendBlink()V

    .line 1021
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .line 331
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onSelectionChanged(II)V

    .line 333
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/chaos/view/PinView;->moveSelectionToEnd()V

    .line 336
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .line 295
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/chaos/view/PinView;->moveSelectionToEnd()V

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/chaos/view/PinView;->makeBlink()V

    .line 301
    iget-boolean v0, p0, Lcom/chaos/view/PinView;->isAnimationEnable:Z

    if-eqz v0, :cond_2

    .line 302
    sub-int v0, p4, p3

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 303
    .local v0, "isAdd":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 304
    iget-object v1, p0, Lcom/chaos/view/PinView;->mDefaultAddAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 305
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 306
    iget-object v1, p0, Lcom/chaos/view/PinView;->mDefaultAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 311
    .end local v0    # "isAdd":Z
    :cond_2
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 312
    .local v0, "transformation":Landroid/text/method/TransformationMethod;
    if-nez v0, :cond_3

    .line 313
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chaos/view/PinView;->mTransformed:Ljava/lang/String;

    goto :goto_1

    .line 315
    :cond_3
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chaos/view/PinView;->mTransformed:Ljava/lang/String;

    .line 317
    :goto_1
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 876
    iput-boolean p1, p0, Lcom/chaos/view/PinView;->isAnimationEnable:Z

    .line 877
    return-void
.end method

.method public setCursorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 980
    iput p1, p0, Lcom/chaos/view/PinView;->mCursorColor:I

    .line 981
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->isCursorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/chaos/view/PinView;->invalidateCursor(Z)V

    .line 984
    :cond_0
    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 998
    iget-boolean v0, p0, Lcom/chaos/view/PinView;->isCursorVisible:Z

    if-eq v0, p1, :cond_0

    .line 999
    iput-boolean p1, p0, Lcom/chaos/view/PinView;->isCursorVisible:Z

    .line 1000
    invoke-direct {p0, p1}, Lcom/chaos/view/PinView;->invalidateCursor(Z)V

    .line 1001
    invoke-direct {p0}, Lcom/chaos/view/PinView;->makeBlink()V

    .line 1003
    :cond_0
    return-void
.end method

.method public setCursorWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .line 956
    iput p1, p0, Lcom/chaos/view/PinView;->mCursorWidth:I

    .line 957
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->isCursorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/chaos/view/PinView;->invalidateCursor(Z)V

    .line 960
    :cond_0
    return-void
.end method

.method public setHideLineWhenFilled(Z)V
    .locals 0
    .param p1, "hideLineWhenFilled"    # Z

    .line 888
    iput-boolean p1, p0, Lcom/chaos/view/PinView;->mHideLineWhenFilled:Z

    .line 889
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 186
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setInputType(I)V

    .line 187
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getInputType()I

    move-result v0

    invoke-static {v0}, Lcom/chaos/view/PinView;->isPasswordInputType(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chaos/view/PinView;->isPasswordHidden:Z

    .line 188
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 941
    const/4 v0, 0x0

    iput v0, p0, Lcom/chaos/view/PinView;->mItemBackgroundResource:I

    .line 942
    iput-object p1, p0, Lcom/chaos/view/PinView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    .line 943
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->invalidate()V

    .line 944
    return-void
.end method

.method public setItemBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 926
    iget-object v0, p0, Lcom/chaos/view/PinView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 927
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 928
    const/4 v0, 0x0

    iput v0, p0, Lcom/chaos/view/PinView;->mItemBackgroundResource:I

    goto :goto_0

    .line 930
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/chaos/view/PinView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 932
    :goto_0
    return-void
.end method

.method public setItemBackgroundResources(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 912
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/chaos/view/PinView;->mItemBackgroundResource:I

    if-eq v0, p1, :cond_0

    .line 913
    return-void

    .line 915
    :cond_0
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/chaos/view/PinView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    .line 916
    invoke-virtual {p0, v0}, Lcom/chaos/view/PinView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 917
    iput p1, p0, Lcom/chaos/view/PinView;->mItemBackgroundResource:I

    .line 918
    return-void
.end method

.method public setItemCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 776
    iput p1, p0, Lcom/chaos/view/PinView;->mPinItemCount:I

    .line 777
    invoke-direct {p0, p1}, Lcom/chaos/view/PinView;->setMaxLength(I)V

    .line 778
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->requestLayout()V

    .line 779
    return-void
.end method

.method public setItemHeight(I)V
    .locals 0
    .param p1, "itemHeight"    # I

    .line 836
    iput p1, p0, Lcom/chaos/view/PinView;->mPinItemHeight:I

    .line 837
    invoke-direct {p0}, Lcom/chaos/view/PinView;->updateCursorHeight()V

    .line 838
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->requestLayout()V

    .line 839
    return-void
.end method

.method public setItemRadius(I)V
    .locals 0
    .param p1, "itemRadius"    # I

    .line 796
    iput p1, p0, Lcom/chaos/view/PinView;->mPinItemRadius:I

    .line 797
    invoke-direct {p0}, Lcom/chaos/view/PinView;->checkItemRadius()V

    .line 798
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->requestLayout()V

    .line 799
    return-void
.end method

.method public setItemSpacing(I)V
    .locals 0
    .param p1, "itemSpacing"    # I

    .line 816
    iput p1, p0, Lcom/chaos/view/PinView;->mPinItemSpacing:I

    .line 817
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->requestLayout()V

    .line 818
    return-void
.end method

.method public setItemWidth(I)V
    .locals 0
    .param p1, "itemWidth"    # I

    .line 856
    iput p1, p0, Lcom/chaos/view/PinView;->mPinItemWidth:I

    .line 857
    invoke-direct {p0}, Lcom/chaos/view/PinView;->checkItemRadius()V

    .line 858
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->requestLayout()V

    .line 859
    return-void
.end method

.method public setLineColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 708
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/chaos/view/PinView;->mLineColor:Landroid/content/res/ColorStateList;

    .line 709
    invoke-direct {p0}, Lcom/chaos/view/PinView;->updateColors()V

    .line 710
    return-void
.end method

.method public setLineColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .line 720
    if-eqz p1, :cond_0

    .line 724
    iput-object p1, p0, Lcom/chaos/view/PinView;->mLineColor:Landroid/content/res/ColorStateList;

    .line 725
    invoke-direct {p0}, Lcom/chaos/view/PinView;->updateColors()V

    .line 726
    return-void

    .line 721
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setLineWidth(I)V
    .locals 0
    .param p1, "borderWidth"    # I

    .line 756
    iput p1, p0, Lcom/chaos/view/PinView;->mLineWidth:I

    .line 757
    invoke-direct {p0}, Lcom/chaos/view/PinView;->checkItemRadius()V

    .line 758
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->requestLayout()V

    .line 759
    return-void
.end method

.method public setPasswordHidden(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 196
    iput-boolean p1, p0, Lcom/chaos/view/PinView;->isPasswordHidden:Z

    .line 197
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->requestLayout()V

    .line 198
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "size"    # F

    .line 893
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setTextSize(F)V

    .line 894
    invoke-direct {p0}, Lcom/chaos/view/PinView;->updateCursorHeight()V

    .line 895
    return-void
.end method

.method public setTextSize(IF)V
    .locals 0
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 899
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->setTextSize(IF)V

    .line 900
    invoke-direct {p0}, Lcom/chaos/view/PinView;->updateCursorHeight()V

    .line 901
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .line 216
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 217
    iget-object v0, p0, Lcom/chaos/view/PinView;->mAnimatorTextPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/chaos/view/PinView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 220
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .line 211
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 212
    return-void
.end method
