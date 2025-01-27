.class public final Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
.super Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;
.source "SalesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSalesFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SalesFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/SalesFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,315:1\n77#2,6:316\n77#2,6:322\n262#3,2:328\n*S KotlinDebug\n*F\n+ 1 SalesFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/SalesFragment\n*L\n55#1:316,6\n56#1:322,6\n84#1:328,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 .2\u00020\u0001:\u0001.B\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0008\u0010&\u001a\u00020\'H\u0016J\u001a\u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00020\u001f2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0010\u0010*\u001a\u00020\'2\u0006\u0010+\u001a\u00020,H\u0002J\u0008\u0010-\u001a\u00020\'H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0014\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006/"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;",
        "()V",
        "alertDialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "amountEditText",
        "Landroid/widget/EditText;",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;",
        "compositeDisposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "dialogPrintTypeBinding",
        "Lcom/woleapp/netpos/contactless/databinding/DialogPrintTypeBinding;",
        "isVend",
        "",
        "nfcCardReaderViewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;",
        "getNfcCardReaderViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;",
        "nfcCardReaderViewModel$delegate",
        "Lkotlin/Lazy;",
        "printTypeDialog",
        "printerErrorDialog",
        "transactionType",
        "Lcom/danbamitale/epmslib/entities/TransactionType;",
        "viewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;",
        "getViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;",
        "viewModel$delegate",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "",
        "onViewCreated",
        "view",
        "showSnackBar",
        "message",
        "",
        "vend",
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
.field public static final Companion:Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;


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

.field private alertDialog:Landroidx/appcompat/app/AlertDialog;

.field private amountEditText:Landroid/widget/EditText;

.field private binding:Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;

.field private final compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private dialogPrintTypeBinding:Lcom/woleapp/netpos/contactless/databinding/DialogPrintTypeBinding;

.field private isVend:Z

.field private final nfcCardReaderViewModel$delegate:Lkotlin/Lazy;

.field private printTypeDialog:Landroidx/appcompat/app/AlertDialog;

.field private printerErrorDialog:Landroidx/appcompat/app/AlertDialog;

.field private transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$3DOb0LzmYVZ_gQ0w7KK054MBGic(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->onCreateView$lambda-22(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7ofU81WVGYCEEVWJAEYjvH0aqDQ(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->onCreateView$lambda-4$lambda-2(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9YdIVo85fhOC07ED3GuihYlZEtU(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->onCreateView$lambda-4$lambda-3(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AIUbc8_g7dzDyzSxTRxelaijfvk(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Long;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->vend$lambda-36(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Long;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$B3NF6meSY_AiuF0rpk70qd8rclg(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->onCreateView$lambda-20(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DazvCE3i1D3PAOfWmYfZJ9e6KOM(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->onCreateView$lambda-17(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ImQt7yw5C-0hqUtxF884ZhqdvQ4(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->onCreateView$lambda-11(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KJyDAEk3m5N6doMW82NiAnKphp4(Lkotlin/jvm/internal/Ref$IntRef;Landroid/app/ProgressDialog;Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/model/Vend;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->vend$lambda-37(Lkotlin/jvm/internal/Ref$IntRef;Landroid/app/ProgressDialog;Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/model/Vend;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O0PtL7eqhTLMPQr6iu3goqjHNSU(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->onCreateView$lambda-11$lambda-10$lambda-9(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ReYgKjCwp-VayNMPRnOesQwyzkQ(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->onCreateView$lambda-29(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V5jotHnHqlJi6W-2H3LqRm__HCs(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->onCreateView$lambda-7(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VWB60MpvJdP4QaM4IaPtdOtxqNk(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->onCreateView$lambda-24(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZkK9k3l56Vm6K9TznJNKDpc1jSs(Landroid/app/ProgressDialog;Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->vend$lambda-38(Landroid/app/ProgressDialog;Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dx-Tgf1HRgn87-In6yrMalR-uPU(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->vend$lambda-32$lambda-31(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eI2XRO_8r6SKgfApWQ9qNctIO0c(Lkotlin/Unit;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->vend$lambda-34(Lkotlin/Unit;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o_G4NWkWDy9hnfyTHxeUCXTeGy4(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->onCreateView$lambda-13(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qpYaCSg8mbSWz-qBFarrLwnEvNo(Ljava/net/Socket;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->vend$lambda-33(Ljava/net/Socket;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$x5_zs-2IiJOSsv6rYqHBp5mMffI(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->onCreateView$lambda-15(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yKEsA07nHCm_CDKc_4Pl_6wri90(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->onCreateView$lambda-25(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;-><init>()V

    .line 55
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 316
    .local v0, "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 317
    const/4 v1, 0x0

    .line 316
    .local v1, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 318
    .local v2, "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 320
    nop

    .line 318
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 321
    nop

    .line 55
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 56
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 322
    .restart local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 323
    const/4 v1, 0x0

    .line 322
    .restart local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 324
    .restart local v2    # "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 326
    nop

    .line 324
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$special$$inlined$activityViewModels$default$4;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$special$$inlined$activityViewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 327
    nop

    .line 56
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->nfcCardReaderViewModel$delegate:Lkotlin/Lazy;

    .line 63
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 41
    return-void
.end method

.method private final getNfcCardReaderViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->nfcCardReaderViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    return-object v0
.end method

.method private final getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    return-object v0
.end method

.method private static final onCreateView$lambda-11(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "shouldGetCardData":Z
    const/4 v1, 0x0

    .line 118
    .local v1, "$i$a$-let-SalesFragment$onCreateView$6$1":I
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "requireActivity()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    .line 121
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    const-string v4, "viewLifecycleOwner"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-static {v2, v3}, Lcom/woleapp/netpos/contactless/util/CardExtKt;->showCardDialog(Landroid/app/Activity;Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    .line 122
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda9;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;)V

    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 133
    :cond_0
    nop

    .line 117
    .end local v0    # "shouldGetCardData":Z
    .end local v1    # "$i$a$-let-SalesFragment$onCreateView$6$1":I
    nop

    .line 134
    :cond_1
    return-void
.end method

.method private static final onCreateView$lambda-11$lambda-10$lambda-9(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 7
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    if-eqz v6, :cond_0

    .local v6, "it":Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;
    const/4 v0, 0x0

    .line 124
    .local v0, "$i$a$-let-SalesFragment$onCreateView$6$1$1$1":I
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getNfcCardReaderViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v1

    .line 126
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getAmountLong()J

    move-result-wide v2

    .line 127
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getCashbackLong()J

    move-result-wide v4

    .line 128
    nop

    .line 125
    invoke-virtual/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->initiateNfcPayment(JJLcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;)V

    .line 130
    nop

    .line 123
    .end local v0    # "$i$a$-let-SalesFragment$onCreateView$6$1$1$1":I
    .end local v6    # "it":Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;
    nop

    .line 131
    :cond_0
    return-void
.end method

.method private static final onCreateView$lambda-13(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "it":Z
    const/4 v1, 0x0

    .line 137
    .local v1, "$i$a$-let-SalesFragment$onCreateView$7$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->printTypeDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v2, :cond_0

    const-string v2, "printTypeDialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 138
    nop

    .line 136
    .end local v0    # "it":Z
    .end local v1    # "$i$a$-let-SalesFragment$onCreateView$7$1":I
    nop

    .line 139
    :cond_1
    return-void
.end method

.method private static final onCreateView$lambda-15(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 143
    .local v1, "$i$a$-let-SalesFragment$onCreateView$8$1":I
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 144
    nop

    .line 142
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-SalesFragment$onCreateView$8$1":I
    nop

    .line 145
    :cond_0
    return-void
.end method

.method private static final onCreateView$lambda-17(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "it":Z
    const/4 v1, 0x0

    .line 148
    .local v1, "$i$a$-let-SalesFragment$onCreateView$9$1":I
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 151
    :cond_0
    nop

    .line 147
    .end local v0    # "it":Z
    .end local v1    # "$i$a$-let-SalesFragment$onCreateView$9$1":I
    nop

    .line 152
    :cond_1
    return-void
.end method

.method private static final onCreateView$lambda-20(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 155
    .local v1, "$i$a$-let-SalesFragment$onCreateView$10$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->printTypeDialog:Landroidx/appcompat/app/AlertDialog;

    const-string v3, "printTypeDialog"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_0
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->printTypeDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_1
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->printerErrorDialog:Landroidx/appcompat/app/AlertDialog;

    const-string v3, "printerErrorDialog"

    if-nez v2, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_3
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 159
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->printerErrorDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v2, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_4
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 161
    :cond_5
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->printerErrorDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v2, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v4, v2

    :goto_0
    move-object v2, v4

    .local v2, "$this$onCreateView_u24lambda_u2d20_u24lambda_u2d19_u24lambda_u2d18":Landroidx/appcompat/app/AlertDialog;
    const/4 v3, 0x0

    .line 162
    .local v3, "$i$a$-apply-SalesFragment$onCreateView$10$1$1":I
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 163
    nop

    .line 161
    .end local v2    # "$this$onCreateView_u24lambda_u2d20_u24lambda_u2d19_u24lambda_u2d18":Landroidx/appcompat/app/AlertDialog;
    .end local v3    # "$i$a$-apply-SalesFragment$onCreateView$10$1$1":I
    nop

    .line 163
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 164
    nop

    .line 154
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-SalesFragment$onCreateView$10$1":I
    nop

    .line 165
    :cond_7
    return-void
.end method

.method private static final onCreateView$lambda-22(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 169
    .local v1, "$i$a$-let-SalesFragment$onCreateView$11$1":I
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getNfcCardReaderViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v2

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getLastPosTransaction()Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-virtual {v2, v3}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->setLastPosTransactionResponse(Lcom/danbamitale/epmslib/entities/TransactionResponse;)V

    .line 170
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getNfcCardReaderViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->prepareSMS(Ljava/lang/String;)V

    .line 171
    nop

    .line 168
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-SalesFragment$onCreateView$11$1":I
    nop

    .line 172
    :cond_0
    return-void
.end method

.method private static final onCreateView$lambda-24(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "it":Z
    const/4 v1, 0x0

    .line 176
    .local v1, "$i$a$-let-SalesFragment$onCreateView$12$1":I
    if-eqz v0, :cond_0

    .line 177
    sget-object v2, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    .line 178
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext().applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    const/4 v4, 0x1

    .line 177
    invoke-virtual {v2, v3, v4}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->init(Landroid/content/Context;Z)V

    .line 182
    :cond_0
    nop

    .line 175
    .end local v0    # "it":Z
    .end local v1    # "$i$a$-let-SalesFragment$onCreateView$12$1":I
    nop

    .line 183
    :cond_1
    return-void
.end method

.method private static final onCreateView$lambda-25(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->validateFieldForNFC()V

    .line 186
    return-void
.end method

.method private static final onCreateView$lambda-29(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 7
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .param p1, "event"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    if-eqz v0, :cond_4

    .local v0, "it":Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
    const/4 v1, 0x0

    .line 190
    .local v1, "$i$a$-let-SalesFragment$onCreateView$14$1":I
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->getError()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .local v2, "error":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 191
    .local v3, "$i$a$-let-SalesFragment$onCreateView$14$1$1":I
    invoke-static {v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 193
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    .line 194
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 195
    const/4 v6, 0x1

    .line 192
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 197
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 198
    nop

    .line 190
    .end local v2    # "error":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-SalesFragment$onCreateView$14$1$1":I
    nop

    .line 199
    :cond_0
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->getCardData()Lcom/danbamitale/epmslib/entities/CardData;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 200
    .local v2, "$i$a$-let-SalesFragment$onCreateView$14$1$2":I
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v3

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->getCardScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->setCardScheme(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v3

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->getCustomerName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "Customer"

    :cond_1
    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->setCustomerName(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v3

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->getAccountType()Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->setAccountType(Lcom/danbamitale/epmslib/utils/IsoAccountType;)V

    .line 203
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v3

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->getCardData()Lcom/danbamitale/epmslib/entities/CardData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->setCardData(Lcom/danbamitale/epmslib/entities/CardData;)V

    .line 204
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v3

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "requireContext()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    if-nez v5, :cond_2

    const-string v5, "transactionType"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_2
    invoke-virtual {v3, v4, v5}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->makePayment(Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionType;)V

    .line 205
    nop

    .line 199
    .end local v2    # "$i$a$-let-SalesFragment$onCreateView$14$1$2":I
    nop

    .line 206
    :cond_3
    nop

    .line 189
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
    .end local v1    # "$i$a$-let-SalesFragment$onCreateView$14$1":I
    nop

    .line 207
    :cond_4
    return-void
.end method

.method private static final onCreateView$lambda-4$lambda-2(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .param p1, "d"    # Landroid/content/DialogInterface;

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 98
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->showReceiptDialog()V

    .line 99
    return-void
.end method

.method private static final onCreateView$lambda-4$lambda-3(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .param p1, "d"    # Landroid/content/DialogInterface;

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 102
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->finish()V

    .line 103
    return-void
.end method

.method private static final onCreateView$lambda-7(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .param p1, "it"    # Lcom/woleapp/netpos/contactless/util/Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .line 113
    .local v1, "$i$a$-let-SalesFragment$onCreateView$5$1":I
    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->showSnackBar(Ljava/lang/String;)V

    .line 114
    nop

    .line 112
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "$i$a$-let-SalesFragment$onCreateView$5$1":I
    nop

    .line 115
    :cond_0
    return-void
.end method

.method private final showSnackBar(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 213
    const-string v0, "Transaction not approved"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    nop

    .local v0, "$this$showSnackBar_u24lambda_u2d30":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v1, 0x0

    .line 216
    .local v1, "$i$a$-apply-SalesFragment$showSnackBar$1":I
    const-string v2, "Response"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 217
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 219
    nop

    .line 223
    .end local v0    # "$this$showSnackBar_u24lambda_u2d30":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v1    # "$i$a$-apply-SalesFragment$showSnackBar$1":I
    :cond_0
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 224
    const v1, 0x7f0a00e8

    .line 223
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 226
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    .line 227
    const/4 v2, 0x0

    .line 222
    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 229
    return-void
.end method

.method private final vend()V
    .locals 8

    .line 237
    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->isVend:Z

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 239
    .local v0, "count":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    .local v2, "$this$vend_u24lambda_u2d32":Landroid/app/ProgressDialog;
    const/4 v3, 0x0

    .line 240
    .local v3, "$i$a$-apply-SalesFragment$vend$progressBar$1":I
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 241
    const/4 v4, -0x2

    const-string v5, "Cancel"

    check-cast v5, Ljava/lang/CharSequence;

    new-instance v6, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda3;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;)V

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 246
    const-string v4, "Waiting for amount."

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 248
    nop

    .line 239
    .end local v2    # "$this$vend_u24lambda_u2d32":Landroid/app/ProgressDialog;
    .end local v3    # "$i$a$-apply-SalesFragment$vend$progressBar$1":I
    nop

    .line 249
    .local v1, "progressBar":Landroid/app/ProgressDialog;
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 250
    .local v2, "socket":Ljava/net/Socket;
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 251
    .local v3, "printWriter":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 252
    .local v4, "reader":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v5, v2, v3, v4}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda4;-><init>(Ljava/net/Socket;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v5}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v5

    new-instance v6, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda5;-><init>()V

    .line 259
    invoke-virtual {v5, v6}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v5

    .line 261
    new-instance v6, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda6;

    invoke-direct {v6, v3, v4}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v5, v6}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v5

    .line 276
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v5

    .line 277
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v5

    .line 278
    new-instance v6, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda7;

    invoke-direct {v6, v0, v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Landroid/app/ProgressDialog;Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;)V

    new-instance v7, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda8;

    invoke-direct {v7, v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda8;-><init>(Landroid/app/ProgressDialog;Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;)V

    invoke-virtual {v5, v6, v7}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v5

    const-string v6, "fromCallable {\n         \u2026ssed()\n                })"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v5, v6}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 308
    .end local v0    # "count":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v1    # "progressBar":Landroid/app/ProgressDialog;
    .end local v2    # "socket":Ljava/net/Socket;
    .end local v3    # "printWriter":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "reader":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_0
    return-void
.end method

.method private static final vend$lambda-32$lambda-31(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 243
    iget-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 244
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 245
    return-void
.end method

.method private static final vend$lambda-33(Ljava/net/Socket;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 3
    .param p0, "$socket"    # Ljava/net/Socket;
    .param p1, "$printWriter"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p2, "$reader"    # Lkotlin/jvm/internal/Ref$ObjectRef;

    const-string v0, "$socket"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$printWriter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    const v0, 0x1d4c0

    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 254
    new-instance v0, Ljava/net/InetSocketAddress;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getVEND_IP()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getVEND_PORT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    check-cast v0, Ljava/net/SocketAddress;

    invoke-virtual {p0, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 255
    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 256
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v1, Ljava/io/Reader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 257
    iget-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 258
    .local v0, "firstData":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private static final vend$lambda-34(Lkotlin/Unit;)Lio/reactivex/ObservableSource;
    .locals 5
    .param p0, "it"    # Lkotlin/Unit;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x5

    invoke-static {v1, v2, v3, v4, v0}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    return-object v0
.end method

.method private static final vend$lambda-36(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Long;)Lio/reactivex/ObservableSource;
    .locals 5
    .param p0, "$printWriter"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p1, "$reader"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p2, "it"    # Ljava/lang/Long;

    const-string v0, "$printWriter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    move-object v1, v0

    .local v1, "$this$vend_u24lambda_u2d36_u24lambda_u2d35":Lcom/google/gson/JsonObject;
    const/4 v2, 0x0

    .line 263
    .local v2, "$i$a$-apply-SalesFragment$vend$3$out$1":I
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v4, "serial_number"

    invoke-virtual {v1, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v3, "status"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    nop

    .line 262
    .end local v1    # "$this$vend_u24lambda_u2d36_u24lambda_u2d35":Lcom/google/gson/JsonObject;
    .end local v2    # "$i$a$-apply-SalesFragment$vend$3$out$1":I
    nop

    .line 265
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonObject().apply {\n   \u2026             }.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    nop

    .line 266
    .local v0, "out":Ljava/lang/String;
    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/io/PrintWriter;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    :cond_0
    nop

    .line 268
    :try_start_0
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/io/BufferedReader;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 269
    .local v1, "s":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    sget-object v2, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/woleapp/netpos/contactless/model/Vend;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/model/Vend;

    .line 272
    .local v2, "vend":Lcom/woleapp/netpos/contactless/model/Vend;
    invoke-static {v2}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "vend":Lcom/woleapp/netpos/contactless/model/Vend;
    goto :goto_1

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/woleapp/netpos/contactless/model/Vend;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lcom/woleapp/netpos/contactless/model/Vend;-><init>(D)V

    invoke-static {v2}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v3

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    check-cast v3, Lio/reactivex/ObservableSource;

    .line 267
    return-object v3
.end method

.method private static final vend$lambda-37(Lkotlin/jvm/internal/Ref$IntRef;Landroid/app/ProgressDialog;Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Lcom/woleapp/netpos/contactless/model/Vend;)V
    .locals 7
    .param p0, "$count"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p1, "$progressBar"    # Landroid/app/ProgressDialog;
    .param p2, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .param p3, "it"    # Lcom/woleapp/netpos/contactless/model/Vend;

    const-string v0, "$count"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$progressBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vend: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 281
    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/model/Vend;->getAmount()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_1

    .line 282
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 283
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "received"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 284
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/model/Vend;->getAmount()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 285
    iget-object v0, p2, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->priceTextbox:Landroid/widget/EditText;

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/model/Vend;->getAmount()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p2, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    goto :goto_0

    .line 287
    :cond_1
    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v1, 0xc

    if-le v0, v1, :cond_2

    .line 288
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 290
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 291
    const-string v1, "Did not receive amount after waiting"

    check-cast v1, Ljava/lang/CharSequence;

    .line 292
    nop

    .line 289
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 294
    iget-object v0, p2, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 295
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 297
    :cond_2
    :goto_0
    return-void
.end method

.method private static final vend$lambda-38(Landroid/app/ProgressDialog;Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "$progressBar"    # Landroid/app/ProgressDialog;
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .param p2, "it"    # Ljava/lang/Throwable;

    const-string v0, "$progressBar"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 300
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 302
    nop

    .line 299
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 306
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getView()Landroid/view/View;

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
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;

    move-result-object v1

    const-string v2, "inflate(inflater, container, false)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;

    .line 73
    const-string v2, "binding"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->priceTextbox:Landroid/widget/EditText;

    const-string v4, "binding.priceTextbox"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->amountEditText:Landroid/widget/EditText;

    .line 74
    if-nez v1, :cond_1

    const-string v1, "amountEditText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    .local v1, "$this$onCreateView_u24lambda_u2d0":Landroid/widget/EditText;
    :cond_1
    const/4 v4, 0x0

    .line 75
    .local v4, "$i$a$-apply-SalesFragment$onCreateView$1":I
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v6, Lcom/woleapp/netpos/contactless/util/DecimalDigitsInputFilter;

    const/16 v7, 0x8

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/woleapp/netpos/contactless/util/DecimalDigitsInputFilter;-><init>(II)V

    check-cast v6, Landroid/text/InputFilter;

    aput-object v6, v5, v0

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 76
    nop

    .line 74
    .end local v1    # "$this$onCreateView_u24lambda_u2d0":Landroid/widget/EditText;
    .end local v4    # "$i$a$-apply-SalesFragment$onCreateView$1":I
    nop

    .line 77
    nop

    .line 78
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 79
    nop

    .line 80
    sget-object v4, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE:Lcom/danbamitale/epmslib/entities/TransactionType;

    invoke-virtual {v4}, Lcom/danbamitale/epmslib/entities/TransactionType;->name()Ljava/lang/String;

    move-result-object v4

    .line 78
    const-string v5, "transaction_type"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    invoke-static {v1}, Lcom/danbamitale/epmslib/entities/TransactionType;->valueOf(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v1

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 83
    const-string v4, "transactionType"

    if-nez v1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_3
    sget-object v5, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE_WITH_CASH_BACK:Lcom/danbamitale/epmslib/entities/TransactionType;

    if-ne v1, v5, :cond_5

    .line 84
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;

    if-nez v1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_4
    iget-object v1, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->cashbackInputLayout:Landroid/widget/LinearLayout;

    const-string v5, "binding.cashbackInputLayout"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .local v1, "$this$isVisible$iv":Landroid/view/View;
    const/4 v5, 0x1

    .local v5, "value$iv":Z
    const/4 v6, 0x0

    .line 328
    .local v6, "$i$f$setVisible":I
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .end local v1    # "$this$isVisible$iv":Landroid/view/View;
    .end local v5    # "value$iv":Z
    .end local v6    # "$i$f$setVisible":I
    :cond_5
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v5, "IS_VEND"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1

    :cond_6
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->isVend:Z

    .line 87
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v1

    iget-boolean v5, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->isVend:Z

    invoke-virtual {v1, v5}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->isVend(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1, v3, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogPrintTypeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/DialogPrintTypeBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater, null, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$onCreateView_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/databinding/DialogPrintTypeBinding;
    const/4 v5, 0x0

    .line 90
    .local v5, "$i$a$-apply-SalesFragment$onCreateView$2":I
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/databinding/DialogPrintTypeBinding;->executePendingBindings()V

    .line 91
    nop

    .line 89
    .end local v1    # "$this$onCreateView_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/databinding/DialogPrintTypeBinding;
    .end local v5    # "$i$a$-apply-SalesFragment$onCreateView$2":I
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->dialogPrintTypeBinding:Lcom/woleapp/netpos/contactless/databinding/DialogPrintTypeBinding;

    .line 92
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    move-object v1, v0

    .local v1, "$this$onCreateView_u24lambda_u2d4":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v5, 0x0

    .line 94
    .local v5, "$i$a$-apply-SalesFragment$onCreateView$3":I
    const-string v6, "Printer Error"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 95
    const v6, 0x7f08010d

    invoke-virtual {v1, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 96
    const-string v6, "Send Receipt"

    check-cast v6, Ljava/lang/CharSequence;

    new-instance v7, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;)V

    invoke-virtual {v1, v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 100
    const-string v6, "Dismiss"

    check-cast v6, Ljava/lang/CharSequence;

    new-instance v7, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda12;

    invoke-direct {v7, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda12;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;)V

    invoke-virtual {v1, v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 104
    nop

    .line 93
    .end local v1    # "$this$onCreateView_u24lambda_u2d4":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v5    # "$i$a$-apply-SalesFragment$onCreateView$3":I
    nop

    .line 104
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const-string v1, "Builder(requireContext()\u2026 }\n            }.create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->printerErrorDialog:Landroidx/appcompat/app/AlertDialog;

    .line 105
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    .local v0, "$this$onCreateView_u24lambda_u2d5":Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;
    :cond_7
    const/4 v1, 0x0

    .line 106
    .local v1, "$i$a$-apply-SalesFragment$onCreateView$4":I
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;)V

    .line 107
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 108
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->executePendingBindings()V

    .line 109
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->transactionType:Lcom/danbamitale/epmslib/entities/TransactionType;

    if-nez v5, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_8
    invoke-virtual {v5}, Lcom/danbamitale/epmslib/entities/TransactionType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->setType(Ljava/lang/String;)V

    .line 110
    nop

    .line 105
    .end local v0    # "$this$onCreateView_u24lambda_u2d5":Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;
    .end local v1    # "$i$a$-apply-SalesFragment$onCreateView$4":I
    nop

    .line 111
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getMessage()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda13;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 116
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getGetCardData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda14;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 135
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getShowReceiptType()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda15;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 141
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getToastMessage()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda16;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 146
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getFinish()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda17;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 153
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getShowPrinterError()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda18;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda18;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 167
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getShowPrintDialog()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 174
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewModel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getShouldRefreshNibssKeys()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 184
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;

    if-nez v0, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_9
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->process:Landroid/widget/Button;

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda10;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getNfcCardReaderViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->getIccCardHelperLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda11;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 209
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;

    if-nez v0, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move-object v3, v0

    :goto_2
    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 311
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onDestroy()V

    .line 312
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 313
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-super {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 233
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->vend()V

    .line 234
    return-void
.end method
