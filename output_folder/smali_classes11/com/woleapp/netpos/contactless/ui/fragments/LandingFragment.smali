.class public final Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;
.super Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;
.source "LandingFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00122\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010\u001c\u001a\u00020\u001aH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;",
        "()V",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/FragmentLandingBinding;",
        "buttonAnimation",
        "Landroid/view/animation/Animation;",
        "loginBtn",
        "Landroid/widget/Button;",
        "onBoardingDataList",
        "",
        "Lcom/woleapp/netpos/contactless/model/onboarding/OnBoardingData;",
        "onBoardingViewPager",
        "Landroidx/viewpager/widget/ViewPager;",
        "onBoardingViewPagerAdapter",
        "Lcom/woleapp/netpos/contactless/adapter/OnBoardingViewPagerAdapter;",
        "signupBtn",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "setOnBoardingViewPagerAdapter",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private binding:Lcom/woleapp/netpos/contactless/databinding/FragmentLandingBinding;

.field private buttonAnimation:Landroid/view/animation/Animation;

.field private loginBtn:Landroid/widget/Button;

.field private onBoardingDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/onboarding/OnBoardingData;",
            ">;"
        }
    .end annotation
.end field

.field private onBoardingViewPager:Landroidx/viewpager/widget/ViewPager;

.field private onBoardingViewPagerAdapter:Lcom/woleapp/netpos/contactless/adapter/OnBoardingViewPagerAdapter;

.field private signupBtn:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$2rFE-WhFSd--R5NFjnh9m5fuq_0(Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->onViewCreated$lambda-2(Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v5tvRGnDYsV50hVDleKRbLLa_h8(Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->onViewCreated$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method private static final onViewCreated$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;Landroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    nop

    .line 57
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 58
    nop

    .line 59
    nop

    .line 56
    const v1, 0x7f0a0071

    const-string v2, "Login Fragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->showFragment(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    .line 61
    return-void
.end method

.method private static final onViewCreated$lambda-2(Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;Landroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    nop

    .line 65
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 66
    nop

    .line 67
    nop

    .line 64
    const v1, 0x7f0a0071

    const-string v2, "NewOrExisting Fragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->showFragment(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    .line 69
    return-void
.end method

.method private final setOnBoardingViewPagerAdapter()V
    .locals 7

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->onBoardingDataList:Ljava/util/List;

    .line 75
    new-instance v1, Lcom/woleapp/netpos/contactless/model/onboarding/OnBoardingData;

    const v2, 0x7f080160

    const-string v3, "Tap card to make payments"

    const-string v4, "Make payment conveniently with your NFC enabled cards with just a tap"

    invoke-direct {v1, v3, v4, v2}, Lcom/woleapp/netpos/contactless/model/onboarding/OnBoardingData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->onBoardingDataList:Ljava/util/List;

    const/4 v1, 0x0

    const-string v2, "onBoardingDataList"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v3, Lcom/woleapp/netpos/contactless/model/onboarding/OnBoardingData;

    const v4, 0x7f080161

    const-string v5, "Scan QR codes to make payments"

    const-string v6, "Perform transactions conveniently with scan to pay"

    invoke-direct {v3, v5, v6, v4}, Lcom/woleapp/netpos/contactless/model/onboarding/OnBoardingData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcom/woleapp/netpos/contactless/adapter/OnBoardingViewPagerAdapter;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->onBoardingDataList:Ljava/util/List;

    if-nez v4, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    invoke-direct {v0, v3, v1}, Lcom/woleapp/netpos/contactless/adapter/OnBoardingViewPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->onBoardingViewPagerAdapter:Lcom/woleapp/netpos/contactless/adapter/OnBoardingViewPagerAdapter;

    .line 79
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->onBoardingViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->onBoardingViewPagerAdapter:Lcom/woleapp/netpos/contactless/adapter/OnBoardingViewPagerAdapter;

    check-cast v1, Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 80
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentLandingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentLandingBinding;

    move-result-object v0

    const-string v1, "inflate(inflater, container, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$onCreateView_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/databinding/FragmentLandingBinding;
    const/4 v2, 0x0

    .line 38
    .local v2, "$i$a$-apply-LandingFragment$onCreateView$1":I
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/woleapp/netpos/contactless/databinding/FragmentLandingBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 39
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentLandingBinding;->executePendingBindings()V

    .line 40
    nop

    .line 37
    .end local v1    # "$this$onCreateView_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/databinding/FragmentLandingBinding;
    .end local v2    # "$i$a$-apply-LandingFragment$onCreateView$1":I
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentLandingBinding;

    .line 41
    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentLandingBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentLandingBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentLandingBinding;->screenPager:Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->onBoardingViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 49
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentLandingBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentLandingBinding;->btnLogin:Landroid/widget/Button;

    const-string v3, "binding.btnLogin"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->loginBtn:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentLandingBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentLandingBinding;->btnSignup:Landroid/widget/Button;

    const-string v1, "binding.btnSignup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->signupBtn:Landroid/widget/Button;

    .line 51
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010018

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-string v1, "loadAnimation(requireCon\u2026 R.anim.button_animation)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->buttonAnimation:Landroid/view/animation/Animation;

    .line 53
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->setOnBoardingViewPagerAdapter()V

    .line 55
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->loginBtn:Landroid/widget/Button;

    if-nez v0, :cond_3

    const-string v0, "loginBtn"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;->signupBtn:Landroid/widget/Button;

    if-nez v0, :cond_4

    const-string v0, "signupBtn"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v0

    :goto_0
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/LandingFragment;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method
