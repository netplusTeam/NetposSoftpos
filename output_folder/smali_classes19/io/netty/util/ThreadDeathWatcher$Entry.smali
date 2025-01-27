.class final Lio/netty/util/ThreadDeathWatcher$Entry;
.super Ljava/lang/Object;
.source "ThreadDeathWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/ThreadDeathWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field final isWatch:Z

.field final task:Ljava/lang/Runnable;

.field final thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Thread;Ljava/lang/Runnable;Z)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "task"    # Ljava/lang/Runnable;
    .param p3, "isWatch"    # Z

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lio/netty/util/ThreadDeathWatcher$Entry;->thread:Ljava/lang/Thread;

    .line 237
    iput-object p2, p0, Lio/netty/util/ThreadDeathWatcher$Entry;->task:Ljava/lang/Runnable;

    .line 238
    iput-boolean p3, p0, Lio/netty/util/ThreadDeathWatcher$Entry;->isWatch:Z

    .line 239
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 248
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 249
    return v0

    .line 252
    :cond_0
    instance-of v1, p1, Lio/netty/util/ThreadDeathWatcher$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 253
    return v2

    .line 256
    :cond_1
    move-object v1, p1

    check-cast v1, Lio/netty/util/ThreadDeathWatcher$Entry;

    .line 257
    .local v1, "that":Lio/netty/util/ThreadDeathWatcher$Entry;
    iget-object v3, p0, Lio/netty/util/ThreadDeathWatcher$Entry;->thread:Ljava/lang/Thread;

    iget-object v4, v1, Lio/netty/util/ThreadDeathWatcher$Entry;->thread:Ljava/lang/Thread;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lio/netty/util/ThreadDeathWatcher$Entry;->task:Ljava/lang/Runnable;

    iget-object v4, v1, Lio/netty/util/ThreadDeathWatcher$Entry;->task:Ljava/lang/Runnable;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 243
    iget-object v0, p0, Lio/netty/util/ThreadDeathWatcher$Entry;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lio/netty/util/ThreadDeathWatcher$Entry;->task:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
