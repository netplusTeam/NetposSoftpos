.class abstract Ljava9/util/concurrent/CompletableFuture$BiCompletion;
.super Ljava9/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BiCompletion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/concurrent/CompletableFuture$UniCompletion<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field snd:Ljava9/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TV;>;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;)V"
        }
    .end annotation

    .line 1195
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$BiCompletion;, "Ljava9/util/concurrent/CompletableFuture$BiCompletion<TT;TU;TV;>;"
    .local p2, "dep":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    .local p3, "src":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "snd":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    iput-object p4, p0, Ljava9/util/concurrent/CompletableFuture$BiCompletion;->snd:Ljava9/util/concurrent/CompletableFuture;

    .line 1196
    return-void
.end method
