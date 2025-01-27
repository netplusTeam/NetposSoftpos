.class final Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$Lifecycle;
.super Ljava/lang/Object;
.source "ActivityRetainedComponentManager.java"

# interfaces
.implements Ldagger/hilt/android/ActivityRetainedLifecycle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Lifecycle"
.end annotation


# instance fields
.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ldagger/hilt/android/ActivityRetainedLifecycle$OnClearedListener;",
            ">;"
        }
    .end annotation
.end field

.field private onClearedDispatched:Z


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$Lifecycle;->listeners:Ljava/util/Set;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$Lifecycle;->onClearedDispatched:Z

    .line 134
    return-void
.end method

.method private throwIfOnClearedDispatched()V
    .locals 2

    .line 159
    iget-boolean v0, p0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$Lifecycle;->onClearedDispatched:Z

    if-nez v0, :cond_0

    .line 165
    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was a race between the call to add/remove an OnClearedListener and onCleared(). This can happen when posting to the Main thread from a background thread, which is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addOnClearedListener(Ldagger/hilt/android/ActivityRetainedLifecycle$OnClearedListener;)V
    .locals 1
    .param p1, "listener"    # Ldagger/hilt/android/ActivityRetainedLifecycle$OnClearedListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 138
    invoke-static {}, Ldagger/hilt/android/internal/ThreadUtil;->ensureMainThread()V

    .line 139
    invoke-direct {p0}, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$Lifecycle;->throwIfOnClearedDispatched()V

    .line 140
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$Lifecycle;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method dispatchOnCleared()V
    .locals 2

    .line 151
    invoke-static {}, Ldagger/hilt/android/internal/ThreadUtil;->ensureMainThread()V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$Lifecycle;->onClearedDispatched:Z

    .line 153
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$Lifecycle;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldagger/hilt/android/ActivityRetainedLifecycle$OnClearedListener;

    .line 154
    .local v1, "listener":Ldagger/hilt/android/ActivityRetainedLifecycle$OnClearedListener;
    invoke-interface {v1}, Ldagger/hilt/android/ActivityRetainedLifecycle$OnClearedListener;->onCleared()V

    .line 155
    .end local v1    # "listener":Ldagger/hilt/android/ActivityRetainedLifecycle$OnClearedListener;
    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public removeOnClearedListener(Ldagger/hilt/android/ActivityRetainedLifecycle$OnClearedListener;)V
    .locals 1
    .param p1, "listener"    # Ldagger/hilt/android/ActivityRetainedLifecycle$OnClearedListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 145
    invoke-static {}, Ldagger/hilt/android/internal/ThreadUtil;->ensureMainThread()V

    .line 146
    invoke-direct {p0}, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$Lifecycle;->throwIfOnClearedDispatched()V

    .line 147
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$Lifecycle;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method
