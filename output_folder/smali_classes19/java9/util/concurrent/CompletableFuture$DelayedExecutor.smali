.class final Ljava9/util/concurrent/CompletableFuture$DelayedExecutor;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DelayedExecutor"
.end annotation


# instance fields
.field final delay:J

.field final executor:Ljava/util/concurrent/Executor;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .line 2901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2902
    iput-wide p1, p0, Ljava9/util/concurrent/CompletableFuture$DelayedExecutor;->delay:J

    iput-object p3, p0, Ljava9/util/concurrent/CompletableFuture$DelayedExecutor;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, Ljava9/util/concurrent/CompletableFuture$DelayedExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 2903
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 2905
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$TaskSubmitter;

    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture$DelayedExecutor;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Ljava9/util/concurrent/CompletableFuture$TaskSubmitter;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    iget-wide v1, p0, Ljava9/util/concurrent/CompletableFuture$DelayedExecutor;->delay:J

    iget-object v3, p0, Ljava9/util/concurrent/CompletableFuture$DelayedExecutor;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Ljava9/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 2906
    return-void
.end method
