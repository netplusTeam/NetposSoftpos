.class public abstract Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ViewModelC;
.super Ljava/lang/Object;
.source "NetPosApp_HiltComponents.java"

# interfaces
.implements Ldagger/hilt/android/components/ViewModelComponent;
.implements Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory$ViewModelFactoriesEntryPoint;
.implements Ldagger/hilt/internal/GeneratedComponent;


# annotations
.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel_HiltModules$BindsModule;,
        Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel_HiltModules$BindsModule;,
        Ldagger/hilt/android/internal/lifecycle/HiltWrapper_HiltViewModelFactory_ViewModelModule;,
        Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel_HiltModules$BindsModule;,
        Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_HiltModules$BindsModule;,
        Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel_HiltModules$BindsModule;,
        Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_HiltModules$BindsModule;,
        Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel_HiltModules$BindsModule;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewModelC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ViewModelC$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
