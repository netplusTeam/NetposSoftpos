.class public final Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;
.super Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;
.source "QrRegistrationFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$Companion;,
        Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQrRegistrationFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QrRegistrationFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,177:1\n55#2,4:178\n1549#3:182\n1620#3,3:183\n*S KotlinDebug\n*F\n+ 1 QrRegistrationFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment\n*L\n25#1:178,4\n103#1:182\n103#1:183,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;",
        "()V",
        "adapter",
        "Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;",
        "mccAlertDialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "mccDialogBinding",
        "Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;",
        "viewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;",
        "getViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$Companion;


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

.field private adapter:Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;

.field private binding:Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

.field private mccAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mccDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$80ovOfhacDlePHH0wrTxjxOrQHk(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->onCreateView$lambda-4(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CfdpATjCxEGN8yTX-k_qeYPiIBs(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Landroidx/paging/PagedList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->onCreateView$lambda-8(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Landroidx/paging/PagedList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DEQVI0IDYbnIHkhtIHVwlQZQ3QY(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->onCreateView$lambda-7(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DZgbGmJd81KtS8GhCa9u08Zg1nU(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->onCreateView$lambda-12(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S-LtIMw40X1fG0udcFazpcc5GfI(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->onCreateView$lambda-5(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gBJFD-EKLn5e1lZ5lHTwbC5usYA(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->onCreateView$lambda-10(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 23
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;-><init>()V

    .line 25
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 178
    .local v0, "$this$viewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 179
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$special$$inlined$viewModels$default$1;

    .line 178
    nop

    .line 179
    invoke-direct {v1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 178
    .local v1, "ownerProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 180
    const/4 v2, 0x0

    .line 178
    .local v2, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 181
    .local v3, "$i$f$viewModels":I
    const-class v4, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v5, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v4, v5, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 25
    .end local v0    # "$this$viewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$viewModels":I
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 23
    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;

    .line 23
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

    return-object v0
.end method

.method public static final synthetic access$getMccAlertDialog$p(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)Landroidx/appcompat/app/AlertDialog;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;

    .line 23
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->mccAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object v0
.end method

.method public static final synthetic access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;

    .line 23
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v0

    return-object v0
.end method

.method private final getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    return-object v0
.end method

.method private static final onCreateView$lambda-10(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 164
    .local v1, "$i$a$-let-QrRegistrationFragment$onCreateView$11$1":I
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 165
    nop

    .line 163
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-QrRegistrationFragment$onCreateView$11$1":I
    nop

    .line 166
    :cond_0
    return-void
.end method

.method private static final onCreateView$lambda-12(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "it":Z
    const/4 v1, 0x0

    .line 169
    .local v1, "$i$a$-let-QrRegistrationFragment$onCreateView$12$1":I
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 172
    :cond_0
    nop

    .line 168
    .end local v0    # "it":Z
    .end local v1    # "$i$a$-let-QrRegistrationFragment$onCreateView$12$1":I
    nop

    .line 173
    :cond_1
    return-void
.end method

.method private static final onCreateView$lambda-4(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 13
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 100
    .local v1, "$i$a$-let-QrRegistrationFragment$onCreateView$6$1":I
    nop

    .line 101
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 102
    const v3, 0x1090009

    .line 103
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 182
    .local v5, "$i$f$map":I
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 183
    .local v8, "$i$f$mapTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 184
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lcom/woleapp/netpos/contactless/model/ZenithCity;

    .local v11, "city":Lcom/woleapp/netpos/contactless/model/ZenithCity;
    const/4 v12, 0x0

    .line 103
    .local v12, "$i$a$-map-QrRegistrationFragment$onCreateView$6$1$cityAdapter$1":I
    invoke-virtual {v11}, Lcom/woleapp/netpos/contactless/model/ZenithCity;->getCityName()Ljava/lang/String;

    move-result-object v11

    .end local v11    # "city":Lcom/woleapp/netpos/contactless/model/ZenithCity;
    .end local v12    # "$i$a$-map-QrRegistrationFragment$onCreateView$6$1$cityAdapter$1":I
    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapTo":I
    check-cast v6, Ljava/util/List;

    .line 182
    nop

    .line 100
    .end local v4    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$map":I
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-direct {v4, v2, v3, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v2, v4

    .line 105
    .local v2, "cityAdapter":Landroid/widget/ArrayAdapter;
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

    if-nez v3, :cond_1

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_1
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->citySpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    move-object v4, v2

    check-cast v4, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 106
    nop

    .line 99
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-QrRegistrationFragment$onCreateView$6$1":I
    .end local v2    # "cityAdapter":Landroid/widget/ArrayAdapter;
    nop

    .line 107
    :cond_2
    return-void
.end method

.method private static final onCreateView$lambda-5(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Landroid/view/View;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->mccAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mccAlertDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 118
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v0

    new-instance v2, Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v1}, Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getZenithMCC(Lcom/woleapp/netpos/contactless/model/ZenithMCCDto;)V

    .line 119
    return-void
.end method

.method private static final onCreateView$lambda-7(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 7
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/NetworkResource;

    if-eqz v0, :cond_4

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/NetworkResource;
    const/4 v1, 0x0

    .line 122
    .local v1, "$i$a$-let-QrRegistrationFragment$onCreateView$8$1":I
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/NetworkResource;->getLoadingState()Lcom/woleapp/netpos/contactless/model/LoadingState;

    move-result-object v2

    sget-object v3, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/LoadingState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x0

    const-string v4, "mccDialogBinding"

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 138
    :pswitch_0
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->mccDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object v2, v3, Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;->progressHorizontal:Landroid/widget/ProgressBar;

    .line 139
    nop

    .line 138
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 135
    :pswitch_1
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->mccDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;

    if-nez v2, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    iget-object v2, v3, Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;->loadingMore:Landroid/widget/ProgressBar;

    .line 136
    nop

    .line 135
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 129
    :pswitch_2
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 130
    const-string v3, "An error occurred while fetching"

    check-cast v3, Ljava/lang/CharSequence;

    .line 131
    nop

    .line 128
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 124
    :pswitch_3
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->mccDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;->loadingMore:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 125
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->mccDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;

    if-nez v2, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    iget-object v2, v3, Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;->progressHorizontal:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 141
    :goto_3
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/NetworkResource;->getLoadingState()Lcom/woleapp/netpos/contactless/model/LoadingState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/LoadingState;->name()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    nop

    .line 121
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/NetworkResource;
    .end local v1    # "$i$a$-let-QrRegistrationFragment$onCreateView$8$1":I
    nop

    .line 143
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final onCreateView$lambda-8(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Landroidx/paging/PagedList;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;
    .param p1, "it"    # Landroidx/paging/PagedList;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list in fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/paging/PagedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;->submitList(Landroidx/paging/PagedList;)V

    .line 147
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->getView()Landroid/view/View;

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
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

    move-result-object v1

    const-string v2, "inflate(inflater, container, false)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    move-object v3, v1

    .local v3, "$this$onCreateView_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;
    const/4 v4, 0x0

    .line 43
    .local v4, "$i$a$-apply-QrRegistrationFragment$onCreateView$1":I
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 44
    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->executePendingBindings()V

    .line 45
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V

    .line 46
    nop

    .line 42
    .end local v3    # "$this$onCreateView_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;
    .end local v4    # "$i$a$-apply-QrRegistrationFragment$onCreateView$1":I
    nop

    .line 41
    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

    .line 47
    nop

    .line 48
    invoke-static {p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$onCreateView_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;
    const/4 v2, 0x0

    .line 49
    .local v2, "$i$a$-apply-QrRegistrationFragment$onCreateView$2":I
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 50
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;->executePendingBindings()V

    .line 51
    nop

    .line 48
    .end local v1    # "$this$onCreateView_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;
    .end local v2    # "$i$a$-apply-QrRegistrationFragment$onCreateView$2":I
    nop

    .line 47
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->mccDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;

    .line 52
    new-instance v0, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$3;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$3;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;

    .line 57
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->mccDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;

    const-string v1, "mccDialogBinding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;->mccList:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    new-instance v3, Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 59
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    .line 60
    const/4 v5, 0x1

    .line 58
    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 57
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 63
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->mccDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;->mccList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/ZenithQrMCCAdapter;

    if-nez v3, :cond_2

    const-string v3, "adapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 64
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f030005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v3, "requireContext().resourc\u2026gArray(R.array.ng_states)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .local v0, "states":[Ljava/lang/String;
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

    const-string v4, "binding"

    if-nez v3, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->statesSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$4;

    invoke-direct {v5, p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$4;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;[Ljava/lang/String;)V

    check-cast v5, Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 84
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

    if-nez v3, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    iget-object v3, v3, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->citySpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$5;

    invoke-direct {v5, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$5;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)V

    check-cast v5, Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 98
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getZenithCityList()Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    new-instance v6, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)V

    invoke-virtual {v3, v5, v6}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 109
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1090009

    invoke-direct {v3, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 108
    nop

    .line 110
    .local v3, "statesAdapter":Landroid/widget/ArrayAdapter;
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

    if-nez v5, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_5
    iget-object v5, v5, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->statesSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    move-object v6, v3

    check-cast v6, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 111
    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    .line 113
    const v7, 0x1030242

    .line 111
    invoke-direct {v5, v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 114
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->mccDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;

    if-nez v6, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_6
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;->getRoot()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    .line 115
    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v5

    const-string v6, "Builder(\n            req\u2026ot)\n            .create()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iput-object v5, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->mccAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 116
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

    if-nez v5, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_7
    iget-object v5, v5, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->getMCC:Landroid/widget/TextView;

    new-instance v6, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getLoadingStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v5

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v6

    new-instance v7, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)V

    invoke-virtual {v5, v6, v7}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 144
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getZenithMccList()Landroidx/lifecycle/LiveData;

    move-result-object v5

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v6

    new-instance v7, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$$ExternalSyntheticLambda3;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)V

    invoke-virtual {v5, v6, v7}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 148
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->initSearchFilter()V

    .line 149
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->mccDialogBinding:Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;

    if-nez v5, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_8
    iget-object v1, v5, Lcom/woleapp/netpos/contactless/databinding/DialogFragmentZenithMccBinding;->search:Landroidx/appcompat/widget/SearchView;

    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$10;

    invoke-direct {v5, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$10;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)V

    check-cast v5, Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 162
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getMessage()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    new-instance v6, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$$ExternalSyntheticLambda4;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)V

    invoke-virtual {v1, v5, v6}, Landroidx/lifecycle/MediatorLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 167
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getZenithQrRegistrationDone()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    new-instance v6, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$$ExternalSyntheticLambda5;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)V

    invoke-virtual {v1, v5, v6}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 174
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

    if-nez v1, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    move-object v2, v1

    :goto_0
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const-string v2, "binding.root"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
