.class final Ljava9/util/concurrent/CompletableFuture$DelayedCompleter;
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
    name = "DelayedCompleter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final f:Ljava9/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation
.end field

.field final u:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava9/util/concurrent/CompletableFuture;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;TU;)V"
        }
    .end annotation

    .line 2934
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$DelayedCompleter;, "Ljava9/util/concurrent/CompletableFuture$DelayedCompleter<TU;>;"
    .local p1, "f":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    .local p2, "u":Ljava/lang/Object;, "TU;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/concurrent/CompletableFuture$DelayedCompleter;->f:Ljava9/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava9/util/concurrent/CompletableFuture$DelayedCompleter;->u:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2936
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$DelayedCompleter;, "Ljava9/util/concurrent/CompletableFuture$DelayedCompleter<TU;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$DelayedCompleter;->f:Ljava9/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    .line 2937
    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture$DelayedCompleter;->u:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava9/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 2938
    :cond_0
    return-void
.end method
