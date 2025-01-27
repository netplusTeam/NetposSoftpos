.class Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory$1;
.super Landroidx/lifecycle/AbstractSavedStateViewModelFactory;
.source "HiltViewModelFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;Ljava/util/Set;Landroidx/lifecycle/ViewModelProvider$Factory;Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

.field final synthetic val$viewModelComponentBuilder:Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;


# direct methods
.method constructor <init>(Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;)V
    .locals 0
    .param p1, "this$0"    # Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;
    .param p2, "owner"    # Landroidx/savedstate/SavedStateRegistryOwner;
    .param p3, "defaultArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "owner",
            "defaultArgs",
            "val$viewModelComponentBuilder"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory$1;->this$0:Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    iput-object p4, p0, Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory$1;->val$viewModelComponentBuilder:Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;

    invoke-direct {p0, p2, p3}, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/SavedStateHandle;)Landroidx/lifecycle/ViewModel;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "handle"    # Landroidx/lifecycle/SavedStateHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "modelClass",
            "handle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/lifecycle/SavedStateHandle;",
            ")TT;"
        }
    .end annotation

    .line 87
    .local p2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory$1;->val$viewModelComponentBuilder:Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;

    .line 88
    invoke-interface {v0, p3}, Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;->savedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;

    move-result-object v0

    invoke-interface {v0}, Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;->build()Ldagger/hilt/android/components/ViewModelComponent;

    move-result-object v0

    .line 89
    .local v0, "component":Ldagger/hilt/android/components/ViewModelComponent;
    const-class v1, Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory$ViewModelFactoriesEntryPoint;

    .line 90
    invoke-static {v0, v1}, Ldagger/hilt/EntryPoints;->get(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory$ViewModelFactoriesEntryPoint;

    .line 91
    invoke-interface {v1}, Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory$ViewModelFactoriesEntryPoint;->getHiltViewModelMap()Ljava/util/Map;

    move-result-object v1

    .line 92
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/inject/Provider;

    .line 93
    .local v1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+Landroidx/lifecycle/ViewModel;>;"
    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/ViewModel;

    return-object v2

    .line 94
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected the @HiltViewModel-annotated class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 96
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' to be available in the multi-binding of @HiltViewModelMap but none was found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
