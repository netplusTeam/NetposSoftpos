.class public final Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;
.super Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;
.source "QRFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQRFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QRFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/QRFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,231:1\n55#2,4:232\n*S KotlinDebug\n*F\n+ 1 QRFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/QRFragment\n*L\n30#1:232,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u001a\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u001a2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0008\u0010$\u001a\u00020\"H\u0002J\u0010\u0010%\u001a\u00020\"2\u0006\u0010&\u001a\u00020\'H\u0002J\u0010\u0010(\u001a\u00020\"2\u0006\u0010)\u001a\u00020*H\u0002J\u0010\u0010+\u001a\u00020\"2\u0006\u0010)\u001a\u00020*H\u0002J\u0008\u0010,\u001a\u00020\"H\u0002J\u0008\u0010-\u001a\u00020\"H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;",
        "()V",
        "adapter",
        "Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;",
        "masterPassQrBottomSheetDialog",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "masterpassQrBottomSheetDialogBinding",
        "Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;",
        "nibssQrBottomSheetDialog",
        "nibssQrBottomSheetDialogBinding",
        "qrAmountDialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "qrAmoutDialogBinding",
        "Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;",
        "viewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;",
        "getViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "zenithQRProgressDialog",
        "Landroid/app/ProgressDialog;",
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
        "setService",
        "showAmountDialog",
        "serviceId",
        "",
        "showMasterPassQRBottomSheetDialog",
        "amount",
        "",
        "showNibssQRBottomSheet",
        "showZenithQrDialog",
        "startNibssReQueryTimer",
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

.field private adapter:Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

.field private binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

.field private masterPassQrBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

.field private nibssQrBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private nibssQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

.field private qrAmountDialog:Landroidx/appcompat/app/AlertDialog;

.field private qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;

.field private zenithQRProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public static synthetic $r8$lambda$01dqHCt85SiDzD5kMliI40x2-UE(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->showAmountDialog$lambda-25(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4Ma5aZK4DUNDqhLPKGfp7pW9hkc(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->onCreateView$lambda-9(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8Ww6JFEVY6C1hIAxkHL3vMMDrmg(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->onCreateView$lambda-5$lambda-4(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MOBJFDOFuq_icWKmKGWoOhqXIf4(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->onCreateView$lambda-13(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SVFYDlPAWuSuQdorMOAMz4LvobM(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->showZenithQrDialog$lambda-23$lambda-22(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aXVrnh_jXkSh0ylzjp17JlRJypw(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->onCreateView$lambda-19(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cFQJRVItiOZIy4nLMTQN1IjXTF0(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->onCreateView$lambda-2$lambda-1(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$doXalfek7rZ9lQk_7xlelQ_OT_4(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->onCreateView$lambda-21(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$esBSxhpB5TUPJR-yUf8gU-LMdpw(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->onCreateView$lambda-15(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qRIeDCC-xLsQPTB92Vc1RZi3Wz8(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->onCreateView$lambda-11(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vjzRq8tsvXLboRdu-LoCT1BuANw(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->onCreateView$lambda-17(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;-><init>()V

    .line 30
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 232
    .local v0, "$this$viewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 233
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$special$$inlined$viewModels$default$1;

    .line 232
    nop

    .line 233
    invoke-direct {v1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 232
    .local v1, "ownerProducer$iv":Lkotlin/jvm/functions/Function0;
    nop

    .line 234
    const/4 v2, 0x0

    .line 232
    .local v2, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 235
    .local v3, "$i$f$viewModels":I
    const-class v4, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v5, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v4, v5, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 30
    .end local v0    # "$this$viewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$viewModels":I
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 26
    return-void
.end method

.method public static final synthetic access$getNibssQrBottomSheetDialogBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;)Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;

    .line 26
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->nibssQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    return-object v0
.end method

.method public static final synthetic access$showAmountDialog(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;I)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;
    .param p1, "serviceId"    # I

    .line 26
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->showAmountDialog(I)V

    return-void
.end method

.method public static final synthetic access$showZenithQrDialog(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;

    .line 26
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->showZenithQrDialog()V

    return-void
.end method

.method private final getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    return-object v0
.end method

.method private static final onCreateView$lambda-11(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 100
    .local v1, "$i$a$-let-QRFragment$onCreateView$9$1":I
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 101
    nop

    .line 99
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-QRFragment$onCreateView$9$1":I
    nop

    .line 102
    :cond_0
    return-void
.end method

.method private static final onCreateView$lambda-13(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 105
    .local v1, "$i$a$-let-QRFragment$onCreateView$10$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    const/4 v3, 0x0

    const-string v4, "masterpassQrBottomSheetDialogBinding"

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->scanToPay:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v2, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 107
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    iget-object v2, v3, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->errorMessage:Landroid/widget/TextView;

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    nop

    .line 104
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-QRFragment$onCreateView$10$1":I
    nop

    .line 109
    :cond_3
    return-void
.end method

.method private static final onCreateView$lambda-15(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .local v0, "it":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 112
    .local v1, "$i$a$-let-QRFragment$onCreateView$11$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->nibssQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    const/4 v3, 0x0

    const-string v4, "nibssQrBottomSheetDialogBinding"

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->qr:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->nibssQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v2, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->scanToPay:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->nibssQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    iget-object v2, v3, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->progress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->startNibssReQueryTimer()V

    .line 116
    nop

    .line 111
    .end local v0    # "it":Landroid/graphics/Bitmap;
    .end local v1    # "$i$a$-let-QRFragment$onCreateView$11$1":I
    nop

    .line 117
    :cond_3
    return-void
.end method

.method private static final onCreateView$lambda-17(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "it":Z
    const/4 v1, 0x0

    .line 120
    .local v1, "$i$a$-let-QRFragment$onCreateView$12$1":I
    const/4 v2, 0x0

    const-string v3, "nibssQrBottomSheetDialogBinding"

    if-eqz v0, :cond_2

    .line 121
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->nibssQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v4, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_0
    iget-object v4, v4, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->progress:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->nibssQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->scanToPay:Landroid/widget/TextView;

    const v3, 0x7f13019b

    invoke-virtual {p0, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 124
    :cond_2
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->nibssQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v4, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->progress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 125
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getStillHasRetryAttempts()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 126
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->startNibssReQueryTimer()V

    .line 129
    :cond_4
    :goto_2
    nop

    .line 119
    .end local v0    # "it":Z
    .end local v1    # "$i$a$-let-QRFragment$onCreateView$12$1":I
    nop

    .line 130
    :cond_5
    return-void
.end method

.method private static final onCreateView$lambda-19(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 9
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "it":Z
    const/4 v1, 0x0

    .line 133
    .local v1, "$i$a$-let-QRFragment$onCreateView$13$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->zenithQRProgressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_0

    const-string v2, "zenithQRProgressDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 134
    if-eqz v0, :cond_1

    .line 135
    move-object v3, p0

    check-cast v3, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    sget-object v2, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$Companion;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$Companion;->newInstance()Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/fragment/app/Fragment;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->addFragmentWithoutRemove$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    .line 137
    :cond_1
    nop

    .line 132
    .end local v0    # "it":Z
    .end local v1    # "$i$a$-let-QRFragment$onCreateView$13$1":I
    nop

    .line 138
    :cond_2
    return-void
.end method

.method private static final onCreateView$lambda-2$lambda-1(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 1
    .param p0, "$this_apply"    # Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancel()V

    return-void
.end method

.method private static final onCreateView$lambda-21(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .local v0, "it":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 141
    .local v1, "$i$a$-let-QRFragment$onCreateView$14$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->zenithQRProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "zenithQRProgressDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 142
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    const-string v4, "masterpassQrBottomSheetDialogBinding"

    if-nez v2, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->providerQr:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->providerQr:Landroid/widget/ImageView;

    const v5, 0x7f08010f

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v2, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_3
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->progress:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 145
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v2, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_4
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->qr:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterPassQrBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-nez v2, :cond_5

    const-string v2, "masterPassQrBottomSheetDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v3, v2

    :goto_0
    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 147
    nop

    .line 140
    .end local v0    # "it":Landroid/graphics/Bitmap;
    .end local v1    # "$i$a$-let-QRFragment$onCreateView$14$1":I
    nop

    .line 148
    :cond_6
    return-void
.end method

.method private static final onCreateView$lambda-5$lambda-4(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 1
    .param p0, "$this_apply"    # Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancel()V

    return-void
.end method

.method private static final onCreateView$lambda-9(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 7
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 92
    .local v1, "$i$a$-let-QRFragment$onCreateView$8$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    const/4 v3, 0x0

    const-string v4, "masterpassQrBottomSheetDialogBinding"

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->scanToPay:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v2, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->progress:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->providerQr:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v2, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, v2

    :goto_0
    iget-object v2, v3, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->qr:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    nop

    .line 91
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "$i$a$-let-QRFragment$onCreateView$8$1":I
    nop

    .line 97
    :cond_4
    return-void
.end method

.method private final setService()V
    .locals 7

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    move-object v1, v0

    .local v1, "$this$setService_u24lambda_u2d26":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .line 209
    .local v2, "$i$a$-apply-QRFragment$setService$listOfService$1":I
    new-instance v3, Lcom/woleapp/netpos/contactless/model/Service;

    const/4 v4, 0x0

    const-string v5, "MasterPass QR"

    const v6, 0x7f08011e

    invoke-direct {v3, v4, v5, v6}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v3, Lcom/woleapp/netpos/contactless/model/Service;

    const/4 v4, 0x1

    const-string v5, "NIBSS QR"

    const v6, 0x7f080103

    invoke-direct {v3, v4, v5, v6}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    nop

    .line 208
    .end local v1    # "$this$setService_u24lambda_u2d26":Ljava/util/ArrayList;
    .end local v2    # "$i$a$-apply-QRFragment$setService$listOfService$1":I
    nop

    .line 207
    nop

    .line 212
    .local v0, "listOfService":Ljava/util/ArrayList;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

    if-nez v1, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;->submitList(Ljava/util/List;)V

    .line 213
    return-void
.end method

.method private final showAmountDialog(I)V
    .locals 2
    .param p1, "serviceId"    # I

    .line 186
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->qrAmountDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "qrAmountDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 187
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    if-nez v0, :cond_1

    const-string v0, "qrAmoutDialogBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->proceed:Landroid/widget/Button;

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-void
.end method

.method private static final showAmountDialog$lambda-25(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;ILandroid/view/View;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;
    .param p1, "$serviceId"    # I
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "qrAmoutDialogBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->amount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 189
    .local v0, "amountDouble":Ljava/lang/Double;
    if-eqz v0, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .local v2, "it":D
    const/4 v4, 0x0

    .line 190
    .local v4, "$i$a$-let-QRFragment$showAmountDialog$1$1":I
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->qrAmountDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v5, :cond_1

    const-string v5, "qrAmountDialog"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v5

    :goto_0
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 191
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 193
    :pswitch_0
    invoke-direct {p0, v2, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->showNibssQRBottomSheet(D)V

    goto :goto_1

    .line 192
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->showMasterPassQRBottomSheetDialog(D)V

    .line 195
    :goto_1
    nop

    .line 189
    .end local v2    # "it":D
    .end local v4    # "$i$a$-let-QRFragment$showAmountDialog$1$1":I
    nop

    .line 196
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final showMasterPassQRBottomSheetDialog(D)V
    .locals 4
    .param p1, "amount"    # D

    .line 216
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    const-string v1, "masterpassQrBottomSheetDialogBinding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->progress:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->providerQr:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->qr:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 219
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterPassQrBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-nez v0, :cond_3

    const-string v0, "masterPassQrBottomSheetDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 220
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getMasterPassQr(D)V

    .line 221
    return-void
.end method

.method private final showNibssQRBottomSheet(D)V
    .locals 4
    .param p1, "amount"    # D

    .line 224
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->nibssQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    const-string v1, "nibssQrBottomSheetDialogBinding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->progress:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->nibssQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->providerQr:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->nibssQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->qr:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->nibssQrBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-nez v0, :cond_3

    const-string v0, "nibssQrBottomSheetDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 228
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getNibssQR(D)V

    .line 229
    return-void
.end method

.method private final showZenithQrDialog()V
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->zenithQRProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 155
    move-object v1, v0

    .local v1, "$this$showZenithQrDialog_u24lambda_u2d23":Landroid/app/ProgressDialog;
    const/4 v2, 0x0

    .line 156
    .local v2, "$i$a$-apply-QRFragment$showZenithQrDialog$2":I
    const-string v3, "Please Wait"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 157
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 158
    nop

    .line 159
    const/4 v3, -0x1

    .line 160
    const-string v4, "Cancel"

    check-cast v4, Ljava/lang/CharSequence;

    .line 158
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 164
    nop

    .line 155
    .end local v1    # "$this$showZenithQrDialog_u24lambda_u2d23":Landroid/app/ProgressDialog;
    .end local v2    # "$i$a$-apply-QRFragment$showZenithQrDialog$2":I
    nop

    .line 154
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->zenithQRProgressDialog:Landroid/app/ProgressDialog;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->zenithQRProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    const-string v0, "zenithQRProgressDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 167
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getZenithQR()V

    .line 168
    return-void
.end method

.method private static final showZenithQrDialog$lambda-23$lambda-22(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->zenithQRProgressDialog:Landroid/app/ProgressDialog;

    if-nez p1, :cond_0

    const-string p1, "zenithQRProgressDialog"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    .line 163
    return-void
.end method

.method private final startNibssReQueryTimer()V
    .locals 1

    .line 171
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$startNibssReQueryTimer$timer$1;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$startNibssReQueryTimer$timer$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;)V

    .line 182
    .local v0, "timer":Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$startNibssReQueryTimer$timer$1;
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$startNibssReQueryTimer$timer$1;->start()Landroid/os/CountDownTimer;

    .line 183
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getView()Landroid/view/View;

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
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

    move-result-object v1

    const-string v2, "inflate(inflater, container, false)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

    .line 45
    const-string v2, "binding"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;->rvTransactionsHeader:Landroid/widget/TextView;

    const v4, 0x7f13018d

    invoke-virtual {p0, v4}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    new-instance v1, Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$onCreateView$1;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$onCreateView$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v4}, Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

    .line 53
    nop

    .line 55
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 56
    nop

    .line 57
    nop

    .line 54
    invoke-static {v1, v3, v0}, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    move-result-object v1

    const-string v4, "inflate(\n               \u2026     false,\n            )"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    move-object v5, v1

    .local v5, "$this$onCreateView_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;
    const/4 v6, 0x0

    .line 59
    .local v6, "$i$a$-apply-QRFragment$onCreateView$2":I
    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->executePendingBindings()V

    .line 60
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 61
    nop

    .line 58
    .end local v5    # "$this$onCreateView_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;
    .end local v6    # "$i$a$-apply-QRFragment$onCreateView$2":I
    nop

    .line 53
    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    .line 62
    nop

    .line 63
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1401b4

    invoke-direct {v1, v5, v6}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    move-object v5, v1

    .local v5, "$this$onCreateView_u24lambda_u2d2":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    const/4 v7, 0x0

    .line 64
    .local v7, "$i$a$-apply-QRFragment$onCreateView$3":I
    invoke-virtual {v5, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 65
    iget-object v8, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    const-string v9, "masterpassQrBottomSheetDialogBinding"

    if-nez v8, :cond_1

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v3

    :cond_1
    invoke-virtual {v8}, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->getRoot()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 66
    iget-object v8, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterpassQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v8, :cond_2

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v3

    :cond_2
    iget-object v8, v8, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->closeBtn:Landroid/widget/Button;

    new-instance v9, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda2;

    invoke-direct {v9, v5}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    nop

    .line 63
    .end local v5    # "$this$onCreateView_u24lambda_u2d2":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .end local v7    # "$i$a$-apply-QRFragment$onCreateView$3":I
    nop

    .line 62
    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->masterPassQrBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 68
    nop

    .line 70
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 71
    nop

    .line 72
    nop

    .line 69
    invoke-static {v1, v3, v0}, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    move-object v4, v1

    .local v4, "$this$onCreateView_u24lambda_u2d3":Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;
    const/4 v5, 0x0

    .line 74
    .local v5, "$i$a$-apply-QRFragment$onCreateView$4":I
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->executePendingBindings()V

    .line 75
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 76
    nop

    .line 73
    .end local v4    # "$this$onCreateView_u24lambda_u2d3":Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;
    .end local v5    # "$i$a$-apply-QRFragment$onCreateView$4":I
    nop

    .line 68
    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->nibssQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    .line 77
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v6}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    move-object v4, v1

    .local v4, "$this$onCreateView_u24lambda_u2d5":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    const/4 v5, 0x0

    .line 78
    .local v5, "$i$a$-apply-QRFragment$onCreateView$5":I
    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 79
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->nibssQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    const-string v7, "nibssQrBottomSheetDialogBinding"

    if-nez v6, :cond_3

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_3
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->getRoot()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 80
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->nibssQrBottomSheetDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;

    if-nez v6, :cond_4

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_4
    iget-object v6, v6, Lcom/woleapp/netpos/contactless/databinding/QrBottomSheetDialogBinding;->closeBtn:Landroid/widget/Button;

    new-instance v7, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda3;

    invoke-direct {v7, v4}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    nop

    .line 77
    .end local v4    # "$this$onCreateView_u24lambda_u2d5":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .end local v5    # "$i$a$-apply-QRFragment$onCreateView$5":I
    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->nibssQrBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 82
    invoke-static {p1, v3, v0}, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    move-result-object v0

    const-string v1, "inflate(inflater, null, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    move-object v1, v0

    .local v1, "$this$onCreateView_u24lambda_u2d6":Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;
    const/4 v4, 0x0

    .line 84
    .local v4, "$i$a$-apply-QRFragment$onCreateView$6":I
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->executePendingBindings()V

    .line 85
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 86
    nop

    .line 83
    .end local v1    # "$this$onCreateView_u24lambda_u2d6":Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;
    .end local v4    # "$i$a$-apply-QRFragment$onCreateView$6":I
    nop

    .line 82
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    .line 87
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$onCreateView_u24lambda_u2d7":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v4, 0x0

    .line 88
    .local v4, "$i$a$-apply-QRFragment$onCreateView$7":I
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->qrAmoutDialogBinding:Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;

    if-nez v5, :cond_5

    const-string v5, "qrAmoutDialogBinding"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_5
    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/databinding/QrAmoutDialogBinding;->getRoot()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 89
    nop

    .line 87
    .end local v1    # "$this$onCreateView_u24lambda_u2d7":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v4    # "$i$a$-apply-QRFragment$onCreateView$7":I
    nop

    .line 89
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const-string v1, "Builder(requireContext()\u2026.root)\n        }.create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->qrAmountDialog:Landroidx/appcompat/app/AlertDialog;

    .line 90
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getMasterPassQrBitmap()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda4;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 98
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getMessage()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda5;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/MediatorLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 103
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getQrErrorMessage()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda6;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 110
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getNibssQRBitmap()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda7;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 118
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getReQuerying()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda8;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 131
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getCreateZenithMerchant()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda9;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 139
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getZenithQr()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$$ExternalSyntheticLambda10;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 149
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v3, v0

    :goto_0
    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-super {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 201
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;->rvTransactions:Lcom/woleapp/netpos/contactless/ui/widgets/GridRecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v3}, Lcom/woleapp/netpos/contactless/ui/widgets/GridRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 202
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionsBinding;->rvTransactions:Lcom/woleapp/netpos/contactless/ui/widgets/GridRecyclerView;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

    if-nez v1, :cond_2

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Lcom/woleapp/netpos/contactless/ui/widgets/GridRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 203
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->setService()V

    .line 204
    return-void
.end method
