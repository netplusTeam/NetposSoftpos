.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;,
        Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_FAILURE_LISTENER:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animationName:Ljava/lang/String;

.field private animationResId:I

.field private autoPlay:Z

.field private cacheComposition:Z

.field private composition:Lcom/airbnb/lottie/LottieComposition;

.field private compositionTask:Lcom/airbnb/lottie/LottieTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation
.end field

.field private failureListener:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private fallbackResource:I

.field private ignoreUnschedule:Z

.field private final loadedListener:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final lottieOnCompositionLoadedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final userActionsTaken:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;",
            ">;"
        }
    .end annotation
.end field

.field private final wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->DEFAULT_FAILURE_LISTENER:Lcom/airbnb/lottie/LottieListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 77
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 90
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v1}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 98
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    .line 100
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 116
    sget v0, Lcom/airbnb/lottie/R$attr;->lottieAnimationViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 120
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 77
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 90
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v1}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 98
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    .line 100
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 121
    sget v0, Lcom/airbnb/lottie/R$attr;->lottieAnimationViewStyle:I

    invoke-direct {p0, p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 77
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 90
    new-instance v1, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v1}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 98
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    .line 100
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 126
    invoke-direct {p0, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/LottieAnimationView;)I
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieAnimationView;

    .line 63
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/lottie/LottieListener;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieAnimationView;

    .line 63
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    return-object v0
.end method

.method static synthetic access$200()Lcom/airbnb/lottie/LottieListener;
    .locals 1

    .line 63
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->DEFAULT_FAILURE_LISTENER:Lcom/airbnb/lottie/LottieListener;

    return-object v0
.end method

.method private cancelLoaderTask()V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    if-eqz v0, :cond_0

    .line 532
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->removeListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 533
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->removeFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 535
    :cond_0
    return-void
.end method

.method private clearComposition()V
    .locals 1

    .line 1002
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 1003
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->clearComposition()V

    .line 1004
    return-void
.end method

.method private fromAssets(Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 3
    .param p1, "assetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    new-instance v0, Lcom/airbnb/lottie/LottieTask;

    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda3;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object v0

    .line 419
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    .line 419
    :goto_0
    return-object v0
.end method

.method private fromRawRes(I)Lcom/airbnb/lottie/LottieTask;
    .locals 3
    .param p1, "rawRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    new-instance v0, Lcom/airbnb/lottie/LottieTask;

    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda0;-><init>(Lcom/airbnb/lottie/LottieAnimationView;I)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object v0

    .line 403
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    .line 403
    :goto_0
    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 13
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 130
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 131
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_cacheComposition:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 132
    sget v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    .line 133
    .local v1, "hasRawRes":Z
    sget v4, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    .line 134
    .local v4, "hasFileName":Z
    sget v5, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    .line 135
    .local v5, "hasUrl":Z
    if-eqz v1, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 139
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 140
    .local v6, "rawResId":I
    if-eqz v6, :cond_2

    .line 141
    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 143
    .end local v6    # "rawResId":I
    :cond_2
    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    .line 144
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "fileName":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 146
    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    .line 148
    .end local v6    # "fileName":Ljava/lang/String;
    :cond_4
    if-eqz v5, :cond_5

    .line 149
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "url":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 151
    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 148
    .end local v6    # "url":Ljava/lang/String;
    :cond_5
    :goto_1
    nop

    .line 155
    :cond_6
    :goto_2
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fallbackRes:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setFallbackResource(I)V

    .line 156
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_autoPlay:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 157
    iput-boolean v3, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 160
    :cond_7
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_loop:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_8

    .line 161
    iget-object v6, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 164
    :cond_8
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 165
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 169
    :cond_9
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 170
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 174
    :cond_a
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_speed:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 175
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_speed:I

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 178
    :cond_b
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_clipToCompositionBounds:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 179
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_clipToCompositionBounds:I

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setClipToCompositionBounds(Z)V

    .line 182
    :cond_c
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_imageAssetsFolder:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 183
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_progress:I

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 184
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->enableMergePathsForKitKatAndAbove(Z)V

    .line 186
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 187
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 188
    .local v6, "colorRes":I
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 189
    .local v7, "csl":Landroid/content/res/ColorStateList;
    new-instance v9, Lcom/airbnb/lottie/SimpleColorFilter;

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v10

    invoke-direct {v9, v10}, Lcom/airbnb/lottie/SimpleColorFilter;-><init>(I)V

    .line 190
    .local v9, "filter":Lcom/airbnb/lottie/SimpleColorFilter;
    new-instance v10, Lcom/airbnb/lottie/model/KeyPath;

    const-string v11, "**"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 191
    .local v10, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    new-instance v11, Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-direct {v11, v9}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 192
    .local v11, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<Landroid/graphics/ColorFilter;>;"
    sget-object v12, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v10, v12, v11}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 195
    .end local v6    # "colorRes":I
    .end local v7    # "csl":Landroid/content/res/ColorStateList;
    .end local v9    # "filter":Lcom/airbnb/lottie/SimpleColorFilter;
    .end local v10    # "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    .end local v11    # "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<Landroid/graphics/ColorFilter;>;"
    :cond_d
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_renderMode:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 196
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_renderMode:I

    sget-object v7, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v7}, Lcom/airbnb/lottie/RenderMode;->ordinal()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 197
    .local v6, "renderModeOrdinal":I
    invoke-static {}, Lcom/airbnb/lottie/RenderMode;->values()[Lcom/airbnb/lottie/RenderMode;

    move-result-object v7

    array-length v7, v7

    if-lt v6, v7, :cond_e

    .line 198
    sget-object v7, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v7}, Lcom/airbnb/lottie/RenderMode;->ordinal()I

    move-result v6

    .line 200
    :cond_e
    invoke-static {}, Lcom/airbnb/lottie/RenderMode;->values()[Lcom/airbnb/lottie/RenderMode;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {p0, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    .line 203
    .end local v6    # "renderModeOrdinal":I
    :cond_f
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_ignoreDisabledSystemAnimations:I

    .line 204
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 203
    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setIgnoreDisabledSystemAnimations(Z)V

    .line 210
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    iget-object v6, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/lottie/utils/Utils;->getAnimationScale(Landroid/content/Context;)F

    move-result v7

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_10

    move v2, v3

    :cond_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/airbnb/lottie/LottieDrawable;->setSystemAnimationsAreEnabled(Ljava/lang/Boolean;)V

    .line 213
    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 68
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->isNetworkException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "Unable to load composition."

    invoke-static {v0, p0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to parse composition"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;)V"
        }
    .end annotation

    .line 522
    .local p1, "compositionTask":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<Lcom/airbnb/lottie/LottieComposition;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_ANIMATION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->clearComposition()V

    .line 524
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 525
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 526
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    .line 527
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    .line 528
    return-void
.end method

.method private setLottieDrawable()V
    .locals 2

    .line 1091
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    .line 1094
    .local v0, "wasAnimating":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1095
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1096
    if-eqz v0, :cond_0

    .line 1098
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->resumeAnimation()V

    .line 1100
    :cond_0
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 753
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 754
    return-void
.end method

.method public addAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorPauseListener;

    .line 766
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 767
    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 741
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 742
    return-void
.end method

.method public addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z
    .locals 2
    .param p1, "lottieOnCompositionLoadedListener"    # Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;

    .line 1075
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 1076
    .local v0, "composition":Lcom/airbnb/lottie/LottieComposition;
    if-eqz v0, :cond_0

    .line 1077
    invoke-interface {p1, v0}, Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;->onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V

    .line 1079
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 1
    .param p1, "keyPath"    # Lcom/airbnb/lottie/model/KeyPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 934
    .local p2, "property":Ljava/lang/Object;, "TT;"
    .local p3, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 935
    return-void
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V
    .locals 2
    .param p1, "keyPath"    # Lcom/airbnb/lottie/model/KeyPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;",
            "Lcom/airbnb/lottie/value/SimpleLottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 944
    .local p2, "property":Ljava/lang/Object;, "TT;"
    .local p3, "callback":Lcom/airbnb/lottie/value/SimpleLottieValueCallback;, "Lcom/airbnb/lottie/value/SimpleLottieValueCallback<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$2;

    invoke-direct {v1, p0, p3}, Lcom/airbnb/lottie/LottieAnimationView$2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 949
    return-void
.end method

.method public cancelAnimation()V
    .locals 2

    .line 953
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->PLAY_OPTION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 954
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->cancelAnimation()V

    .line 955
    return-void
.end method

.method public disableExtraScaleModeInFitXY()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1071
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->disableExtraScaleModeInFitXY()V

    .line 1072
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 335
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->enableMergePathsForKitKatAndAbove(Z)V

    .line 336
    return-void
.end method

.method public getClipToCompositionBounds()Z
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getClipToCompositionBounds()Z

    move-result v0

    return v0
.end method

.method public getComposition()Lcom/airbnb/lottie/LottieComposition;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 989
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result v0

    float-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getFrame()I
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getFrame()I

    move-result v0

    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaintainOriginalImageBounds()Z
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getMaintainOriginalImageBounds()Z

    move-result v0

    return v0
.end method

.method public getMaxFrame()F
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getMaxFrame()F

    move-result v0

    return v0
.end method

.method public getMinFrame()F
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getMinFrame()F

    move-result v0

    return v0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    move-result v0

    return v0
.end method

.method public getRenderMode()Lcom/airbnb/lottie/RenderMode;
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getRenderMode()Lcom/airbnb/lottie/RenderMode;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getSpeed()F

    move-result v0

    return v0
.end method

.method public hasMasks()Z
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->hasMasks()Z

    move-result v0

    return v0
.end method

.method public hasMatte()Z
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->hasMatte()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 3

    .line 240
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    .line 241
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 242
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->getRenderMode()Lcom/airbnb/lottie/RenderMode;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/RenderMode;->SOFTWARE:Lcom/airbnb/lottie/RenderMode;

    if-ne v1, v2, :cond_0

    .line 248
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 250
    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 253
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-ne v0, v1, :cond_0

    .line 256
    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    :goto_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->isMergePathsEnabledForKitKatAndAbove()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$fromAssets$2$com-airbnb-lottie-LottieAnimationView(Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 2
    .param p1, "assetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 416
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0
.end method

.method synthetic lambda$fromRawRes$1$com-airbnb-lottie-LottieAnimationView(I)Lcom/airbnb/lottie/LottieResult;
    .locals 2
    .param p1, "rawRes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 400
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawResSync(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawResSync(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    .line 400
    :goto_0
    return-object v0
.end method

.method public loop(Z)V
    .locals 2
    .param p1, "loop"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 779
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 780
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 310
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 311
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    .line 314
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 277
    instance-of v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    if-nez v0, :cond_0

    .line 278
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 279
    return-void

    .line 282
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    .line 283
    .local v0, "ss":Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 284
    iget-object v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    iput-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 285
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    sget-object v2, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_ANIMATION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 288
    :cond_1
    iget v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationResId:I

    iput v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 289
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    sget-object v2, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_ANIMATION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    if-eqz v1, :cond_2

    .line 290
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 292
    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    sget-object v2, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_PROGRESS:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 293
    iget v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 295
    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    sget-object v2, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->PLAY_OPTION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    if-eqz v1, :cond_4

    .line 296
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 298
    :cond_4
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    sget-object v2, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_IMAGE_ASSETS:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 299
    iget-object v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 301
    :cond_5
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    sget-object v2, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_REPEAT_MODE:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 302
    iget v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 304
    :cond_6
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    sget-object v2, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_REPEAT_COUNT:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 305
    iget v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 307
    :cond_7
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 264
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 265
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 266
    .local v1, "ss":Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    iput-object v2, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    .line 267
    iget v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    iput v2, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationResId:I

    .line 268
    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    move-result v2

    iput v2, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    .line 269
    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->isAnimatingOrWillAnimateOnVisible()Z

    move-result v2

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    .line 270
    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    .line 271
    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatMode()I

    move-result v2

    iput v2, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    .line 272
    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    move-result v2

    iput v2, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    .line 273
    return-object v1
.end method

.method public pauseAnimation()V
    .locals 1

    .line 959
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 960
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->pauseAnimation()V

    .line 961
    return-void
.end method

.method public playAnimation()V
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->PLAY_OPTION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    .line 600
    return-void
.end method

.method public removeAllAnimatorListeners()V
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->removeAllAnimatorListeners()V

    .line 762
    return-void
.end method

.method public removeAllLottieOnCompositionLoadedListener()V
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1088
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->removeAllUpdateListeners()V

    .line 750
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 757
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 758
    return-void
.end method

.method public removeAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorPauseListener;

    .line 771
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->removeAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 772
    return-void
.end method

.method public removeLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z
    .locals 1
    .param p1, "lottieOnCompositionLoadedListener"    # Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;

    .line 1083
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 745
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 746
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;
    .locals 1
    .param p1, "keyPath"    # Lcom/airbnb/lottie/model/KeyPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;"
        }
    .end annotation

    .line 923
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resumeAnimation()V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->PLAY_OPTION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->resumeAnimation()V

    .line 610
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimationSpeed()V

    .line 724
    return-void
.end method

.method public setAnimation(I)V
    .locals 1
    .param p1, "rawRes"    # I

    .line 392
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 394
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->fromRawRes(I)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    .line 395
    return-void
.end method

.method public setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .line 449
    invoke-static {p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    .line 450
    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1
    .param p1, "assetName"    # Ljava/lang/String;

    .line 409
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 411
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->fromAssets(Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    .line 412
    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .line 438
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 467
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    .line 469
    .local v0, "task":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<Lcom/airbnb/lottie/LottieComposition;>;"
    :goto_0
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    .line 470
    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .line 487
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    .line 488
    .local v0, "task":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<Lcom/airbnb/lottie/LottieComposition;>;"
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    .line 489
    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 1
    .param p1, "isApplyingOpacityToLayersEnabled"    # Z

    .line 1062
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setApplyingOpacityToLayersEnabled(Z)V

    .line 1063
    return-void
.end method

.method public setCacheComposition(Z)V
    .locals 0
    .param p1, "cacheComposition"    # Z

    .line 374
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 375
    return-void
.end method

.method public setClipToCompositionBounds(Z)V
    .locals 1
    .param p1, "clipToCompositionBounds"    # Z

    .line 353
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setClipToCompositionBounds(Z)V

    .line 354
    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 3
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 543
    sget-boolean v0, Lcom/airbnb/lottie/L;->DBG:Z

    if-eqz v0, :cond_0

    .line 544
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Composition \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 548
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    .line 550
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setComposition(Lcom/airbnb/lottie/LottieComposition;)Z

    move-result v0

    .line 551
    .local v0, "isNewComposition":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    .line 552
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    .line 555
    return-void

    .line 556
    :cond_1
    if-nez v0, :cond_2

    .line 558
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->setLottieDrawable()V

    .line 564
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getVisibility()I

    move-result v1

    invoke-virtual {p0, p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 566
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->requestLayout()V

    .line 568
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;

    .line 569
    .local v2, "lottieOnCompositionLoadedListener":Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;
    invoke-interface {v2, p1}, Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;->onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V

    .line 570
    .end local v2    # "lottieOnCompositionLoadedListener":Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;
    goto :goto_0

    .line 572
    :cond_3
    return-void
.end method

.method public setFailureListener(Lcom/airbnb/lottie/LottieListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 506
    .local p1, "failureListener":Lcom/airbnb/lottie/LottieListener;, "Lcom/airbnb/lottie/LottieListener<Ljava/lang/Throwable;>;"
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    .line 507
    return-void
.end method

.method public setFallbackResource(I)V
    .locals 0
    .param p1, "fallbackResource"    # I

    .line 518
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 519
    return-void
.end method

.method public setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 1
    .param p1, "assetDelegate"    # Lcom/airbnb/lottie/FontAssetDelegate;

    .line 904
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V

    .line 905
    return-void
.end method

.method public setFrame(I)V
    .locals 1
    .param p1, "frame"    # I

    .line 969
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 970
    return-void
.end method

.method public setIgnoreDisabledSystemAnimations(Z)V
    .locals 1
    .param p1, "ignore"    # Z

    .line 324
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setIgnoreDisabledSystemAnimations(Z)V

    .line 325
    return-void
.end method

.method public setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 1
    .param p1, "assetDelegate"    # Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 897
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 898
    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1
    .param p1, "imageAssetsFolder"    # Ljava/lang/String;

    .line 846
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setImagesAssetsFolder(Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .line 226
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 227
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 221
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 222
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 216
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 217
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 218
    return-void
.end method

.method public setMaintainOriginalImageBounds(Z)V
    .locals 1
    .param p1, "maintainOriginalImageBounds"    # Z

    .line 861
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaintainOriginalImageBounds(Z)V

    .line 862
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1
    .param p1, "endFrame"    # I

    .line 640
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    .line 641
    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 1
    .param p1, "markerName"    # Ljava/lang/String;

    .line 672
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1
    .param p1, "endProgress"    # F

    .line 654
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxProgress(F)V

    .line 655
    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 1
    .param p1, "minFrame"    # I
    .param p2, "maxFrame"    # I

    .line 702
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    .line 703
    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 1
    .param p1, "markerName"    # Ljava/lang/String;

    .line 682
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "startMarkerName"    # Ljava/lang/String;
    .param p2, "endMarkerName"    # Ljava/lang/String;
    .param p3, "playEndMarkerStartFrame"    # Z

    .line 694
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 695
    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 1
    .param p1, "minProgress"    # F
    .param p2, "maxProgress"    # F

    .line 712
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxProgress(FF)V

    .line 713
    return-void
.end method

.method public setMinFrame(I)V
    .locals 1
    .param p1, "startFrame"    # I

    .line 616
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    .line 617
    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 1
    .param p1, "markerName"    # Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(Ljava/lang/String;)V

    .line 664
    return-void
.end method

.method public setMinProgress(F)V
    .locals 1
    .param p1, "startProgress"    # F

    .line 630
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinProgress(F)V

    .line 631
    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 1
    .param p1, "outline"    # Z

    .line 384
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setOutlineMasksAndMattes(Z)V

    .line 385
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 993
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setPerformanceTrackingEnabled(Z)V

    .line 994
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 980
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_PROGRESS:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 981
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 982
    return-void
.end method

.method public setRenderMode(Lcom/airbnb/lottie/RenderMode;)V
    .locals 1
    .param p1, "renderMode"    # Lcom/airbnb/lottie/RenderMode;

    .line 1038
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    .line 1039
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 2
    .param p1, "count"    # I

    .line 813
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_REPEAT_COUNT:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 814
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 815
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 790
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_REPEAT_MODE:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 791
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatMode(I)V

    .line 792
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 1
    .param p1, "safeMode"    # Z

    .line 1018
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setSafeMode(Z)V

    .line 1019
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 730
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setSpeed(F)V

    .line 731
    return-void
.end method

.method public setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V
    .locals 1
    .param p1, "textDelegate"    # Lcom/airbnb/lottie/TextDelegate;

    .line 911
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V

    .line 912
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 231
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    goto :goto_0

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->pauseAnimation()V

    .line 236
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 882
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
