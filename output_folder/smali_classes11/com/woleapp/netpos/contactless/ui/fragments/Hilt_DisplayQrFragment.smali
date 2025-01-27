.class public abstract Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;
.super Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;
.source "Hilt_DisplayQrFragment.java"

# interfaces
.implements Ldagger/hilt/internal/GeneratedComponentManagerHolder;


# instance fields
.field private componentContext:Landroid/content/ContextWrapper;

.field private volatile componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

.field private final componentManagerLock:Ljava/lang/Object;

.field private disableGetContextFix:Z

.field private injected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->componentManagerLock:Ljava/lang/Object;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->injected:Z

    return-void
.end method

.method private initializeComponentContext()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->componentContext:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    .line 57
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->createContextWrapper(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Landroid/content/ContextWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->componentContext:Landroid/content/ContextWrapper;

    .line 58
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/flags/FragmentGetContextFix;->isFragmentGetContextFixDisabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->disableGetContextFix:Z

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->componentManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    if-nez v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->createComponentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    .line 93
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 95
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    return-object v0
.end method

.method public bridge synthetic componentManager()Ldagger/hilt/internal/GeneratedComponentManager;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->componentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    move-result-object v0

    return-object v0
.end method

.method protected createComponentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;
    .locals 1

    .line 83
    new-instance v0, Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->componentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->disableGetContextFix:Z

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->initializeComponentContext()V

    .line 68
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->componentContext:Landroid/content/ContextWrapper;

    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    invoke-static {p0, v0}, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories;->getFragmentFactory(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method

.method protected inject()V
    .locals 2

    .line 99
    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->injected:Z

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->injected:Z

    .line 101
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_GeneratedInjector;

    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;

    invoke-interface {v0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment_GeneratedInjector;->injectDisplayQrFragment(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;)V

    .line 103
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 48
    invoke-super {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 49
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->componentContext:Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->findActivity(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onAttach called multiple times with different Context! Hilt Fragments should not be retained."

    invoke-static {v0, v2, v1}, Ldagger/hilt/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->initializeComponentContext()V

    .line 51
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->inject()V

    .line 52
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 38
    invoke-super {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->initializeComponentContext()V

    .line 40
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/Hilt_DisplayQrFragment;->inject()V

    .line 41
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 73
    invoke-super {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 74
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-static {v0, p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->createContextWrapper(Landroid/view/LayoutInflater;Landroidx/fragment/app/Fragment;)Landroid/content/ContextWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    return-object v1
.end method
