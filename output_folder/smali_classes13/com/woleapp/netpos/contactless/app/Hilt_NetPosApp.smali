.class public abstract Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;
.super Landroid/app/Application;
.source "Hilt_NetPosApp.java"

# interfaces
.implements Ldagger/hilt/internal/GeneratedComponentManagerHolder;


# instance fields
.field private final componentManager:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

.field private injected:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;->injected:Z

    .line 19
    new-instance v0, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    new-instance v1, Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp$1;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp$1;-><init>(Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;)V

    invoke-direct {v0, v1}, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;-><init>(Ldagger/hilt/android/internal/managers/ComponentSupplier;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;->componentManager:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;->componentManager:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    return-object v0
.end method

.method public bridge synthetic componentManager()Ldagger/hilt/internal/GeneratedComponentManager;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;->componentManager()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    move-result-object v0

    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;->componentManager()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hiltInternalInject()V
    .locals 2

    .line 45
    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;->injected:Z

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;->injected:Z

    .line 49
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/app/NetPosApp_GeneratedInjector;

    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/app/NetPosApp;

    invoke-interface {v0, v1}, Lcom/woleapp/netpos/contactless/app/NetPosApp_GeneratedInjector;->injectNetPosApp(Lcom/woleapp/netpos/contactless/app/NetPosApp;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;->hiltInternalInject()V

    .line 41
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 42
    return-void
.end method
