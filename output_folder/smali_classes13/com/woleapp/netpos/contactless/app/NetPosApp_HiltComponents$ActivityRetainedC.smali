.class public abstract Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ActivityRetainedC;
.super Ljava/lang/Object;
.source "NetPosApp_HiltComponents.java"

# interfaces
.implements Ldagger/hilt/android/components/ActivityRetainedComponent;
.implements Ldagger/hilt/android/internal/managers/ActivityComponentManager$ActivityComponentBuilderEntryPoint;
.implements Ldagger/hilt/android/internal/managers/HiltWrapper_ActivityRetainedComponentManager_ActivityRetainedLifecycleEntryPoint;
.implements Ldagger/hilt/internal/GeneratedComponent;


# annotations
.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel_HiltModules$KeyModule;,
        Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel_HiltModules$KeyModule;,
        Ldagger/hilt/android/internal/managers/HiltWrapper_ActivityRetainedComponentManager_LifecycleModule;,
        Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ActivityCBuilderModule;,
        Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ViewModelCBuilderModule;,
        Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel_HiltModules$KeyModule;,
        Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel_HiltModules$KeyModule;,
        Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel_HiltModules$KeyModule;,
        Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel_HiltModules$KeyModule;,
        Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel_HiltModules$KeyModule;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActivityRetainedC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ActivityRetainedC$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
