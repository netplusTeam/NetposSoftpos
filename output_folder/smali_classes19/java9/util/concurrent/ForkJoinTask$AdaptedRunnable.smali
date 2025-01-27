.class final Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;
.super Ljava9/util/concurrent/ForkJoinTask;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AdaptedRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/concurrent/ForkJoinTask<",
        "TT;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x489d6925990d6e4eL


# instance fields
.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TT;)V"
        }
    .end annotation

    .line 1348
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;, "Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;-><init>()V

    .line 1349
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;->runnable:Ljava/lang/Runnable;

    .line 1350
    iput-object p2, p0, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;->result:Ljava/lang/Object;

    .line 1351
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    .line 1354
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;, "Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1352
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;, "Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final run()V
    .locals 0

    .line 1355
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;, "Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable<TT;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final setRawResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1353
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;, "Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;->result:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1357
    .local p0, "this":Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;, "Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[Wrapped task = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
