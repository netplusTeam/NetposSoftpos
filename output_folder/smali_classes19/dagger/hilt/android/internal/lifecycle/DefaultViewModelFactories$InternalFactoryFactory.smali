.class public final Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;
.super Ljava/lang/Object;
.source "DefaultViewModelFactories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalFactoryFactory"
.end annotation


# instance fields
.field private final application:Landroid/app/Application;

.field private final keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final viewModelComponentBuilder:Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;


# direct methods
.method constructor <init>(Landroid/app/Application;Ljava/util/Set;Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;
    .param p3, "viewModelComponentBuilder"    # Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "application",
            "keySet",
            "viewModelComponentBuilder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 83
    .local p2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;->application:Landroid/app/Application;

    .line 85
    iput-object p2, p0, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;->keySet:Ljava/util/Set;

    .line 86
    iput-object p3, p0, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;->viewModelComponentBuilder:Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;

    .line 87
    return-void
.end method

.method private getHiltViewModelFactory(Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 8
    .param p1, "owner"    # Landroidx/savedstate/SavedStateRegistryOwner;
    .param p2, "defaultArgs"    # Landroid/os/Bundle;
    .param p3, "extensionDelegate"    # Landroidx/lifecycle/ViewModelProvider$Factory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "owner",
            "defaultArgs",
            "extensionDelegate"
        }
    .end annotation

    .line 106
    if-nez p3, :cond_0

    .line 107
    new-instance v0, Landroidx/lifecycle/SavedStateViewModelFactory;

    iget-object v1, p0, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;->application:Landroid/app/Application;

    invoke-direct {v0, v1, p1, p2}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    move-object v6, v0

    goto :goto_0

    .line 108
    :cond_0
    move-object v6, p3

    :goto_0
    nop

    .line 109
    .local v6, "delegate":Landroidx/lifecycle/ViewModelProvider$Factory;
    new-instance v0, Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    iget-object v5, p0, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;->keySet:Ljava/util/Set;

    iget-object v7, p0, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;->viewModelComponentBuilder:Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;Ljava/util/Set;Landroidx/lifecycle/ViewModelProvider$Factory;Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;)V

    return-object v0
.end method


# virtual methods
.method fromActivity(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1
    .param p1, "activity"    # Landroidx/activity/ComponentActivity;
    .param p2, "delegateFactory"    # Landroidx/lifecycle/ViewModelProvider$Factory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "delegateFactory"
        }
    .end annotation

    .line 91
    nop

    .line 93
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    invoke-direct {p0, p1, v0, p2}, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;->getHiltViewModelFactory(Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method

.method fromFragment(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "delegateFactory"    # Landroidx/lifecycle/ViewModelProvider$Factory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fragment",
            "delegateFactory"
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;->getHiltViewModelFactory(Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method
