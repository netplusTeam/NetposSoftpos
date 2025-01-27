.class public final Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;
.super Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;
.source "RegisterFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRegisterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegisterFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/RegisterFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,264:1\n77#2,6:265\n77#2,6:271\n*S KotlinDebug\n*F\n+ 1 RegisterFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/RegisterFragment\n*L\n30#1:265,6\n31#1:271,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0002J\u0008\u0010!\u001a\u00020 H\u0002J$\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\'2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u0008\u0010*\u001a\u00020 H\u0016J\u0008\u0010+\u001a\u00020 H\u0016J\u0008\u0010,\u001a\u00020 H\u0016J\u001a\u0010-\u001a\u00020 2\u0006\u0010.\u001a\u00020#2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u0008\u0010/\u001a\u00020 H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001a\u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\n\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u00060"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;",
        "()V",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;",
        "contactlessViewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;",
        "getContactlessViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;",
        "contactlessViewModel$delegate",
        "Lkotlin/Lazy;",
        "date",
        "Ljava/util/Calendar;",
        "deviceSerialId",
        "",
        "dialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "failureDialog",
        "firstBankBranches",
        "Landroid/widget/AutoCompleteTextView;",
        "firstBankStates",
        "listOfBranches",
        "listOfStates",
        "partnerID",
        "register",
        "Landroid/widget/Button;",
        "viewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;",
        "getViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;",
        "viewModel$delegate",
        "clearSensitiveData",
        "",
        "initViews",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onPause",
        "onStop",
        "onViewCreated",
        "view",
        "showDateTimePicker",
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

.field private binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

.field private final contactlessViewModel$delegate:Lkotlin/Lazy;

.field private date:Ljava/util/Calendar;

.field private deviceSerialId:Ljava/lang/String;

.field private dialog:Landroidx/appcompat/app/AlertDialog;

.field private failureDialog:Landroidx/appcompat/app/AlertDialog;

.field private firstBankBranches:Landroid/widget/AutoCompleteTextView;

.field private firstBankStates:Landroid/widget/AutoCompleteTextView;

.field private listOfBranches:Ljava/lang/String;

.field private listOfStates:Ljava/lang/String;

.field private partnerID:Ljava/lang/String;

.field private register:Landroid/widget/Button;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$2KXBd7ieJk4rZ59w3Cg8B7778oc(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->onViewCreated$lambda-10(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CaKJHGKTf3igEoTugMQMtFrhEJ0(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->onCreateView$lambda-9(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LHc5Sokroe67OM-mQI3LbJ5dcgM(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->onCreateView$lambda-7(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TP_0A3ZS5l1Iiyf0QEbFH87_4fU(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Lcom/woleapp/netpos/contactless/util/Resource;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->onViewCreated$lambda-12(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Lcom/woleapp/netpos/contactless/util/Resource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yj_DMfVaG38vg1fBYjandhrnlJ8(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Lcom/woleapp/netpos/contactless/util/Resource;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->onViewCreated$lambda-11(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Lcom/woleapp/netpos/contactless/util/Resource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_pq5wG1bfc52oSiIWwr3zburP9I(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->onCreateView$lambda-3(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ei6O0lDjJQJCh7nmRM0AIiHbiw4(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->onCreateView$lambda-8(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kij8AC813US45Qn-oGtRwhfxEpA(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->onViewCreated$lambda-13(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lCQUR7L6neHHYI_I_HEw8I5jzdg(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->onCreateView$lambda-5(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uM9H-8Q9LP7GZ1rEoW7rJyqMMko(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/widget/DatePicker;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->showDateTimePicker$lambda-15(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$wn_zQBDU48ako5rGJvT_AsWeYKg(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->onCreateView$lambda-3$lambda-2$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;-><init>()V

    .line 30
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 265
    .local v0, "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 266
    const/4 v1, 0x0

    .line 265
    .local v1, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 267
    .local v2, "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 269
    nop

    .line 267
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 270
    nop

    .line 30
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 31
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 271
    .restart local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 272
    const/4 v1, 0x0

    .line 271
    .restart local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 273
    .restart local v2    # "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 275
    nop

    .line 273
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$special$$inlined$activityViewModels$default$4;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$special$$inlined$activityViewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 276
    nop

    .line 31
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->contactlessViewModel$delegate:Lkotlin/Lazy;

    .line 28
    return-void
.end method

.method public static final synthetic access$getContactlessViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;

    .line 28
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getContactlessViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getDeviceSerialId$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;

    .line 28
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->deviceSerialId:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getListOfBranches$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;

    .line 28
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->listOfBranches:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getListOfStates$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;

    .line 28
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->listOfStates:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPartnerID$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;

    .line 28
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->partnerID:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;

    .line 28
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setListOfBranches$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->listOfBranches:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setListOfStates$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->listOfStates:Ljava/lang/String;

    return-void
.end method

.method private final clearSensitiveData()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->state:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->bvn:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->reference:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->password:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 251
    :cond_7
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->confirmPassword:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 252
    :cond_9
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v0, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_a
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->businessName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 253
    :cond_b
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v0, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_c
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->contactInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 254
    :cond_d
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v0, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_e
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->phone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 255
    :cond_f
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v0, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_10
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->email:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 256
    :cond_11
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v0, :cond_12

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_12
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->businessName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 257
    :cond_13
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v0, :cond_14

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_14
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->address:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 258
    :cond_15
    return-void
.end method

.method private final getContactlessViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->contactlessViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    return-object v0
.end method

.method private final getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    return-object v0
.end method

.method private final initViews()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "$this$initViews_u24lambda_u2d14":Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;
    :cond_0
    const/4 v1, 0x0

    .line 212
    .local v1, "$i$a$-with-RegisterFragment$initViews$1":I
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->state:Landroid/widget/AutoCompleteTextView;

    const-string v3, "state"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->firstBankStates:Landroid/widget/AutoCompleteTextView;

    .line 213
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->branch:Landroid/widget/AutoCompleteTextView;

    const-string v3, "branch"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->firstBankBranches:Landroid/widget/AutoCompleteTextView;

    .line 214
    nop

    .line 211
    .end local v0    # "$this$initViews_u24lambda_u2d14":Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;
    .end local v1    # "$i$a$-with-RegisterFragment$initViews$1":I
    nop

    .line 215
    return-void
.end method

.method private static final onCreateView$lambda-3(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 58
    .local v1, "$i$a$-let-RegisterFragment$onCreateView$2$1":I
    nop

    .line 59
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    const-string v3, "Registration Status"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 61
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 62
    const-string v3, "OK"

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)V

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 65
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    const-string v3, "Builder(requireContext()\u2026                .create()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->failureDialog:Landroidx/appcompat/app/AlertDialog;

    .line 67
    nop

    .line 57
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-RegisterFragment$onCreateView$2$1":I
    nop

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->failureDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_1

    const-string v0, "failureDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 69
    return-void
.end method

.method private static final onCreateView$lambda-3$lambda-2$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->failureDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez p1, :cond_0

    const-string p1, "failureDialog"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 64
    return-void
.end method

.method private static final onCreateView$lambda-5(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 73
    .local v1, "$i$a$-let-RegisterFragment$onCreateView$3$1":I
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 74
    nop

    .line 72
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-RegisterFragment$onCreateView$3$1":I
    nop

    .line 75
    :cond_0
    return-void
.end method

.method private static final onCreateView$lambda-7(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "it":Z
    const/4 v1, 0x0

    .line 80
    .local v1, "$i$a$-let-RegisterFragment$onCreateView$4$1":I
    if-eqz v0, :cond_1

    .line 81
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v2, :cond_0

    const-string v2, "dialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 83
    :cond_1
    nop

    .line 79
    .end local v0    # "it":Z
    .end local v1    # "$i$a$-let-RegisterFragment$onCreateView$4$1":I
    nop

    .line 84
    :cond_2
    return-void
.end method

.method private static final onCreateView$lambda-8(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    nop

    .line 92
    new-instance p1, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    invoke-direct {p1}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;-><init>()V

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 93
    nop

    .line 94
    nop

    .line 91
    const p2, 0x7f0a0071

    const-string v0, "Login Fragment"

    invoke-virtual {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->showFragment(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    .line 96
    return-void
.end method

.method private static final onCreateView$lambda-9(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    nop

    .line 108
    new-instance p1, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    invoke-direct {p1}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;-><init>()V

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 109
    nop

    .line 110
    nop

    .line 107
    const p2, 0x7f0a0071

    const-string v0, "Login Fragment"

    invoke-virtual {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->showFragment(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    .line 112
    return-void
.end method

.method private static final onViewCreated$lambda-10(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->showDateTimePicker()V

    .line 143
    return-void
.end method

.method private static final onViewCreated$lambda-11(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Lcom/woleapp/netpos/contactless/util/Resource;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;
    .param p1, "it"    # Lcom/woleapp/netpos/contactless/util/Resource;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/woleapp/netpos/contactless/adapter/StatesAdapter;

    .line 155
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getContactlessViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->getListOfStates()Ljava/util/ArrayList;

    move-result-object v1

    .line 156
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    nop

    .line 154
    const v3, 0x1090006

    invoke-direct {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/adapter/StatesAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;I)V

    .line 153
    nop

    .line 159
    .local v0, "stateAdapter":Lcom/woleapp/netpos/contactless/adapter/StatesAdapter;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->firstBankStates:Landroid/widget/AutoCompleteTextView;

    if-nez v1, :cond_0

    const-string v1, "firstBankStates"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    move-object v2, v0

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    return-void
.end method

.method private static final onViewCreated$lambda-12(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Lcom/woleapp/netpos/contactless/util/Resource;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;
    .param p1, "it"    # Lcom/woleapp/netpos/contactless/util/Resource;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/woleapp/netpos/contactless/adapter/BranchAdapter;

    .line 181
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getContactlessViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->getListOfBranches()Ljava/util/ArrayList;

    move-result-object v1

    .line 182
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    nop

    .line 180
    const v3, 0x1090006

    invoke-direct {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/adapter/BranchAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;I)V

    .line 179
    nop

    .line 185
    .local v0, "branchAdapter":Lcom/woleapp/netpos/contactless/adapter/BranchAdapter;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->firstBankBranches:Landroid/widget/AutoCompleteTextView;

    if-nez v1, :cond_0

    const-string v1, "firstBankBranches"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    move-object v2, v0

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    return-void
.end method

.method private static final onViewCreated$lambda-13(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/view/View;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->partnerID:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "partnerID"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->deviceSerialId:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, "deviceSerialId"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method private final showDateTimePicker()V
    .locals 9

    .line 218
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 219
    .local v0, "currentDate":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->date:Ljava/util/Calendar;

    .line 220
    new-instance v1, Landroid/app/DatePickerDialog;

    .line 221
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    .line 230
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)V

    .line 227
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 228
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 229
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 220
    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 230
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->show()V

    .line 231
    return-void
.end method

.method private static final showDateTimePicker$lambda-15(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Landroid/widget/DatePicker;III)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->date:Ljava/util/Calendar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "date"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 224
    add-int/lit8 v0, p3, 0x1

    .line 225
    .local v0, "month":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v2, :cond_1

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->state:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getView()Landroid/view/View;

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

    .line 48
    nop

    .line 49
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$onCreateView_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;
    const/4 v2, 0x0

    .line 50
    .local v2, "$i$a$-apply-RegisterFragment$onCreateView$1":I
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->executePendingBindings()V

    .line 51
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 52
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V

    .line 53
    nop

    .line 49
    .end local v1    # "$this$onCreateView_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;
    .end local v2    # "$i$a$-apply-RegisterFragment$onCreateView$1":I
    nop

    .line 48
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    .line 55
    const-string v0, "fcmbeasypay"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "zenith"

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->getMessage()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    new-instance v7, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)V

    invoke-virtual {v1, v3, v7}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->getMessage()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    new-instance v7, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda3;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)V

    invoke-virtual {v1, v3, v7}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 78
    :goto_0
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->getAuthDone()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    new-instance v7, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda4;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)V

    invoke-virtual {v1, v3, v7}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 85
    check-cast v0, Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v4, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const-string v1, "Builder(requireContext()\u2026                .create()"

    const-string v2, "Continue"

    const-string v3, "Registration Status"

    if-eqz v0, :cond_1

    .line 86
    nop

    .line 87
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 90
    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda5;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 97
    const-string v2, "Successful"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 100
    :cond_1
    nop

    .line 101
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 104
    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda6;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 113
    const-string v2, "You can start transactions immediately but contact the bank to regularize your Account"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 117
    :goto_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v0, :cond_2

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v6, v0

    :goto_2
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 261
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onDestroy()V

    .line 262
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 234
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onPause()V

    .line 236
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->clearSensitiveData()V

    .line 237
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 240
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onStop()V

    .line 242
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->clearSensitiveData()V

    .line 243
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-super {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 125
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->initPartnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->partnerID:Ljava/lang/String;

    .line 126
    const-string v0, "fcmbeasypay"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "zenith"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    const-string v2, "binding"

    if-eqz v1, :cond_f

    .line 127
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_0
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->fragmentState:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_1
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->fragmentState:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v6, "Select D.O.B"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_2
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->loginLabel:Landroid/widget/TextView;

    const-string v6, "Account Opening/SIGN UP"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_3
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->state:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 131
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_4
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->bvnField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v1, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_5
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->referenceField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_6
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->passwordField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v1, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_7
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->confirmPasswordField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 135
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v1, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_8
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->textInputBusinessName:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v6, "First Name"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v1, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_9
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->businessName:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/google/android/material/textfield/TextInputEditText;->setFocusableInTouchMode(Z)V

    .line 137
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v1, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_a
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->contactInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v6}, Lcom/google/android/material/textfield/TextInputEditText;->setFocusableInTouchMode(Z)V

    .line 138
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v1, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_b
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->phone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v6}, Lcom/google/android/material/textfield/TextInputEditText;->setFocusableInTouchMode(Z)V

    .line 139
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v1, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_c
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->email:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v6}, Lcom/google/android/material/textfield/TextInputEditText;->setFocusableInTouchMode(Z)V

    .line 140
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v1, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_d
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->textContactInfo:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v6, "Last Name"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v1, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_e
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->state:Landroid/widget/AutoCompleteTextView;

    new-instance v6, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda7;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)V

    invoke-virtual {v1, v6}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_f
    sget-object v1, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "requireContext()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->deviceSerialId:Ljava/lang/String;

    .line 146
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "firstbank"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 147
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->initViews()V

    .line 148
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v0, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_10
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->fragmentState:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v0, :cond_11

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_11
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->fragmentBranch:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 150
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getContactlessViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->getStates()V

    .line 152
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getContactlessViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->getGetStatesResponse()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v3, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda8;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 162
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->firstBankStates:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_12

    const-string v0, "firstBankStates"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    .line 163
    :cond_12
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$onViewCreated$3;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$onViewCreated$3;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)V

    check-cast v1, Landroid/widget/AdapterView$OnItemClickListener;

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 178
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getContactlessViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->getGetBranchResponse()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v3, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda9;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 188
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->firstBankBranches:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_13

    const-string v0, "firstBankBranches"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    .line 189
    :cond_13
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$onViewCreated$5;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$onViewCreated$5;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)V

    check-cast v1, Landroid/widget/AdapterView$OnItemClickListener;

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 204
    :cond_14
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    if-nez v0, :cond_15

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_15
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->btnLogin:Landroid/widget/Button;

    const-string v1, "binding.btnLogin"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->register:Landroid/widget/Button;

    .line 205
    if-nez v0, :cond_16

    const-string v0, "register"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_16
    move-object v5, v0

    :goto_0
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$$ExternalSyntheticLambda10;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    return-void
.end method
