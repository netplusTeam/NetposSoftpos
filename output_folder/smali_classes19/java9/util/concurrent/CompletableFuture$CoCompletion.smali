.class final Ljava9/util/concurrent/CompletableFuture$CoCompletion;
.super Ljava9/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CoCompletion"
.end annotation


# instance fields
.field base:Ljava9/util/concurrent/CompletableFuture$BiCompletion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava9/util/concurrent/CompletableFuture$BiCompletion;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;)V"
        }
    .end annotation

    .line 1203
    .local p1, "base":Ljava9/util/concurrent/CompletableFuture$BiCompletion;, "Ljava9/util/concurrent/CompletableFuture$BiCompletion<***>;"
    invoke-direct {p0}, Ljava9/util/concurrent/CompletableFuture$Completion;-><init>()V

    iput-object p1, p0, Ljava9/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava9/util/concurrent/CompletableFuture$BiCompletion;

    return-void
.end method


# virtual methods
.method final isLive()Z
    .locals 2

    .line 1213
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava9/util/concurrent/CompletableFuture$BiCompletion;

    move-object v1, v0

    .local v1, "c":Ljava9/util/concurrent/CompletableFuture$BiCompletion;, "Ljava9/util/concurrent/CompletableFuture$BiCompletion<***>;"
    if-eqz v0, :cond_0

    iget-object v0, v1, Ljava9/util/concurrent/CompletableFuture$BiCompletion;->dep:Ljava9/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final tryFire(I)Ljava9/util/concurrent/CompletableFuture;
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation

    .line 1206
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava9/util/concurrent/CompletableFuture$BiCompletion;

    move-object v1, v0

    .local v1, "c":Ljava9/util/concurrent/CompletableFuture$BiCompletion;, "Ljava9/util/concurrent/CompletableFuture$BiCompletion<***>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Ljava9/util/concurrent/CompletableFuture$BiCompletion;->tryFire(I)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v3, v0

    .local v3, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    if-nez v0, :cond_0

    goto :goto_0

    .line 1208
    :cond_0
    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava9/util/concurrent/CompletableFuture$BiCompletion;

    .line 1209
    return-object v3

    .line 1207
    .end local v3    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    :cond_1
    :goto_0
    return-object v2
.end method
