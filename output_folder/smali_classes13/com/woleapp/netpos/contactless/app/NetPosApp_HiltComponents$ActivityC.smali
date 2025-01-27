.class public abstract Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ActivityC;
.super Ljava/lang/Object;
.source "NetPosApp_HiltComponents.java"

# interfaces
.implements Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity_GeneratedInjector;
.implements Lcom/woleapp/netpos/contactless/ui/activities/MainActivity_GeneratedInjector;
.implements Ldagger/hilt/android/components/ActivityComponent;
.implements Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$ActivityEntryPoint;
.implements Ldagger/hilt/android/internal/lifecycle/HiltWrapper_HiltViewModelFactory_ActivityCreatorEntryPoint;
.implements Ldagger/hilt/android/internal/managers/FragmentComponentManager$FragmentComponentBuilderEntryPoint;
.implements Ldagger/hilt/android/internal/managers/ViewComponentManager$ViewComponentBuilderEntryPoint;
.implements Ldagger/hilt/internal/GeneratedComponent;


# annotations
.annotation runtime Ldagger/Subcomponent;
    modules = {
        Ldagger/hilt/android/internal/modules/HiltWrapper_ActivityModule;,
        Ldagger/hilt/android/internal/lifecycle/HiltWrapper_DefaultViewModelFactories_ActivityModule;,
        Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$FragmentCBuilderModule;,
        Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ViewCBuilderModule;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActivityC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ActivityC$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
