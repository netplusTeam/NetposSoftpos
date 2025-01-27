.class final Ljava9/util/concurrent/CompletableFuture$Timeout;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Timeout"
.end annotation


# instance fields
.field final f:Ljava9/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava9/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletableFuture<",
            "*>;)V"
        }
    .end annotation

    .line 2923
    .local p1, "f":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/concurrent/CompletableFuture$Timeout;->f:Ljava9/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2925
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$Timeout;->f:Ljava9/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava9/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2926
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$Timeout;->f:Ljava9/util/concurrent/CompletableFuture;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Ljava9/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 2927
    :cond_0
    return-void
.end method
