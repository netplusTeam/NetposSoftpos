.class Ljava9/util/concurrent/CompletableFuture$AnyOf;
.super Ljava9/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnyOf"
.end annotation


# instance fields
.field dep:Ljava9/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field src:Ljava9/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation
.end field

.field srcs:[Ljava9/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava9/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;[Ljava9/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "*>;[",
            "Ljava9/util/concurrent/CompletableFuture<",
            "*>;)V"
        }
    .end annotation

    .line 1709
    .local p1, "dep":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Object;>;"
    .local p2, "src":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    .local p3, "srcs":[Ljava9/util/concurrent/CompletableFuture;, "[Ljava9/util/concurrent/CompletableFuture<*>;"
    invoke-direct {p0}, Ljava9/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 1710
    iput-object p1, p0, Ljava9/util/concurrent/CompletableFuture$AnyOf;->dep:Ljava9/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava9/util/concurrent/CompletableFuture$AnyOf;->src:Ljava9/util/concurrent/CompletableFuture;

    iput-object p3, p0, Ljava9/util/concurrent/CompletableFuture$AnyOf;->srcs:[Ljava9/util/concurrent/CompletableFuture;

    .line 1711
    return-void
.end method


# virtual methods
.method final isLive()Z
    .locals 2

    .line 1734
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$AnyOf;->dep:Ljava9/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    iget-object v0, v1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final tryFire(I)Ljava9/util/concurrent/CompletableFuture;
    .locals 8
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1717
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$AnyOf;->src:Ljava9/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_5

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$AnyOf;->dep:Ljava9/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Object;>;"
    if-eqz v0, :cond_5

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$AnyOf;->srcs:[Ljava9/util/concurrent/CompletableFuture;

    move-object v5, v0

    .local v5, "as":[Ljava9/util/concurrent/CompletableFuture;, "[Ljava9/util/concurrent/CompletableFuture<*>;"
    if-nez v0, :cond_0

    goto :goto_1

    .line 1720
    :cond_0
    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$AnyOf;->src:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$AnyOf;->dep:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$AnyOf;->srcs:[Ljava9/util/concurrent/CompletableFuture;

    .line 1721
    invoke-virtual {v4, v3}, Ljava9/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1722
    array-length v0, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_2

    aget-object v7, v5, v6

    .line 1723
    .local v7, "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    if-eq v7, v1, :cond_1

    .line 1724
    invoke-virtual {v7}, Ljava9/util/concurrent/CompletableFuture;->cleanStack()V

    .line 1722
    .end local v7    # "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1725
    :cond_2
    if-gez p1, :cond_3

    .line 1726
    return-object v4

    .line 1728
    :cond_3
    invoke-virtual {v4}, Ljava9/util/concurrent/CompletableFuture;->postComplete()V

    .line 1730
    :cond_4
    return-object v2

    .line 1719
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Object;>;"
    .end local v5    # "as":[Ljava9/util/concurrent/CompletableFuture;, "[Ljava9/util/concurrent/CompletableFuture<*>;"
    :cond_5
    :goto_1
    return-object v2
.end method
