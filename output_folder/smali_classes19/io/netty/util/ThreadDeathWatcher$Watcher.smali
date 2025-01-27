.class final Lio/netty/util/ThreadDeathWatcher$Watcher;
.super Ljava/lang/Object;
.source "ThreadDeathWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/ThreadDeathWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watcher"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final watchees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/util/ThreadDeathWatcher$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    const-class v0, Lio/netty/util/ThreadDeathWatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/util/ThreadDeathWatcher$Watcher;->watchees:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/ThreadDeathWatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/ThreadDeathWatcher$1;

    .line 146
    invoke-direct {p0}, Lio/netty/util/ThreadDeathWatcher$Watcher;-><init>()V

    return-void
.end method

.method private fetchWatchees()V
    .locals 2

    .line 199
    :goto_0
    invoke-static {}, Lio/netty/util/ThreadDeathWatcher;->access$100()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/ThreadDeathWatcher$Entry;

    .line 200
    .local v0, "e":Lio/netty/util/ThreadDeathWatcher$Entry;
    if-nez v0, :cond_0

    .line 201
    nop

    .line 210
    .end local v0    # "e":Lio/netty/util/ThreadDeathWatcher$Entry;
    return-void

    .line 204
    .restart local v0    # "e":Lio/netty/util/ThreadDeathWatcher$Entry;
    :cond_0
    iget-boolean v1, v0, Lio/netty/util/ThreadDeathWatcher$Entry;->isWatch:Z

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lio/netty/util/ThreadDeathWatcher$Watcher;->watchees:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
    :cond_1
    iget-object v1, p0, Lio/netty/util/ThreadDeathWatcher$Watcher;->watchees:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 209
    .end local v0    # "e":Lio/netty/util/ThreadDeathWatcher$Entry;
    :goto_1
    goto :goto_0
.end method

.method private notifyWatchees()V
    .locals 6

    .line 213
    iget-object v0, p0, Lio/netty/util/ThreadDeathWatcher$Watcher;->watchees:Ljava/util/List;

    .line 214
    .local v0, "watchees":Ljava/util/List;, "Ljava/util/List<Lio/netty/util/ThreadDeathWatcher$Entry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/util/ThreadDeathWatcher$Entry;

    .line 216
    .local v2, "e":Lio/netty/util/ThreadDeathWatcher$Entry;
    iget-object v3, v2, Lio/netty/util/ThreadDeathWatcher$Entry;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 217
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 219
    :try_start_0
    iget-object v3, v2, Lio/netty/util/ThreadDeathWatcher$Entry;->task:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 220
    :catchall_0
    move-exception v3

    .line 221
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lio/netty/util/ThreadDeathWatcher;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    const-string v5, "Thread death watcher task raised an exception:"

    invoke-interface {v4, v5, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_2

    .line 224
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 226
    .end local v2    # "e":Lio/netty/util/ThreadDeathWatcher$Entry;
    :goto_2
    goto :goto_0

    .line 227
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 153
    :goto_0
    invoke-direct {p0}, Lio/netty/util/ThreadDeathWatcher$Watcher;->fetchWatchees()V

    .line 154
    invoke-direct {p0}, Lio/netty/util/ThreadDeathWatcher$Watcher;->notifyWatchees()V

    .line 157
    invoke-direct {p0}, Lio/netty/util/ThreadDeathWatcher$Watcher;->fetchWatchees()V

    .line 158
    invoke-direct {p0}, Lio/netty/util/ThreadDeathWatcher$Watcher;->notifyWatchees()V

    .line 161
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_1

    .line 162
    :catch_0
    move-exception v0

    .line 166
    :goto_1
    iget-object v0, p0, Lio/netty/util/ThreadDeathWatcher$Watcher;->watchees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lio/netty/util/ThreadDeathWatcher;->access$100()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    invoke-static {}, Lio/netty/util/ThreadDeathWatcher;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 172
    .local v0, "stopped":Z
    if-eqz v0, :cond_2

    .line 175
    invoke-static {}, Lio/netty/util/ThreadDeathWatcher;->access$100()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    goto :goto_2

    .line 184
    :cond_0
    invoke-static {}, Lio/netty/util/ThreadDeathWatcher;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    nop

    .line 195
    .end local v0    # "stopped":Z
    :goto_2
    return-void

    .line 193
    :cond_1
    goto :goto_0

    .line 172
    .restart local v0    # "stopped":Z
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 166
    .end local v0    # "stopped":Z
    :cond_3
    goto :goto_0
.end method
