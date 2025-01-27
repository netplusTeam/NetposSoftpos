.class public abstract Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Hilt_AuthenticationActivity.java"

# interfaces
.implements Ldagger/hilt/internal/GeneratedComponentManagerHolder;


# instance fields
.field private volatile componentManager:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

.field private final componentManagerLock:Ljava/lang/Object;

.field private injected:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->componentManagerLock:Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->injected:Z

    .line 26
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->_initHiltInternal()V

    .line 27
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "contentLayoutId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentLayoutId"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;-><init>(I)V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->componentManagerLock:Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->injected:Z

    .line 31
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->_initHiltInternal()V

    .line 32
    return-void
.end method

.method private _initHiltInternal()V
    .locals 1

    .line 35
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity$1;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity$1;-><init>(Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;)V

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->componentManager:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->componentManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->componentManager:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->createComponentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->componentManager:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->componentManager:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    return-object v0
.end method

.method public bridge synthetic componentManager()Ldagger/hilt/internal/GeneratedComponentManager;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object v0

    return-object v0
.end method

.method protected createComponentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;
    .locals 1

    .line 49
    new-instance v0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    .line 73
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    invoke-static {p0, v0}, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories;->getActivityFactory(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method

.method protected inject()V
    .locals 2

    .line 65
    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->injected:Z

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->injected:Z

    .line 67
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity_GeneratedInjector;

    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;

    invoke-interface {v0, v1}, Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity_GeneratedInjector;->injectAuthenticationActivity(Lcom/woleapp/netpos/contactless/ui/activities/AuthenticationActivity;)V

    .line 69
    :cond_0
    return-void
.end method
