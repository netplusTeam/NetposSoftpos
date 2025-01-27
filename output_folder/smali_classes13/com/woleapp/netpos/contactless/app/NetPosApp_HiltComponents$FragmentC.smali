.class public abstract Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$FragmentC;
.super Ljava/lang/Object;
.source "NetPosApp_HiltComponents.java"

# interfaces
.implements Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal_GeneratedInjector;
.implements Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment_GeneratedInjector;
.implements Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_GeneratedInjector;
.implements Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrResultFragment_GeneratedInjector;
.implements Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment_GeneratedInjector;
.implements Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment_GeneratedInjector;
.implements Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored_GeneratedInjector;
.implements Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner_GeneratedInjector;
.implements Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment_GeneratedInjector;
.implements Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment_GeneratedInjector;
.implements Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment_GeneratedInjector;
.implements Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment_GeneratedInjector;
.implements Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment_GeneratedInjector;
.implements Ldagger/hilt/android/components/FragmentComponent;
.implements Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$FragmentEntryPoint;
.implements Ldagger/hilt/android/internal/managers/ViewComponentManager$ViewWithFragmentComponentBuilderEntryPoint;
.implements Ldagger/hilt/internal/GeneratedComponent;


# annotations
.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ViewWithFragmentCBuilderModule;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FragmentC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$FragmentC$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
