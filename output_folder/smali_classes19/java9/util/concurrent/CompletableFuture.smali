.class public Ljava9/util/concurrent/CompletableFuture;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava9/util/concurrent/CompletionStage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/concurrent/CompletableFuture$MinimalStage;,
        Ljava9/util/concurrent/CompletableFuture$Canceller;,
        Ljava9/util/concurrent/CompletableFuture$DelayedCompleter;,
        Ljava9/util/concurrent/CompletableFuture$Timeout;,
        Ljava9/util/concurrent/CompletableFuture$TaskSubmitter;,
        Ljava9/util/concurrent/CompletableFuture$DelayedExecutor;,
        Ljava9/util/concurrent/CompletableFuture$Delayer;,
        Ljava9/util/concurrent/CompletableFuture$Signaller;,
        Ljava9/util/concurrent/CompletableFuture$AsyncRun;,
        Ljava9/util/concurrent/CompletableFuture$AsyncSupply;,
        Ljava9/util/concurrent/CompletableFuture$AnyOf;,
        Ljava9/util/concurrent/CompletableFuture$OrRun;,
        Ljava9/util/concurrent/CompletableFuture$OrAccept;,
        Ljava9/util/concurrent/CompletableFuture$OrApply;,
        Ljava9/util/concurrent/CompletableFuture$BiRelay;,
        Ljava9/util/concurrent/CompletableFuture$BiRun;,
        Ljava9/util/concurrent/CompletableFuture$BiAccept;,
        Ljava9/util/concurrent/CompletableFuture$BiApply;,
        Ljava9/util/concurrent/CompletableFuture$CoCompletion;,
        Ljava9/util/concurrent/CompletableFuture$BiCompletion;,
        Ljava9/util/concurrent/CompletableFuture$UniCompose;,
        Ljava9/util/concurrent/CompletableFuture$UniRelay;,
        Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally;,
        Ljava9/util/concurrent/CompletableFuture$UniExceptionally;,
        Ljava9/util/concurrent/CompletableFuture$UniHandle;,
        Ljava9/util/concurrent/CompletableFuture$UniWhenComplete;,
        Ljava9/util/concurrent/CompletableFuture$UniRun;,
        Ljava9/util/concurrent/CompletableFuture$UniAccept;,
        Ljava9/util/concurrent/CompletableFuture$UniApply;,
        Ljava9/util/concurrent/CompletableFuture$UniCompletion;,
        Ljava9/util/concurrent/CompletableFuture$Completion;,
        Ljava9/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;,
        Ljava9/util/concurrent/CompletableFuture$AsynchronousCompletionTask;,
        Ljava9/util/concurrent/CompletableFuture$AltResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;",
        "Ljava9/util/concurrent/CompletionStage<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final ASYNC:I = 0x1

.field private static final ASYNC_POOL:Ljava/util/concurrent/Executor;

.field static final NESTED:I = -0x1

.field private static final NEXT:J

.field static final NIL:Ljava9/util/concurrent/CompletableFuture$AltResult;

.field private static final RESULT:J

.field private static final STACK:J

.field static final SYNC:I

.field private static final U:Lsun/misc/Unsafe;

.field private static final USE_COMMON_POOL:Z


# instance fields
.field volatile result:Ljava/lang/Object;

.field volatile stack:Ljava9/util/concurrent/CompletableFuture$Completion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 277
    const-class v0, Ljava9/util/concurrent/CompletableFuture;

    new-instance v1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava9/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    sput-object v1, Ljava9/util/concurrent/CompletableFuture;->NIL:Ljava9/util/concurrent/CompletableFuture$AltResult;

    .line 421
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Ljava9/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    .line 427
    if-eqz v2, :cond_1

    .line 428
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->commonPool()Ljava9/util/concurrent/ForkJoinPool;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava9/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;

    invoke-direct {v1}, Ljava9/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;-><init>()V

    :goto_1
    sput-object v1, Ljava9/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    .line 3010
    sget-object v1, Ljava9/util/concurrent/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v1, Ljava9/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    .line 3016
    :try_start_0
    const-string v2, "result"

    .line 3017
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava9/util/concurrent/CompletableFuture;->RESULT:J

    .line 3018
    const-string v2, "stack"

    .line 3019
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava9/util/concurrent/CompletableFuture;->STACK:J

    .line 3020
    const-class v0, Ljava9/util/concurrent/CompletableFuture$Completion;

    const-string v2, "next"

    .line 3021
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava9/util/concurrent/CompletableFuture;->NEXT:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3024
    nop

    .line 3029
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 3030
    return-void

    .line 3022
    :catch_0
    move-exception v0

    .line 3023
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 1952
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1953
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Object;

    .line 1958
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1959
    iput-object p1, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 1960
    return-void
.end method

.method public static varargs allOf([Ljava9/util/concurrent/CompletableFuture;)Ljava9/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava9/util/concurrent/CompletableFuture<",
            "*>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2478
    .local p0, "cfs":[Ljava9/util/concurrent/CompletableFuture;, "[Ljava9/util/concurrent/CompletableFuture<*>;"
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava9/util/concurrent/CompletableFuture;->andTree([Ljava9/util/concurrent/CompletableFuture;II)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method static andTree([Ljava9/util/concurrent/CompletableFuture;II)Ljava9/util/concurrent/CompletableFuture;
    .locals 9
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava9/util/concurrent/CompletableFuture<",
            "*>;II)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1500
    .local p0, "cfs":[Ljava9/util/concurrent/CompletableFuture;, "[Ljava9/util/concurrent/CompletableFuture<*>;"
    new-instance v0, Ljava9/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava9/util/concurrent/CompletableFuture;-><init>()V

    .line 1501
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-le p1, p2, :cond_0

    .line 1502
    sget-object v1, Ljava9/util/concurrent/CompletableFuture;->NIL:Ljava9/util/concurrent/CompletableFuture$AltResult;

    iput-object v1, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto/16 :goto_3

    .line 1505
    :cond_0
    add-int v1, p1, p2

    ushr-int/lit8 v1, v1, 0x1

    .line 1506
    .local v1, "mid":I
    if-ne p1, v1, :cond_1

    aget-object v2, p0, p1

    goto :goto_0

    .line 1507
    :cond_1
    invoke-static {p0, p1, v1}, Ljava9/util/concurrent/CompletableFuture;->andTree([Ljava9/util/concurrent/CompletableFuture;II)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v2

    :goto_0
    move-object v3, v2

    .local v3, "a":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    if-eqz v2, :cond_9

    if-ne p1, p2, :cond_2

    move-object v2, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    if-ne p2, v2, :cond_3

    aget-object v2, p0, p2

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v1, 0x1

    .line 1509
    invoke-static {p0, v2, p2}, Ljava9/util/concurrent/CompletableFuture;->andTree([Ljava9/util/concurrent/CompletableFuture;II)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v2

    :goto_1
    move-object v4, v2

    .local v4, "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    if-eqz v2, :cond_9

    .line 1511
    iget-object v2, v3, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v5, v2

    .local v5, "r":Ljava/lang/Object;
    if-eqz v2, :cond_8

    iget-object v2, v4, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v6, v2

    .local v6, "s":Ljava/lang/Object;
    if-nez v2, :cond_4

    goto :goto_2

    .line 1513
    :cond_4
    instance-of v2, v5, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v2, :cond_5

    move-object v2, v5

    .local v2, "z":Ljava/lang/Object;
    move-object v7, v5

    check-cast v7, Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-object v8, v7

    check-cast v8, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v7, v7, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v8, v7

    .local v8, "x":Ljava/lang/Throwable;
    if-nez v7, :cond_6

    .end local v2    # "z":Ljava/lang/Object;
    .end local v8    # "x":Ljava/lang/Throwable;
    :cond_5
    instance-of v2, v6, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v2, :cond_7

    move-object v2, v6

    .restart local v2    # "z":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-object v8, v7

    check-cast v8, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v7, v7, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v8, v7

    .restart local v8    # "x":Ljava/lang/Throwable;
    if-eqz v7, :cond_7

    .line 1517
    :cond_6
    invoke-static {v8, v2}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_3

    .line 1519
    .end local v2    # "z":Ljava/lang/Object;
    .end local v8    # "x":Ljava/lang/Throwable;
    :cond_7
    sget-object v2, Ljava9/util/concurrent/CompletableFuture;->NIL:Ljava9/util/concurrent/CompletableFuture$AltResult;

    iput-object v2, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_3

    .line 1512
    .end local v6    # "s":Ljava/lang/Object;
    :cond_8
    :goto_2
    new-instance v2, Ljava9/util/concurrent/CompletableFuture$BiRelay;

    invoke-direct {v2, v0, v3, v4}, Ljava9/util/concurrent/CompletableFuture$BiRelay;-><init>(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v4, v2}, Ljava9/util/concurrent/CompletableFuture;->bipush(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1521
    .end local v1    # "mid":I
    .end local v3    # "a":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    .end local v4    # "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    .end local v5    # "r":Ljava/lang/Object;
    :goto_3
    return-object v0

    .line 1510
    .restart local v1    # "mid":I
    .restart local v3    # "a":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    :cond_9
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
.end method

.method public static varargs anyOf([Ljava9/util/concurrent/CompletableFuture;)Ljava9/util/concurrent/CompletableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava9/util/concurrent/CompletableFuture<",
            "*>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2498
    .local p0, "cfs":[Ljava9/util/concurrent/CompletableFuture;, "[Ljava9/util/concurrent/CompletableFuture<*>;"
    array-length v0, p0

    move v1, v0

    .local v1, "n":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_1

    .line 2499
    if-nez v1, :cond_0

    new-instance v0, Ljava9/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava9/util/concurrent/CompletableFuture;-><init>()V

    goto :goto_0

    :cond_0
    aget-object v0, p0, v2

    .line 2501
    invoke-static {v0}, Ljava9/util/concurrent/CompletableFuture;->uniCopyStage(Ljava9/util/concurrent/CompletableFuture;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2502
    :cond_1
    array-length v0, p0

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_3

    aget-object v5, p0, v4

    .line 2503
    .local v5, "cf":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    iget-object v6, v5, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v7, v6

    .local v7, "r":Ljava/lang/Object;
    if-eqz v6, :cond_2

    .line 2504
    new-instance v0, Ljava9/util/concurrent/CompletableFuture;

    invoke-static {v7}, Ljava9/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava9/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 2502
    .end local v5    # "cf":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    :cond_2
    nop

    .end local v7    # "r":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2505
    :cond_3
    invoke-virtual {p0}, [Ljava9/util/concurrent/CompletableFuture;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, [Ljava9/util/concurrent/CompletableFuture;

    .line 2506
    new-instance v0, Ljava9/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava9/util/concurrent/CompletableFuture;-><init>()V

    .line 2507
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Object;>;"
    array-length v4, p0

    :goto_2
    if-ge v2, v4, :cond_4

    aget-object v5, p0, v2

    .line 2508
    .restart local v5    # "cf":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    new-instance v6, Ljava9/util/concurrent/CompletableFuture$AnyOf;

    invoke-direct {v6, v0, v5, p0}, Ljava9/util/concurrent/CompletableFuture$AnyOf;-><init>(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;[Ljava9/util/concurrent/CompletableFuture;)V

    invoke-virtual {v5, v6}, Ljava9/util/concurrent/CompletableFuture;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V

    .line 2507
    .end local v5    # "cf":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2512
    :cond_4
    iget-object v2, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_7

    .line 2513
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v4, p0

    .local v4, "len":I
    :goto_3
    if-ge v2, v4, :cond_7

    .line 2514
    aget-object v5, p0, v2

    iget-object v5, v5, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 2515
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v4, :cond_6

    .line 2516
    aget-object v5, p0, v2

    iget-object v5, v5, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v5, :cond_5

    .line 2517
    aget-object v5, p0, v2

    invoke-virtual {v5}, Ljava9/util/concurrent/CompletableFuture;->cleanStack()V

    goto :goto_4

    .line 2513
    :cond_6
    add-int/2addr v2, v3

    goto :goto_3

    .line 2518
    .end local v2    # "i":I
    .end local v4    # "len":I
    :cond_7
    return-object v0
.end method

.method static asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;
    .locals 2
    .param p0, "e"    # Ljava/util/concurrent/Executor;
    .param p1, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1806
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    new-instance v0, Ljava9/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava9/util/concurrent/CompletableFuture;-><init>()V

    .line 1808
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v1, Ljava9/util/concurrent/CompletableFuture$AsyncRun;

    invoke-direct {v1, v0, p1}, Ljava9/util/concurrent/CompletableFuture$AsyncRun;-><init>(Ljava9/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1809
    return-object v0
.end method

.method static asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Supplier;)Ljava9/util/concurrent/CompletableFuture;
    .locals 2
    .param p0, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/function/Supplier<",
            "TU;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1770
    .local p1, "f":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<TU;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    new-instance v0, Ljava9/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava9/util/concurrent/CompletableFuture;-><init>()V

    .line 1772
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    new-instance v1, Ljava9/util/concurrent/CompletableFuture$AsyncSupply;

    invoke-direct {v1, v0, p1}, Ljava9/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Supplier;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1773
    return-object v0
.end method

.method private biAcceptStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;
    .locals 11
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava9/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1388
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<-TT;-TU;>;"
    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava9/util/concurrent/CompletionStage;->toCompletableFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v7, v0

    .local v7, "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v0, :cond_3

    .line 1390
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1391
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v8, v1

    .local v8, "r":Ljava/lang/Object;
    if-eqz v1, :cond_2

    iget-object v1, v7, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v9, v1

    .local v9, "s":Ljava/lang/Object;
    if-nez v1, :cond_0

    goto :goto_0

    .line 1393
    :cond_0
    if-nez p1, :cond_1

    .line 1394
    const/4 v1, 0x0

    invoke-virtual {v0, v8, v9, p3, v1}, Ljava9/util/concurrent/CompletableFuture;->biAccept(Ljava/lang/Object;Ljava/lang/Object;Ljava9/util/function/BiConsumer;Ljava9/util/concurrent/CompletableFuture$BiAccept;)Z

    goto :goto_1

    .line 1397
    :cond_1
    :try_start_0
    new-instance v10, Ljava9/util/concurrent/CompletableFuture$BiAccept;

    const/4 v2, 0x0

    move-object v1, v10

    move-object v3, v0

    move-object v4, p0

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava9/util/concurrent/CompletableFuture$BiAccept;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/BiConsumer;)V

    invoke-interface {p1, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    goto :goto_1

    .line 1398
    :catchall_0
    move-exception v1

    .line 1399
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-result-object v2

    iput-object v2, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_1

    .line 1392
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v9    # "s":Ljava/lang/Object;
    :cond_2
    :goto_0
    new-instance v9, Ljava9/util/concurrent/CompletableFuture$BiAccept;

    move-object v1, v9

    move-object v2, p1

    move-object v3, v0

    move-object v4, p0

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava9/util/concurrent/CompletableFuture$BiAccept;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/BiConsumer;)V

    invoke-virtual {p0, v7, v9}, Ljava9/util/concurrent/CompletableFuture;->bipush(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1401
    :goto_1
    return-object v0

    .line 1389
    .end local v0    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v7    # "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    .end local v8    # "r":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private biApplyStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;
    .locals 11
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava9/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1311
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava9/util/function/BiFunction;, "Ljava9/util/function/BiFunction<-TT;-TU;+TV;>;"
    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava9/util/concurrent/CompletionStage;->toCompletableFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v7, v0

    .local v7, "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v0, :cond_3

    .line 1313
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1314
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v8, v1

    .local v8, "r":Ljava/lang/Object;
    if-eqz v1, :cond_2

    iget-object v1, v7, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v9, v1

    .local v9, "s":Ljava/lang/Object;
    if-nez v1, :cond_0

    goto :goto_0

    .line 1316
    :cond_0
    if-nez p1, :cond_1

    .line 1317
    const/4 v1, 0x0

    invoke-virtual {v0, v8, v9, p3, v1}, Ljava9/util/concurrent/CompletableFuture;->biApply(Ljava/lang/Object;Ljava/lang/Object;Ljava9/util/function/BiFunction;Ljava9/util/concurrent/CompletableFuture$BiApply;)Z

    goto :goto_1

    .line 1320
    :cond_1
    :try_start_0
    new-instance v10, Ljava9/util/concurrent/CompletableFuture$BiApply;

    const/4 v2, 0x0

    move-object v1, v10

    move-object v3, v0

    move-object v4, p0

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava9/util/concurrent/CompletableFuture$BiApply;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/BiFunction;)V

    invoke-interface {p1, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    goto :goto_1

    .line 1321
    :catchall_0
    move-exception v1

    .line 1322
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-result-object v2

    iput-object v2, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_1

    .line 1315
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v9    # "s":Ljava/lang/Object;
    :cond_2
    :goto_0
    new-instance v9, Ljava9/util/concurrent/CompletableFuture$BiApply;

    move-object v1, v9

    move-object v2, p1

    move-object v3, v0

    move-object v4, p0

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava9/util/concurrent/CompletableFuture$BiApply;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/BiFunction;)V

    invoke-virtual {p0, v7, v9}, Ljava9/util/concurrent/CompletableFuture;->bipush(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1324
    :goto_1
    return-object v0

    .line 1312
    .end local v0    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    .end local v7    # "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    .end local v8    # "r":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private biRunStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;
    .locals 11
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1452
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<*>;"
    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava9/util/concurrent/CompletionStage;->toCompletableFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v7, v0

    .local v7, "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    if-eqz v0, :cond_3

    .line 1454
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1455
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v8, v1

    .local v8, "r":Ljava/lang/Object;
    if-eqz v1, :cond_2

    iget-object v1, v7, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v9, v1

    .local v9, "s":Ljava/lang/Object;
    if-nez v1, :cond_0

    goto :goto_0

    .line 1457
    :cond_0
    if-nez p1, :cond_1

    .line 1458
    const/4 v1, 0x0

    invoke-virtual {v0, v8, v9, p3, v1}, Ljava9/util/concurrent/CompletableFuture;->biRun(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava9/util/concurrent/CompletableFuture$BiRun;)Z

    goto :goto_1

    .line 1461
    :cond_1
    :try_start_0
    new-instance v10, Ljava9/util/concurrent/CompletableFuture$BiRun;

    const/4 v2, 0x0

    move-object v1, v10

    move-object v3, v0

    move-object v4, p0

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava9/util/concurrent/CompletableFuture$BiRun;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-interface {p1, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1464
    goto :goto_1

    .line 1462
    :catchall_0
    move-exception v1

    .line 1463
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-result-object v2

    iput-object v2, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_1

    .line 1456
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v9    # "s":Ljava/lang/Object;
    :cond_2
    :goto_0
    new-instance v9, Ljava9/util/concurrent/CompletableFuture$BiRun;

    move-object v1, v9

    move-object v2, p1

    move-object v3, v0

    move-object v4, p0

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava9/util/concurrent/CompletableFuture$BiRun;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v7, v9}, Ljava9/util/concurrent/CompletableFuture;->bipush(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1465
    :goto_1
    return-object v0

    .line 1453
    .end local v0    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v7    # "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    .end local v8    # "r":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static casNext(Ljava9/util/concurrent/CompletableFuture$Completion;Ljava9/util/concurrent/CompletableFuture$Completion;Ljava9/util/concurrent/CompletableFuture$Completion;)Z
    .locals 6
    .param p0, "c"    # Ljava9/util/concurrent/CompletableFuture$Completion;
    .param p1, "cmp"    # Ljava9/util/concurrent/CompletableFuture$Completion;
    .param p2, "val"    # Ljava9/util/concurrent/CompletableFuture$Completion;

    .line 479
    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/CompletableFuture;->NEXT:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static completedFuture(Ljava/lang/Object;)Ljava9/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2029
    .local p0, "value":Ljava/lang/Object;, "TU;"
    new-instance v0, Ljava9/util/concurrent/CompletableFuture;

    if-nez p0, :cond_0

    sget-object v1, Ljava9/util/concurrent/CompletableFuture;->NIL:Ljava9/util/concurrent/CompletableFuture$AltResult;

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-direct {v0, v1}, Ljava9/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static completedStage(Ljava/lang/Object;)Ljava9/util/concurrent/CompletionStage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation

    .line 2838
    .local p0, "value":Ljava/lang/Object;, "TU;"
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$MinimalStage;

    if-nez p0, :cond_0

    sget-object v1, Ljava9/util/concurrent/CompletableFuture;->NIL:Ljava9/util/concurrent/CompletableFuture$AltResult;

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-direct {v0, v1}, Ljava9/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static delayedExecutor(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Executor;
    .locals 3
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 2824
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$DelayedExecutor;

    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava9/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, p1, v1, v2}, Ljava9/util/concurrent/CompletableFuture$DelayedExecutor;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static delayedExecutor(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 2806
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 2808
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$DelayedExecutor;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture$DelayedExecutor;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    return-object v0

    .line 2807
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "r"    # Ljava/lang/Object;

    .line 354
    instance-of v0, p0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    instance-of v0, v1, Ljava9/util/concurrent/CompletionException;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    new-instance v2, Ljava9/util/concurrent/CompletionException;

    invoke-direct {v2, v1}, Ljava9/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v2}, Ljava9/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    .line 358
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_0
    return-object p0
.end method

.method static encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x"    # Ljava/lang/Throwable;
    .param p1, "r"    # Ljava/lang/Object;

    .line 319
    instance-of v0, p0, Ljava9/util/concurrent/CompletionException;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Ljava9/util/concurrent/CompletionException;

    invoke-direct {v0, p0}, Ljava9/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    .line 321
    :cond_0
    instance-of v0, p1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-ne p0, v0, :cond_1

    .line 322
    return-object p1

    .line 323
    :cond_1
    :goto_0
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v0, p0}, Ljava9/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static encodeThrowable(Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletableFuture$AltResult;
    .locals 2
    .param p0, "x"    # Ljava/lang/Throwable;

    .line 301
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    instance-of v1, p0, Ljava9/util/concurrent/CompletionException;

    if-eqz v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava9/util/concurrent/CompletionException;

    invoke-direct {v1, p0}, Ljava9/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    invoke-direct {v0, v1}, Ljava9/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static failedFuture(Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletableFuture;
    .locals 3
    .param p0, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2851
    new-instance v0, Ljava9/util/concurrent/CompletableFuture;

    new-instance v1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava9/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava9/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static failedStage(Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletionStage;
    .locals 3
    .param p0, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation

    .line 2865
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$MinimalStage;

    new-instance v1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava9/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava9/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static lazySetNext(Ljava9/util/concurrent/CompletableFuture$Completion;Ljava9/util/concurrent/CompletableFuture$Completion;)V
    .locals 3
    .param p0, "c"    # Ljava9/util/concurrent/CompletableFuture$Completion;
    .param p1, "next"    # Ljava9/util/concurrent/CompletableFuture$Completion;

    .line 475
    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/concurrent/CompletableFuture;->NEXT:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 476
    return-void
.end method

.method private orAcceptStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;
    .locals 11
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1639
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava9/util/concurrent/CompletionStage;->toCompletableFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v7, v0

    .local v7, "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v0, :cond_2

    .line 1643
    move-object v0, p0

    .local v0, "z":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<+TT;>;"
    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_1

    move-object v0, v7

    iget-object v1, v7, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v8, v1

    .end local v2    # "r":Ljava/lang/Object;
    .local v8, "r":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v2, v8

    goto :goto_0

    .line 1647
    :cond_0
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v9

    .line 1648
    .local v9, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v10, Ljava9/util/concurrent/CompletableFuture$OrAccept;

    move-object v1, v10

    move-object v2, p1

    move-object v3, v9

    move-object v4, p0

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava9/util/concurrent/CompletableFuture$OrAccept;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Consumer;)V

    invoke-virtual {p0, v7, v10}, Ljava9/util/concurrent/CompletableFuture;->orpush(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1649
    return-object v9

    .line 1645
    .end local v8    # "r":Ljava/lang/Object;
    .end local v9    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .restart local v2    # "r":Ljava/lang/Object;
    :cond_1
    :goto_0
    invoke-direct {v0, v2, p1, p3}, Ljava9/util/concurrent/CompletableFuture;->uniAcceptNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1

    .line 1640
    .end local v0    # "z":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<+TT;>;"
    .end local v2    # "r":Ljava/lang/Object;
    .end local v7    # "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private orApplyStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;
    .locals 11
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava9/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1585
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TV;>;"
    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava9/util/concurrent/CompletionStage;->toCompletableFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v7, v0

    .local v7, "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v0, :cond_2

    .line 1589
    move-object v0, p0

    .local v0, "z":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<+TT;>;"
    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_1

    move-object v0, v7

    iget-object v1, v7, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v8, v1

    .end local v2    # "r":Ljava/lang/Object;
    .local v8, "r":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v2, v8

    goto :goto_0

    .line 1593
    :cond_0
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v9

    .line 1594
    .local v9, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    new-instance v10, Ljava9/util/concurrent/CompletableFuture$OrApply;

    move-object v1, v10

    move-object v2, p1

    move-object v3, v9

    move-object v4, p0

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava9/util/concurrent/CompletableFuture$OrApply;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Function;)V

    invoke-virtual {p0, v7, v10}, Ljava9/util/concurrent/CompletableFuture;->orpush(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1595
    return-object v9

    .line 1591
    .end local v8    # "r":Ljava/lang/Object;
    .end local v9    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    .restart local v2    # "r":Ljava/lang/Object;
    :cond_1
    :goto_0
    invoke-direct {v0, v2, p1, p3}, Ljava9/util/concurrent/CompletableFuture;->uniApplyNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1

    .line 1586
    .end local v0    # "z":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<+TT;>;"
    .end local v2    # "r":Ljava/lang/Object;
    .end local v7    # "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private orRunStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;
    .locals 11
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1690
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<*>;"
    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava9/util/concurrent/CompletionStage;->toCompletableFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v7, v0

    .local v7, "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    if-eqz v0, :cond_2

    .line 1695
    move-object v0, p0

    .local v0, "z":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_1

    move-object v0, v7

    iget-object v1, v7, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v8, v1

    .end local v2    # "r":Ljava/lang/Object;
    .local v8, "r":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v2, v8

    goto :goto_0

    .line 1698
    :cond_0
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v9

    .line 1699
    .local v9, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v10, Ljava9/util/concurrent/CompletableFuture$OrRun;

    move-object v1, v10

    move-object v2, p1

    move-object v3, v9

    move-object v4, p0

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava9/util/concurrent/CompletableFuture$OrRun;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v7, v10}, Ljava9/util/concurrent/CompletableFuture;->orpush(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1700
    return-object v9

    .line 1696
    .end local v8    # "r":Ljava/lang/Object;
    .end local v9    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .restart local v2    # "r":Ljava/lang/Object;
    :cond_1
    :goto_0
    invoke-direct {v0, v2, p1, p3}, Ljava9/util/concurrent/CompletableFuture;->uniRunNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1

    .line 1691
    .end local v0    # "z":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    .end local v2    # "r":Ljava/lang/Object;
    .end local v7    # "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static reportGet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "r"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 375
    if-eqz p0, :cond_4

    .line 377
    instance-of v0, p0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_3

    .line 379
    move-object v0, p0

    check-cast v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x0

    return-object v0

    .line 381
    :cond_0
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_2

    .line 383
    instance-of v0, v1, Ljava9/util/concurrent/CompletionException;

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v2, v0

    .local v2, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 385
    move-object v1, v2

    .line 386
    .end local v2    # "cause":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 382
    :cond_2
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    throw v0

    .line 388
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_3
    return-object p0

    .line 376
    :cond_4
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private static reportJoin(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "r"    # Ljava/lang/Object;

    .line 395
    instance-of v0, p0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_3

    .line 397
    move-object v0, p0

    check-cast v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 398
    const/4 v0, 0x0

    return-object v0

    .line 399
    :cond_0
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_2

    .line 401
    instance-of v0, v1, Ljava9/util/concurrent/CompletionException;

    if-eqz v0, :cond_1

    .line 402
    move-object v0, v1

    check-cast v0, Ljava9/util/concurrent/CompletionException;

    throw v0

    .line 403
    :cond_1
    new-instance v0, Ljava9/util/concurrent/CompletionException;

    invoke-direct {v0, v1}, Ljava9/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 400
    :cond_2
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    throw v0

    .line 405
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_3
    return-object p0
.end method

.method public static runAsync(Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2002
    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Ljava9/util/concurrent/CompletableFuture;->asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2017
    invoke-static {p1}, Ljava9/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0, p0}, Ljava9/util/concurrent/CompletableFuture;->asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method static screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "e"    # Ljava/util/concurrent/Executor;

    .line 440
    sget-boolean v0, Ljava9/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->commonPool()Ljava9/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 441
    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    return-object v0

    .line 442
    :cond_0
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static supplyAsync(Ljava9/util/function/Supplier;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Supplier<",
            "TU;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1973
    .local p0, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<TU;>;"
    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Ljava9/util/concurrent/CompletableFuture;->asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Supplier;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static supplyAsync(Ljava9/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Supplier<",
            "TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1989
    .local p0, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<TU;>;"
    invoke-static {p1}, Ljava9/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0, p0}, Ljava9/util/concurrent/CompletableFuture;->asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Supplier;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private timedGet(J)Ljava/lang/Object;
    .locals 16
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1906
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 1907
    return-object v8

    .line 1908
    :cond_0
    const-wide/16 v9, 0x0

    cmp-long v0, p1, v9

    if-lez v0, :cond_b

    .line 1909
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long v11, v2, p1

    .line 1910
    .local v11, "d":J
    cmp-long v0, v11, v9

    if-nez v0, :cond_1

    const-wide/16 v2, 0x1

    move-wide v6, v2

    goto :goto_0

    :cond_1
    move-wide v6, v11

    .line 1911
    .local v6, "deadline":J
    :goto_0
    const/4 v0, 0x0

    .line 1912
    .local v0, "q":Ljava9/util/concurrent/CompletableFuture$Signaller;
    const/4 v2, 0x0

    move-object v13, v0

    move v14, v2

    .line 1914
    .end local v0    # "q":Ljava9/util/concurrent/CompletableFuture$Signaller;
    .local v13, "q":Ljava9/util/concurrent/CompletableFuture$Signaller;
    .local v14, "queued":Z
    :cond_2
    :goto_1
    iget-object v0, v1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v15, v0

    .local v15, "r":Ljava/lang/Object;
    if-nez v0, :cond_6

    .line 1915
    if-nez v13, :cond_3

    .line 1916
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$Signaller;

    const/4 v3, 0x1

    move-object v2, v0

    move-wide/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Ljava9/util/concurrent/CompletableFuture$Signaller;-><init>(ZJJ)V

    move-object v13, v0

    .line 1917
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_2

    .line 1918
    invoke-virtual/range {p0 .. p0}, Ljava9/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0, v13}, Ljava9/util/concurrent/ForkJoinPool;->helpAsyncBlocker(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;)V

    goto :goto_1

    .line 1920
    :cond_3
    if-nez v14, :cond_4

    .line 1921
    invoke-virtual {v1, v13}, Ljava9/util/concurrent/CompletableFuture;->tryPushStack(Ljava9/util/concurrent/CompletableFuture$Completion;)Z

    move-result v14

    goto :goto_1

    .line 1922
    :cond_4
    iget-wide v2, v13, Ljava9/util/concurrent/CompletableFuture$Signaller;->nanos:J

    cmp-long v0, v2, v9

    if-gtz v0, :cond_5

    .line 1923
    goto :goto_3

    .line 1926
    :cond_5
    :try_start_0
    invoke-static {v13}, Ljava9/util/concurrent/ForkJoinPool;->managedBlock(Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1929
    goto :goto_2

    .line 1927
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1928
    .local v0, "ie":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    iput-boolean v2, v13, Ljava9/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    .line 1930
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :goto_2
    iget-boolean v0, v13, Ljava9/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v0, :cond_2

    .line 1934
    :cond_6
    :goto_3
    if-eqz v13, :cond_7

    if-eqz v14, :cond_7

    .line 1935
    iput-object v8, v13, Ljava9/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1936
    if-nez v15, :cond_7

    .line 1937
    invoke-virtual/range {p0 .. p0}, Ljava9/util/concurrent/CompletableFuture;->cleanStack()V

    .line 1939
    :cond_7
    if-nez v15, :cond_8

    iget-object v0, v1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v15, v0

    if-eqz v0, :cond_9

    .line 1940
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava9/util/concurrent/CompletableFuture;->postComplete()V

    .line 1941
    :cond_9
    if-nez v15, :cond_a

    if-eqz v13, :cond_b

    iget-boolean v0, v13, Ljava9/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v0, :cond_b

    .line 1942
    :cond_a
    return-object v15

    .line 1944
    .end local v6    # "deadline":J
    .end local v11    # "d":J
    .end local v13    # "q":Ljava9/util/concurrent/CompletableFuture$Signaller;
    .end local v14    # "queued":Z
    .end local v15    # "r":Ljava/lang/Object;
    :cond_b
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
.end method

.method private uniAcceptNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 728
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p3, "f":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 729
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    instance-of v1, p1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_1

    .line 730
    move-object v1, p1

    check-cast v1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v2, v1

    .local v2, "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 731
    invoke-static {v2, p1}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 732
    return-object v0

    .line 734
    :cond_0
    const/4 p1, 0x0

    .line 737
    .end local v2    # "x":Ljava/lang/Throwable;
    :cond_1
    if-eqz p2, :cond_2

    .line 738
    :try_start_0
    new-instance v1, Ljava9/util/concurrent/CompletableFuture$UniAccept;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p0, p3}, Ljava9/util/concurrent/CompletableFuture$UniAccept;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Consumer;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 740
    :cond_2
    move-object v1, p1

    .line 741
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p3, v1}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 742
    sget-object v2, Ljava9/util/concurrent/CompletableFuture;->NIL:Ljava9/util/concurrent/CompletableFuture$AltResult;

    iput-object v2, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :goto_0
    goto :goto_1

    .line 744
    :catchall_0
    move-exception v1

    .line 745
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-result-object v2

    iput-object v2, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 747
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method

.method private uniAcceptStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 716
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 719
    invoke-direct {p0, v1, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->uniAcceptNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 720
    :cond_0
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 721
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v2, Ljava9/util/concurrent/CompletableFuture$UniAccept;

    invoke-direct {v2, p1, v0, p0, p2}, Ljava9/util/concurrent/CompletableFuture$UniAccept;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Consumer;)V

    invoke-virtual {p0, v2}, Ljava9/util/concurrent/CompletableFuture;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V

    .line 722
    return-object v0
.end method

.method private uniApplyNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 655
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p3, "f":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TV;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 656
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    instance-of v1, p1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_1

    .line 657
    move-object v1, p1

    check-cast v1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v2, v1

    .local v2, "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 658
    invoke-static {v2, p1}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 659
    return-object v0

    .line 661
    :cond_0
    const/4 p1, 0x0

    .line 664
    .end local v2    # "x":Ljava/lang/Throwable;
    :cond_1
    if-eqz p2, :cond_2

    .line 665
    :try_start_0
    new-instance v1, Ljava9/util/concurrent/CompletableFuture$UniApply;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p0, p3}, Ljava9/util/concurrent/CompletableFuture$UniApply;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Function;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 667
    :cond_2
    move-object v1, p1

    .line 668
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p3, v1}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava9/util/concurrent/CompletableFuture;->encodeValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :goto_0
    goto :goto_1

    .line 670
    :catchall_0
    move-exception v1

    .line 671
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-result-object v2

    iput-object v2, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 673
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method

.method private uniApplyStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 643
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TV;>;"
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 646
    invoke-direct {p0, v1, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->uniApplyNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 647
    :cond_0
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 648
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    new-instance v2, Ljava9/util/concurrent/CompletableFuture$UniApply;

    invoke-direct {v2, p1, v0, p0, p2}, Ljava9/util/concurrent/CompletableFuture$UniApply;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Function;)V

    invoke-virtual {p0, v2}, Ljava9/util/concurrent/CompletableFuture;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V

    .line 649
    return-object v0
.end method

.method private uniAsMinimalStage()Ljava9/util/concurrent/CompletableFuture$MinimalStage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/CompletableFuture$MinimalStage<",
            "TT;>;"
        }
    .end annotation

    .line 1103
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1104
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$MinimalStage;

    invoke-static {v1}, Ljava9/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava9/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 1105
    :cond_0
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$MinimalStage;

    invoke-direct {v0}, Ljava9/util/concurrent/CompletableFuture$MinimalStage;-><init>()V

    .line 1106
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v2, Ljava9/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v2, v0, p0}, Ljava9/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v2}, Ljava9/util/concurrent/CompletableFuture;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V

    .line 1107
    return-object v0
.end method

.method private uniComposeExceptionallyStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;
    .locals 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1049
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/lang/Throwable;+Ljava9/util/concurrent/CompletionStage<TT;>;>;"
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1052
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1053
    new-instance v1, Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Function;)V

    invoke-virtual {p0, v1}, Ljava9/util/concurrent/CompletableFuture;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_2

    .line 1054
    :cond_0
    instance-of v1, v2, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_4

    move-object v1, v2

    check-cast v1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v3, v1

    .local v3, "x":Ljava/lang/Throwable;
    if-nez v1, :cond_1

    goto :goto_1

    .line 1058
    :cond_1
    if-eqz p1, :cond_2

    .line 1059
    :try_start_0
    new-instance v1, Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v0, p0, p2}, Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Function;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1061
    :cond_2
    invoke-interface {p2, v3}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/concurrent/CompletionStage;

    invoke-interface {v1}, Ljava9/util/concurrent/CompletionStage;->toCompletableFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 1062
    .local v1, "g":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    iget-object v4, v1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "s":Ljava/lang/Object;
    if-eqz v4, :cond_3

    .line 1063
    invoke-static {v5}, Ljava9/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_0

    .line 1065
    :cond_3
    new-instance v4, Ljava9/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v4, v0, v1}, Ljava9/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, v4}, Ljava9/util/concurrent/CompletableFuture;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    .end local v1    # "g":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .end local v5    # "s":Ljava/lang/Object;
    :goto_0
    goto :goto_2

    .line 1067
    :catchall_0
    move-exception v1

    .line 1068
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-result-object v4

    iput-object v4, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_2

    .line 1055
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    invoke-virtual {v0, v2}, Ljava9/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    .line 1070
    :goto_2
    return-object v0
.end method

.method private uniComposeStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;
    .locals 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/function/Function<",
            "-TT;+",
            "Ljava9/util/concurrent/CompletionStage<",
            "TV;>;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1156
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+Ljava9/util/concurrent/CompletionStage<TV;>;>;"
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1159
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1160
    new-instance v1, Ljava9/util/concurrent/CompletableFuture$UniCompose;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava9/util/concurrent/CompletableFuture$UniCompose;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Function;)V

    invoke-virtual {p0, v1}, Ljava9/util/concurrent/CompletableFuture;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_1

    .line 1162
    :cond_0
    instance-of v1, v2, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_2

    .line 1163
    move-object v1, v2

    check-cast v1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v3, v1

    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 1164
    invoke-static {v3, v2}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 1165
    return-object v0

    .line 1167
    :cond_1
    const/4 v2, 0x0

    .line 1170
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_2
    if-eqz p1, :cond_3

    .line 1171
    :try_start_0
    new-instance v1, Ljava9/util/concurrent/CompletableFuture$UniCompose;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0, p0, p2}, Ljava9/util/concurrent/CompletableFuture$UniCompose;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Function;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1173
    :cond_3
    move-object v1, v2

    .line 1174
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v1}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava9/util/concurrent/CompletionStage;

    invoke-interface {v3}, Ljava9/util/concurrent/CompletionStage;->toCompletableFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v3

    .line 1175
    .local v3, "g":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    iget-object v4, v3, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "s":Ljava/lang/Object;
    if-eqz v4, :cond_4

    .line 1176
    invoke-static {v5}, Ljava9/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_0

    .line 1178
    :cond_4
    new-instance v4, Ljava9/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v4, v0, v3}, Ljava9/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v4}, Ljava9/util/concurrent/CompletableFuture;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    .end local v3    # "g":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    .end local v5    # "s":Ljava/lang/Object;
    :goto_0
    goto :goto_1

    .line 1180
    :catchall_0
    move-exception v1

    .line 1181
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-result-object v3

    iput-object v3, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 1184
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method

.method private static uniCopyStage(Ljava9/util/concurrent/CompletableFuture;)Ljava9/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "T:TU;>(",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1093
    .local p0, "src":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1094
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1095
    invoke-static {v2}, Ljava9/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_0

    .line 1097
    :cond_0
    new-instance v1, Ljava9/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v1, v0, p0}, Ljava9/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v1}, Ljava9/util/concurrent/CompletableFuture;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V

    .line 1098
    :goto_0
    return-object v0
.end method

.method private uniExceptionallyStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;
    .locals 4
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 989
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 992
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 993
    new-instance v1, Ljava9/util/concurrent/CompletableFuture$UniExceptionally;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava9/util/concurrent/CompletableFuture$UniExceptionally;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Function;)V

    invoke-virtual {p0, v1}, Ljava9/util/concurrent/CompletableFuture;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    .line 994
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 995
    invoke-virtual {v0, v2, p2, v1}, Ljava9/util/concurrent/CompletableFuture;->uniExceptionally(Ljava/lang/Object;Ljava9/util/function/Function;Ljava9/util/concurrent/CompletableFuture$UniExceptionally;)Z

    goto :goto_0

    .line 998
    :cond_1
    :try_start_0
    new-instance v3, Ljava9/util/concurrent/CompletableFuture$UniExceptionally;

    invoke-direct {v3, v1, v0, p0, p2}, Ljava9/util/concurrent/CompletableFuture$UniExceptionally;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Function;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    goto :goto_0

    .line 999
    :catchall_0
    move-exception v1

    .line 1000
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-result-object v3

    iput-object v3, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 1003
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method private uniHandleStage(Ljava/util/concurrent/Executor;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;
    .locals 4
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TV;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 931
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava9/util/function/BiFunction;, "Ljava9/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TV;>;"
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 934
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 935
    new-instance v1, Ljava9/util/concurrent/CompletableFuture$UniHandle;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava9/util/concurrent/CompletableFuture$UniHandle;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/BiFunction;)V

    invoke-virtual {p0, v1}, Ljava9/util/concurrent/CompletableFuture;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    .line 936
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 937
    invoke-virtual {v0, v2, p2, v1}, Ljava9/util/concurrent/CompletableFuture;->uniHandle(Ljava/lang/Object;Ljava9/util/function/BiFunction;Ljava9/util/concurrent/CompletableFuture$UniHandle;)Z

    goto :goto_0

    .line 940
    :cond_1
    :try_start_0
    new-instance v3, Ljava9/util/concurrent/CompletableFuture$UniHandle;

    invoke-direct {v3, v1, v0, p0, p2}, Ljava9/util/concurrent/CompletableFuture$UniHandle;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/BiFunction;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    goto :goto_0

    .line 941
    :catchall_0
    move-exception v1

    .line 942
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-result-object v3

    iput-object v3, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 945
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method private uniRunNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/util/concurrent/Executor;
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 795
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 796
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    instance-of v1, p1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v2, v1

    .local v2, "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 797
    invoke-static {v2, p1}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_1

    .line 800
    .end local v2    # "x":Ljava/lang/Throwable;
    :cond_0
    if-eqz p2, :cond_1

    .line 801
    :try_start_0
    new-instance v1, Ljava9/util/concurrent/CompletableFuture$UniRun;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p0, p3}, Ljava9/util/concurrent/CompletableFuture$UniRun;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 803
    :cond_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 804
    sget-object v1, Ljava9/util/concurrent/CompletableFuture;->NIL:Ljava9/util/concurrent/CompletableFuture$AltResult;

    iput-object v1, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    :goto_0
    goto :goto_1

    .line 806
    :catchall_0
    move-exception v1

    .line 807
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-result-object v2

    iput-object v2, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 809
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method

.method private uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;
    .locals 3
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .param p2, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 784
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 787
    invoke-direct {p0, v1, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->uniRunNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 788
    :cond_0
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 789
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v2, Ljava9/util/concurrent/CompletableFuture$UniRun;

    invoke-direct {v2, p1, v0, p0, p2}, Ljava9/util/concurrent/CompletableFuture$UniRun;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Ljava9/util/concurrent/CompletableFuture;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V

    .line 790
    return-object v0
.end method

.method private uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;
    .locals 4
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 867
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 870
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 871
    new-instance v1, Ljava9/util/concurrent/CompletableFuture$UniWhenComplete;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava9/util/concurrent/CompletableFuture$UniWhenComplete;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/BiConsumer;)V

    invoke-virtual {p0, v1}, Ljava9/util/concurrent/CompletableFuture;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    .line 872
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 873
    invoke-virtual {v0, v2, p2, v1}, Ljava9/util/concurrent/CompletableFuture;->uniWhenComplete(Ljava/lang/Object;Ljava9/util/function/BiConsumer;Ljava9/util/concurrent/CompletableFuture$UniWhenComplete;)Z

    goto :goto_0

    .line 876
    :cond_1
    :try_start_0
    new-instance v3, Ljava9/util/concurrent/CompletableFuture$UniWhenComplete;

    invoke-direct {v3, v1, v0, p0, p2}, Ljava9/util/concurrent/CompletableFuture$UniWhenComplete;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/BiConsumer;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    goto :goto_0

    .line 877
    :catchall_0
    move-exception v1

    .line 878
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-result-object v3

    iput-object v3, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 881
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method private waitingGet(Z)Ljava/lang/Object;
    .locals 10
    .param p1, "interruptible"    # Z

    .line 1868
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    .line 1869
    .local v0, "q":Ljava9/util/concurrent/CompletableFuture$Signaller;
    const/4 v1, 0x0

    .line 1871
    .local v1, "queued":Z
    :cond_0
    :goto_0
    iget-object v2, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "r":Ljava/lang/Object;
    if-nez v2, :cond_3

    .line 1872
    if-nez v0, :cond_1

    .line 1873
    new-instance v2, Ljava9/util/concurrent/CompletableFuture$Signaller;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v4, v2

    move v5, p1

    invoke-direct/range {v4 .. v9}, Ljava9/util/concurrent/CompletableFuture$Signaller;-><init>(ZJJ)V

    move-object v0, v2

    .line 1874
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    instance-of v2, v2, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    .line 1875
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v2, v0}, Ljava9/util/concurrent/ForkJoinPool;->helpAsyncBlocker(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;)V

    goto :goto_0

    .line 1877
    :cond_1
    if-nez v1, :cond_2

    .line 1878
    invoke-virtual {p0, v0}, Ljava9/util/concurrent/CompletableFuture;->tryPushStack(Ljava9/util/concurrent/CompletableFuture$Completion;)Z

    move-result v1

    goto :goto_0

    .line 1881
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava9/util/concurrent/ForkJoinPool;->managedBlock(Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1884
    goto :goto_1

    .line 1882
    :catch_0
    move-exception v2

    .line 1883
    .local v2, "ie":Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    iput-boolean v4, v0, Ljava9/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    .line 1885
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :goto_1
    iget-boolean v2, v0, Ljava9/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1889
    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 1890
    const/4 v2, 0x0

    iput-object v2, v0, Ljava9/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1891
    if-nez p1, :cond_4

    iget-boolean v2, v0, Ljava9/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v2, :cond_4

    .line 1892
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1893
    :cond_4
    if-nez v3, :cond_5

    .line 1894
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->cleanStack()V

    .line 1896
    :cond_5
    if-nez v3, :cond_6

    iget-object v2, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v2

    if-eqz v2, :cond_7

    .line 1897
    :cond_6
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->postComplete()V

    .line 1898
    :cond_7
    return-object v3
.end method


# virtual methods
.method public acceptEither(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2260
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic acceptEither(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->acceptEither(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public acceptEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2265
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public acceptEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava9/util/function/Consumer<",
            "-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2271
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-static {p3}, Ljava9/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic acceptEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic acceptEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public applyToEither(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava9/util/function/Function<",
            "-TT;TU;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2244
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic applyToEither(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->applyToEither(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public applyToEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava9/util/function/Function<",
            "-TT;TU;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2249
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;TU;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public applyToEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava9/util/function/Function<",
            "-TT;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2255
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;TU;>;"
    invoke-static {p3}, Ljava9/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic applyToEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyToEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method final biAccept(Ljava/lang/Object;Ljava/lang/Object;Ljava9/util/function/BiConsumer;Ljava9/util/concurrent/CompletableFuture$BiAccept;)Z
    .locals 2
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "s"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava9/util/function/BiConsumer<",
            "-TR;-TS;>;",
            "Ljava9/util/concurrent/CompletableFuture$BiAccept<",
            "TR;TS;>;)Z"
        }
    .end annotation

    .line 1353
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p3, "f":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<-TR;-TS;>;"
    .local p4, "c":Ljava9/util/concurrent/CompletableFuture$BiAccept;, "Ljava9/util/concurrent/CompletableFuture$BiAccept<TR;TS;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 1354
    instance-of v0, p1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_1

    .line 1355
    move-object v0, p1

    check-cast v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 1356
    invoke-virtual {p0, v1, p1}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1357
    goto :goto_0

    .line 1359
    :cond_0
    const/4 p1, 0x0

    .line 1361
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_1
    instance-of v0, p2, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_3

    .line 1362
    move-object v0, p2

    check-cast v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .restart local v1    # "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 1363
    invoke-virtual {p0, v1, p2}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1364
    goto :goto_0

    .line 1366
    :cond_2
    const/4 p2, 0x0

    .line 1369
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_3
    if-eqz p4, :cond_4

    :try_start_0
    invoke-virtual {p4}, Ljava9/util/concurrent/CompletableFuture$BiAccept;->claim()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1370
    const/4 v0, 0x0

    return v0

    .line 1372
    :cond_4
    move-object v0, p1

    .line 1374
    .local v0, "rr":Ljava/lang/Object;, "TR;"
    move-object v1, p2

    .line 1375
    .local v1, "ss":Ljava/lang/Object;, "TS;"
    invoke-interface {p3, v0, v1}, Ljava9/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1376
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    nop

    .end local v0    # "rr":Ljava/lang/Object;, "TR;"
    .end local v1    # "ss":Ljava/lang/Object;, "TS;"
    goto :goto_0

    .line 1377
    :catchall_0
    move-exception v0

    .line 1378
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1381
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_5
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method final biApply(Ljava/lang/Object;Ljava/lang/Object;Ljava9/util/function/BiFunction;Ljava9/util/concurrent/CompletableFuture$BiApply;)Z
    .locals 3
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "s"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava9/util/function/BiFunction<",
            "-TR;-TS;+TT;>;",
            "Ljava9/util/concurrent/CompletableFuture$BiApply<",
            "TR;TS;TT;>;)Z"
        }
    .end annotation

    .line 1277
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p3, "f":Ljava9/util/function/BiFunction;, "Ljava9/util/function/BiFunction<-TR;-TS;+TT;>;"
    .local p4, "c":Ljava9/util/concurrent/CompletableFuture$BiApply;, "Ljava9/util/concurrent/CompletableFuture$BiApply<TR;TS;TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 1278
    instance-of v0, p1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_1

    .line 1279
    move-object v0, p1

    check-cast v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 1280
    invoke-virtual {p0, v1, p1}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1281
    goto :goto_0

    .line 1283
    :cond_0
    const/4 p1, 0x0

    .line 1285
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_1
    instance-of v0, p2, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_3

    .line 1286
    move-object v0, p2

    check-cast v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .restart local v1    # "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 1287
    invoke-virtual {p0, v1, p2}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1288
    goto :goto_0

    .line 1290
    :cond_2
    const/4 p2, 0x0

    .line 1293
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_3
    if-eqz p4, :cond_4

    :try_start_0
    invoke-virtual {p4}, Ljava9/util/concurrent/CompletableFuture$BiApply;->claim()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1294
    const/4 v0, 0x0

    return v0

    .line 1296
    :cond_4
    move-object v0, p1

    .line 1298
    .local v0, "rr":Ljava/lang/Object;, "TR;"
    move-object v1, p2

    .line 1299
    .local v1, "ss":Ljava/lang/Object;, "TS;"
    invoke-interface {p3, v0, v1}, Ljava9/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava9/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    nop

    .end local v0    # "rr":Ljava/lang/Object;, "TR;"
    .end local v1    # "ss":Ljava/lang/Object;, "TS;"
    goto :goto_0

    .line 1300
    :catchall_0
    move-exception v0

    .line 1301
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1304
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_5
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method final biRun(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava9/util/concurrent/CompletableFuture$BiRun;)Z
    .locals 3
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "s"    # Ljava/lang/Object;
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            "Ljava9/util/concurrent/CompletableFuture$BiRun<",
            "**>;)Z"
        }
    .end annotation

    .line 1429
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "c":Ljava9/util/concurrent/CompletableFuture$BiRun;, "Ljava9/util/concurrent/CompletableFuture$BiRun<**>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 1430
    instance-of v0, p1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_0

    move-object v0, p1

    .local v0, "z":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-object v2, v1

    check-cast v2, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v2, v1

    .local v2, "x":Ljava/lang/Throwable;
    if-nez v1, :cond_1

    .end local v0    # "z":Ljava/lang/Object;
    .end local v2    # "x":Ljava/lang/Throwable;
    :cond_0
    instance-of v0, p2, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_2

    move-object v0, p2

    .restart local v0    # "z":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-object v2, v1

    check-cast v2, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v2, v1

    .restart local v2    # "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 1434
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1437
    .end local v0    # "z":Ljava/lang/Object;
    .end local v2    # "x":Ljava/lang/Throwable;
    :cond_2
    if-eqz p4, :cond_3

    :try_start_0
    invoke-virtual {p4}, Ljava9/util/concurrent/CompletableFuture$BiRun;->claim()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1438
    const/4 v0, 0x0

    return v0

    .line 1439
    :cond_3
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1440
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1443
    goto :goto_0

    .line 1441
    :catchall_0
    move-exception v0

    .line 1442
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1445
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_4
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method final bipush(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture$BiCompletion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava9/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;)V"
        }
    .end annotation

    .line 1224
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    .local p2, "c":Ljava9/util/concurrent/CompletableFuture$BiCompletion;, "Ljava9/util/concurrent/CompletableFuture$BiCompletion<***>;"
    if-eqz p2, :cond_4

    .line 1225
    :cond_0
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 1226
    invoke-virtual {p0, p2}, Ljava9/util/concurrent/CompletableFuture;->tryPushStack(Ljava9/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 1228
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$CoCompletion;

    invoke-direct {v0, p2}, Ljava9/util/concurrent/CompletableFuture$CoCompletion;-><init>(Ljava9/util/concurrent/CompletableFuture$BiCompletion;)V

    invoke-virtual {p1, v0}, Ljava9/util/concurrent/CompletableFuture;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    .line 1229
    :cond_1
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1230
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava9/util/concurrent/CompletableFuture$BiCompletion;->tryFire(I)Ljava9/util/concurrent/CompletableFuture;

    .line 1231
    :cond_2
    :goto_0
    return-void

    .line 1234
    :cond_3
    invoke-virtual {p1, p2}, Ljava9/util/concurrent/CompletableFuture;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V

    .line 1236
    :cond_4
    return-void
.end method

.method public cancel(Z)Z
    .locals 4
    .param p1, "mayInterruptIfRunning"    # Z

    .line 2537
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    new-instance v3, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v0, v3}, Ljava9/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    .line 2538
    invoke-virtual {p0, v0}, Ljava9/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2539
    .local v0, "cancelled":Z
    :goto_0
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->postComplete()V

    .line 2540
    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method final casStack(Ljava9/util/concurrent/CompletableFuture$Completion;Ljava9/util/concurrent/CompletableFuture$Completion;)Z
    .locals 6
    .param p1, "cmp"    # Ljava9/util/concurrent/CompletableFuture$Completion;
    .param p2, "val"    # Ljava9/util/concurrent/CompletableFuture$Completion;

    .line 254
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/CompletableFuture;->STACK:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final cleanStack()V
    .locals 5

    .line 511
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    .line 513
    .local v0, "unlinked":Z
    :goto_0
    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture;->stack:Ljava9/util/concurrent/CompletableFuture$Completion;

    move-object v2, v1

    .local v2, "p":Ljava9/util/concurrent/CompletableFuture$Completion;
    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava9/util/concurrent/CompletableFuture$Completion;->isLive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    iget-object v1, v2, Ljava9/util/concurrent/CompletableFuture$Completion;->next:Ljava9/util/concurrent/CompletableFuture$Completion;

    invoke-virtual {p0, v2, v1}, Ljava9/util/concurrent/CompletableFuture;->casStack(Ljava9/util/concurrent/CompletableFuture$Completion;Ljava9/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    goto :goto_0

    .line 515
    :cond_0
    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 516
    iget-object v1, v2, Ljava9/util/concurrent/CompletableFuture$Completion;->next:Ljava9/util/concurrent/CompletableFuture$Completion;

    .local v1, "q":Ljava9/util/concurrent/CompletableFuture$Completion;
    :goto_1
    if-eqz v1, :cond_2

    .line 517
    iget-object v3, v1, Ljava9/util/concurrent/CompletableFuture$Completion;->next:Ljava9/util/concurrent/CompletableFuture$Completion;

    .line 518
    .local v3, "s":Ljava9/util/concurrent/CompletableFuture$Completion;
    invoke-virtual {v1}, Ljava9/util/concurrent/CompletableFuture$Completion;->isLive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 519
    move-object v2, v1

    .line 520
    move-object v1, v3

    .line 526
    .end local v3    # "s":Ljava9/util/concurrent/CompletableFuture$Completion;
    goto :goto_1

    .line 523
    .restart local v3    # "s":Ljava9/util/concurrent/CompletableFuture$Completion;
    :cond_1
    invoke-static {v2, v1, v3}, Ljava9/util/concurrent/CompletableFuture;->casNext(Ljava9/util/concurrent/CompletableFuture$Completion;Ljava9/util/concurrent/CompletableFuture$Completion;Ljava9/util/concurrent/CompletableFuture$Completion;)Z

    .line 528
    .end local v1    # "q":Ljava9/util/concurrent/CompletableFuture$Completion;
    .end local v3    # "s":Ljava9/util/concurrent/CompletableFuture$Completion;
    :cond_2
    return-void
.end method

.method public complete(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2130
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z

    move-result v0

    .line 2131
    .local v0, "triggered":Z
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->postComplete()V

    .line 2132
    return v0
.end method

.method public completeAsync(Ljava9/util/function/Supplier;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Supplier<",
            "+TT;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2746
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+TT;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava9/util/concurrent/CompletableFuture;->completeAsync(Ljava9/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public completeAsync(Ljava9/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Supplier<",
            "+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2729
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+TT;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2731
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$AsyncSupply;

    invoke-direct {v0, p0, p1}, Ljava9/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Supplier;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2732
    return-object p0

    .line 2730
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 2144
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava9/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Ljava9/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    move-result v0

    .line 2145
    .local v0, "triggered":Z
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->postComplete()V

    .line 2146
    return v0
.end method

.method final completeNull()Z
    .locals 6

    .line 281
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/CompletableFuture;->RESULT:J

    sget-object v5, Ljava9/util/concurrent/CompletableFuture;->NIL:Ljava9/util/concurrent/CompletableFuture$AltResult;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava9/util/concurrent/CompletableFuture;
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2783
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p4}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2784
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2785
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$Canceller;

    new-instance v1, Ljava9/util/concurrent/CompletableFuture$DelayedCompleter;

    invoke-direct {v1, p0, p1}, Ljava9/util/concurrent/CompletableFuture$DelayedCompleter;-><init>(Ljava9/util/concurrent/CompletableFuture;Ljava/lang/Object;)V

    invoke-static {v1, p2, p3, p4}, Ljava9/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava9/util/concurrent/CompletableFuture$Canceller;-><init>(Ljava/util/concurrent/Future;)V

    invoke-virtual {p0, v0}, Ljava9/util/concurrent/CompletableFuture;->whenComplete(Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;

    .line 2788
    :cond_0
    return-object p0
.end method

.method final completeRelay(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "r"    # Ljava/lang/Object;

    .line 366
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/CompletableFuture;->RESULT:J

    .line 367
    invoke-static {p1}, Ljava9/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 366
    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final completeThrowable(Ljava/lang/Throwable;)Z
    .locals 6
    .param p1, "x"    # Ljava/lang/Throwable;

    .line 307
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/CompletableFuture;->RESULT:J

    .line 308
    invoke-static {p1}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-result-object v5

    .line 307
    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "x"    # Ljava/lang/Throwable;
    .param p2, "r"    # Ljava/lang/Object;

    .line 335
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/CompletableFuture;->RESULT:J

    .line 336
    invoke-static {p1, p2}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 335
    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final completeValue(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 292
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/CompletableFuture;->RESULT:J

    if-nez p1, :cond_0

    sget-object v1, Ljava9/util/concurrent/CompletableFuture;->NIL:Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public copy()Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2689
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-static {p0}, Ljava9/util/concurrent/CompletableFuture;->uniCopyStage(Ljava9/util/concurrent/CompletableFuture;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public defaultExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 2671
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method encodeOutcome(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .param p2, "x"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 345
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_1

    if-nez p1, :cond_0

    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->NIL:Ljava9/util/concurrent/CompletableFuture$AltResult;

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava9/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method final encodeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 287
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->NIL:Ljava9/util/concurrent/CompletableFuture$AltResult;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public exceptionally(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2347
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniExceptionallyStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic exceptionally(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->exceptionally(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public exceptionallyAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2369
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniExceptionallyStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public exceptionallyAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2391
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    invoke-static {p2}, Ljava9/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniExceptionallyStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic exceptionallyAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->exceptionallyAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic exceptionallyAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->exceptionallyAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public exceptionallyCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2409
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/lang/Throwable;+Ljava9/util/concurrent/CompletionStage<TT;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniComposeExceptionallyStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic exceptionallyCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->exceptionallyCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public exceptionallyComposeAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2428
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/lang/Throwable;+Ljava9/util/concurrent/CompletionStage<TT;>;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniComposeExceptionallyStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public exceptionallyComposeAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2449
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/lang/Throwable;+Ljava9/util/concurrent/CompletionStage<TT;>;>;"
    invoke-static {p2}, Ljava9/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniComposeExceptionallyStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic exceptionallyComposeAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->exceptionallyComposeAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic exceptionallyComposeAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->exceptionallyComposeAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2055
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 2056
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava9/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    move-result-object v1

    .line 2057
    :cond_0
    invoke-static {v1}, Ljava9/util/concurrent/CompletableFuture;->reportGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 2076
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 2078
    .local v0, "nanos":J
    iget-object v2, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "r":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 2079
    invoke-direct {p0, v0, v1}, Ljava9/util/concurrent/CompletableFuture;->timedGet(J)Ljava/lang/Object;

    move-result-object v3

    .line 2080
    :cond_0
    invoke-static {v3}, Ljava9/util/concurrent/CompletableFuture;->reportGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getNow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 2118
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "valueIfAbsent":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava9/util/concurrent/CompletableFuture;->reportJoin(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNumberOfDependents()I
    .locals 2

    .line 2611
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    .line 2612
    .local v0, "count":I
    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture;->stack:Ljava9/util/concurrent/CompletableFuture$Completion;

    .local v1, "p":Ljava9/util/concurrent/CompletableFuture$Completion;
    :goto_0
    if-eqz v1, :cond_0

    .line 2613
    add-int/lit8 v0, v0, 0x1

    .line 2612
    iget-object v1, v1, Ljava9/util/concurrent/CompletableFuture$Completion;->next:Ljava9/util/concurrent/CompletableFuture$Completion;

    goto :goto_0

    .line 2614
    .end local v1    # "p":Ljava9/util/concurrent/CompletableFuture$Completion;
    :cond_0
    return v0
.end method

.method public handle(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2323
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava9/util/function/BiFunction;, "Ljava9/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handle(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->handle(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public handleAsync(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2328
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava9/util/function/BiFunction;, "Ljava9/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public handleAsync(Ljava9/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2333
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava9/util/function/BiFunction;, "Ljava9/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    invoke-static {p2}, Ljava9/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleAsync(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->handleAsync(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic handleAsync(Ljava9/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->handleAsync(Ljava9/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method final internalComplete(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "r"    # Ljava/lang/Object;

    .line 250
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/CompletableFuture;->RESULT:J

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 2

    .line 2552
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    instance-of v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCompletedExceptionally()Z
    .locals 2

    .line 2568
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    instance-of v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_0

    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->NIL:Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 2039
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public join()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2100
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 2101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava9/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    move-result-object v1

    .line 2102
    :cond_0
    invoke-static {v1}, Ljava9/util/concurrent/CompletableFuture;->reportJoin(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public minimalCompletionStage()Ljava9/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 2713
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava9/util/concurrent/CompletableFuture;->uniAsMinimalStage()Ljava9/util/concurrent/CompletableFuture$MinimalStage;

    move-result-object v0

    return-object v0
.end method

.method public newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2656
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    new-instance v0, Ljava9/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava9/util/concurrent/CompletableFuture;-><init>()V

    return-object v0
.end method

.method public obtrudeException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 2598
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava9/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2599
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->postComplete()V

    .line 2600
    return-void
.end method

.method public obtrudeValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2582
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->NIL:Ljava9/util/concurrent/CompletableFuture$AltResult;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2583
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->postComplete()V

    .line 2584
    return-void
.end method

.method public orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava9/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2762
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-static {p3}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2763
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2764
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$Canceller;

    new-instance v1, Ljava9/util/concurrent/CompletableFuture$Timeout;

    invoke-direct {v1, p0}, Ljava9/util/concurrent/CompletableFuture$Timeout;-><init>(Ljava9/util/concurrent/CompletableFuture;)V

    invoke-static {v1, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava9/util/concurrent/CompletableFuture$Canceller;-><init>(Ljava/util/concurrent/Future;)V

    invoke-virtual {p0, v0}, Ljava9/util/concurrent/CompletableFuture;->whenComplete(Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;

    .line 2766
    :cond_0
    return-object p0
.end method

.method final orpush(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture$BiCompletion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava9/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;)V"
        }
    .end annotation

    .line 1531
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    .local p2, "c":Ljava9/util/concurrent/CompletableFuture$BiCompletion;, "Ljava9/util/concurrent/CompletableFuture$BiCompletion<***>;"
    if-eqz p2, :cond_3

    .line 1532
    :cond_0
    invoke-virtual {p0, p2}, Ljava9/util/concurrent/CompletableFuture;->tryPushStack(Ljava9/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1533
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1534
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava9/util/concurrent/CompletableFuture;->lazySetNext(Ljava9/util/concurrent/CompletableFuture$Completion;Ljava9/util/concurrent/CompletableFuture$Completion;)V

    .line 1538
    :cond_1
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1539
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava9/util/concurrent/CompletableFuture$BiCompletion;->tryFire(I)Ljava9/util/concurrent/CompletableFuture;

    goto :goto_0

    .line 1541
    :cond_2
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$CoCompletion;

    invoke-direct {v0, p2}, Ljava9/util/concurrent/CompletableFuture$CoCompletion;-><init>(Ljava9/util/concurrent/CompletableFuture$BiCompletion;)V

    invoke-virtual {p1, v0}, Ljava9/util/concurrent/CompletableFuture;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V

    .line 1543
    :cond_3
    :goto_0
    return-void
.end method

.method final postComplete()V
    .locals 5

    .line 492
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    move-object v0, p0

    .line 493
    .local v0, "f":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    :goto_0
    iget-object v1, v0, Ljava9/util/concurrent/CompletableFuture;->stack:Ljava9/util/concurrent/CompletableFuture$Completion;

    move-object v2, v1

    .local v2, "h":Ljava9/util/concurrent/CompletableFuture$Completion;
    if-nez v1, :cond_1

    if-eq v0, p0, :cond_0

    move-object v0, p0

    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture;->stack:Ljava9/util/concurrent/CompletableFuture$Completion;

    move-object v2, v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 507
    :cond_0
    return-void

    .line 496
    :cond_1
    :goto_1
    iget-object v1, v2, Ljava9/util/concurrent/CompletableFuture$Completion;->next:Ljava9/util/concurrent/CompletableFuture$Completion;

    move-object v3, v1

    .local v3, "t":Ljava9/util/concurrent/CompletableFuture$Completion;
    invoke-virtual {v0, v2, v1}, Ljava9/util/concurrent/CompletableFuture;->casStack(Ljava9/util/concurrent/CompletableFuture$Completion;Ljava9/util/concurrent/CompletableFuture$Completion;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 497
    if-eqz v3, :cond_3

    .line 498
    if-eq v0, p0, :cond_2

    .line 499
    invoke-virtual {p0, v2}, Ljava9/util/concurrent/CompletableFuture;->pushStack(Ljava9/util/concurrent/CompletableFuture$Completion;)V

    .line 500
    goto :goto_0

    .line 502
    :cond_2
    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Ljava9/util/concurrent/CompletableFuture;->casNext(Ljava9/util/concurrent/CompletableFuture$Completion;Ljava9/util/concurrent/CompletableFuture$Completion;Ljava9/util/concurrent/CompletableFuture$Completion;)Z

    .line 504
    :cond_3
    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Ljava9/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v1

    move-object v4, v1

    .local v4, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    if-nez v1, :cond_4

    move-object v1, p0

    goto :goto_2

    :cond_4
    move-object v1, v4

    :goto_2
    move-object v0, v1

    .line 506
    .end local v3    # "t":Ljava9/util/concurrent/CompletableFuture$Completion;
    .end local v4    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    :cond_5
    goto :goto_0
.end method

.method final postFire(Ljava9/util/concurrent/CompletableFuture;I)Ljava9/util/concurrent/CompletableFuture;
    .locals 2
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletableFuture<",
            "*>;I)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 587
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    if-eqz p1, :cond_2

    iget-object v0, p1, Ljava9/util/concurrent/CompletableFuture;->stack:Ljava9/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 590
    invoke-virtual {p1}, Ljava9/util/concurrent/CompletableFuture;->cleanStack()V

    .line 591
    :cond_0
    if-ltz p2, :cond_2

    if-nez v1, :cond_1

    iget-object v0, p1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 592
    :cond_1
    invoke-virtual {p1}, Ljava9/util/concurrent/CompletableFuture;->postComplete()V

    .line 594
    .end local v1    # "r":Ljava/lang/Object;
    :cond_2
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->stack:Ljava9/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_4

    .line 595
    if-gez p2, :cond_3

    .line 596
    return-object p0

    .line 598
    :cond_3
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->postComplete()V

    .line 600
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method final postFire(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;I)Ljava9/util/concurrent/CompletableFuture;
    .locals 2
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "*>;I)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1241
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    .local p2, "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    if-eqz p2, :cond_2

    iget-object v0, p2, Ljava9/util/concurrent/CompletableFuture;->stack:Ljava9/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_2

    .line 1243
    iget-object v0, p2, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1244
    invoke-virtual {p2}, Ljava9/util/concurrent/CompletableFuture;->cleanStack()V

    .line 1245
    :cond_0
    if-ltz p3, :cond_2

    if-nez v1, :cond_1

    iget-object v0, p2, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1246
    :cond_1
    invoke-virtual {p2}, Ljava9/util/concurrent/CompletableFuture;->postComplete()V

    .line 1248
    .end local v1    # "r":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, p1, p3}, Ljava9/util/concurrent/CompletableFuture;->postFire(Ljava9/util/concurrent/CompletableFuture;I)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method final pushStack(Ljava9/util/concurrent/CompletableFuture$Completion;)V
    .locals 1
    .param p1, "c"    # Ljava9/util/concurrent/CompletableFuture$Completion;

    .line 266
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    :goto_0
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->tryPushStack(Ljava9/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    return-void

    .line 266
    :cond_0
    goto :goto_0
.end method

.method public runAfterBoth(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2228
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runAfterBoth(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->runAfterBoth(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public runAfterBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2233
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<*>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public runAfterBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2239
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<*>;"
    invoke-static {p3}, Ljava9/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runAfterBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic runAfterBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public runAfterEither(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2276
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runAfterEither(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->runAfterEither(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public runAfterEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2281
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<*>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public runAfterEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2287
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<*>;"
    invoke-static {p3}, Ljava9/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenAccept(Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2165
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenAccept(Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->thenAccept(Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenAcceptAsync(Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2169
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenAcceptAsync(Ljava9/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2174
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-static {p2}, Ljava9/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenAcceptAsync(Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenAcceptAsync(Ljava9/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava9/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenAcceptBoth(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava9/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2211
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "action":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<-TT;-TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenAcceptBoth(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->thenAcceptBoth(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenAcceptBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava9/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2217
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "action":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<-TT;-TU;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenAcceptBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava9/util/function/BiConsumer<",
            "-TT;-TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2223
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "action":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<-TT;-TU;>;"
    invoke-static {p3}, Ljava9/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenApply(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2151
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenApply(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->thenApply(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenApplyAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2156
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenApplyAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2161
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    invoke-static {p2}, Ljava9/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenApplyAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenApplyAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenCombine(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava9/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 2193
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "fn":Ljava9/util/function/BiFunction;, "Ljava9/util/function/BiFunction<-TT;-TU;+TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenCombine(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->thenCombine(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenCombineAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava9/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 2199
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "fn":Ljava9/util/function/BiFunction;, "Ljava9/util/function/BiFunction<-TT;-TU;+TV;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenCombineAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava9/util/function/BiFunction<",
            "-TT;-TU;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 2205
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "fn":Ljava9/util/function/BiFunction;, "Ljava9/util/function/BiFunction<-TT;-TU;+TV;>;"
    invoke-static {p3}, Ljava9/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenCombineAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCombineAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2292
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+Ljava9/util/concurrent/CompletionStage<TU;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->thenCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenComposeAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2297
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+Ljava9/util/concurrent/CompletionStage<TU;>;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenComposeAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2303
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+Ljava9/util/concurrent/CompletionStage<TU;>;>;"
    invoke-static {p2}, Ljava9/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenComposeAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenComposeAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenRun(Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2178
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenRun(Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenRunAsync(Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2182
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2187
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-static {p2}, Ljava9/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public toCompletableFuture()Ljava9/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2342
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 2628
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2629
    .local v0, "r":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 2630
    .local v1, "count":I
    iget-object v2, p0, Ljava9/util/concurrent/CompletableFuture;->stack:Ljava9/util/concurrent/CompletableFuture$Completion;

    .local v2, "p":Ljava9/util/concurrent/CompletableFuture$Completion;
    :goto_0
    if-eqz v2, :cond_0

    .line 2631
    add-int/lit8 v1, v1, 0x1

    .line 2630
    iget-object v2, v2, Ljava9/util/concurrent/CompletableFuture$Completion;->next:Ljava9/util/concurrent/CompletableFuture$Completion;

    goto :goto_0

    .line 2632
    .end local v2    # "p":Ljava9/util/concurrent/CompletableFuture$Completion;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    if-nez v1, :cond_1

    const-string v3, "[Not completed]"

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Not completed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dependents]"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    instance-of v3, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v3, v3, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Completed exceptionally: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v4, v4, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    goto :goto_1

    :cond_3
    const-string v3, "[Completed normally]"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method final tryPushStack(Ljava9/util/concurrent/CompletableFuture$Completion;)Z
    .locals 7
    .param p1, "c"    # Ljava9/util/concurrent/CompletableFuture$Completion;

    .line 259
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    iget-object v6, p0, Ljava9/util/concurrent/CompletableFuture;->stack:Ljava9/util/concurrent/CompletableFuture$Completion;

    .line 260
    .local v6, "h":Ljava9/util/concurrent/CompletableFuture$Completion;
    invoke-static {p1, v6}, Ljava9/util/concurrent/CompletableFuture;->lazySetNext(Ljava9/util/concurrent/CompletableFuture$Completion;Ljava9/util/concurrent/CompletableFuture$Completion;)V

    .line 261
    sget-object v0, Ljava9/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/CompletableFuture;->STACK:J

    move-object v1, p0

    move-object v4, v6

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final uniExceptionally(Ljava/lang/Object;Ljava9/util/function/Function;Ljava9/util/concurrent/CompletableFuture$UniExceptionally;)Z
    .locals 2
    .param p1, "r"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava9/util/function/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava9/util/concurrent/CompletableFuture$UniExceptionally<",
            "TT;>;)Z"
        }
    .end annotation

    .line 972
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-Ljava/lang/Throwable;+TT;>;"
    .local p3, "c":Ljava9/util/concurrent/CompletableFuture$UniExceptionally;, "Ljava9/util/concurrent/CompletableFuture$UniExceptionally<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 974
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava9/util/concurrent/CompletableFuture$UniExceptionally;->claim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 975
    const/4 v0, 0x0

    return v0

    .line 976
    :cond_0
    instance-of v0, p1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 977
    invoke-interface {p2, v1}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z

    goto :goto_0

    .line 979
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    :goto_0
    goto :goto_1

    .line 980
    :catchall_0
    move-exception v0

    .line 981
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 984
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method final uniHandle(Ljava/lang/Object;Ljava9/util/function/BiFunction;Ljava9/util/concurrent/CompletableFuture$UniHandle;)Z
    .locals 3
    .param p1, "r"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava9/util/function/BiFunction<",
            "-TS;",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava9/util/concurrent/CompletableFuture$UniHandle<",
            "TS;TT;>;)Z"
        }
    .end annotation

    .line 908
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava9/util/function/BiFunction;, "Ljava9/util/function/BiFunction<-TS;Ljava/lang/Throwable;+TT;>;"
    .local p3, "c":Ljava9/util/concurrent/CompletableFuture$UniHandle;, "Ljava9/util/concurrent/CompletableFuture$UniHandle<TS;TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 910
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava9/util/concurrent/CompletableFuture$UniHandle;->claim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 911
    const/4 v0, 0x0

    return v0

    .line 912
    :cond_0
    instance-of v0, p1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_1

    .line 913
    move-object v0, p1

    check-cast v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .line 914
    .local v0, "x":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .local v1, "s":Ljava/lang/Object;, "TS;"
    goto :goto_0

    .line 916
    .end local v0    # "x":Ljava/lang/Throwable;
    .end local v1    # "s":Ljava/lang/Object;, "TS;"
    :cond_1
    const/4 v0, 0x0

    .line 918
    .restart local v0    # "x":Ljava/lang/Throwable;
    move-object v1, p1

    .line 919
    .local v1, "ss":Ljava/lang/Object;, "TS;"
    move-object v2, v1

    move-object v1, v2

    .line 921
    .local v1, "s":Ljava/lang/Object;, "TS;"
    :goto_0
    invoke-interface {p2, v1, v0}, Ljava9/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava9/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    goto :goto_1

    .line 922
    .end local v0    # "x":Ljava/lang/Throwable;
    .end local v1    # "s":Ljava/lang/Object;, "TS;"
    :catchall_0
    move-exception v0

    .line 923
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 926
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method final uniWhenComplete(Ljava/lang/Object;Ljava9/util/function/BiConsumer;Ljava9/util/concurrent/CompletableFuture$UniWhenComplete;)Z
    .locals 4
    .param p1, "r"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava9/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava9/util/concurrent/CompletableFuture$UniWhenComplete<",
            "TT;>;)Z"
        }
    .end annotation

    .line 835
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    .local p3, "c":Ljava9/util/concurrent/CompletableFuture$UniWhenComplete;, "Ljava9/util/concurrent/CompletableFuture$UniWhenComplete<TT;>;"
    const/4 v0, 0x0

    .line 836
    .local v0, "x":Ljava/lang/Throwable;
    iget-object v1, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 838
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava9/util/concurrent/CompletableFuture$UniWhenComplete;->claim()Z

    move-result v1

    if-nez v1, :cond_0

    .line 839
    const/4 v1, 0x0

    return v1

    .line 840
    :cond_0
    instance-of v1, p1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_1

    .line 841
    move-object v1, p1

    check-cast v1, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v0, v1

    .line 842
    const/4 v1, 0x0

    .local v1, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 845
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    move-object v1, p1

    .line 846
    .local v1, "tr":Ljava/lang/Object;, "TT;"
    move-object v3, v1

    move-object v1, v3

    .line 848
    .local v1, "t":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-interface {p2, v1, v0}, Ljava9/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 849
    if-nez v0, :cond_2

    .line 850
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    return v2

    .line 859
    :cond_2
    goto :goto_1

    .line 853
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    .line 854
    .local v1, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_3

    .line 855
    move-object v0, v1

    .line 860
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    invoke-virtual {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 862
    :cond_4
    return v2
.end method

.method final unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V
    .locals 1
    .param p1, "c"    # Ljava9/util/concurrent/CompletableFuture$Completion;

    .line 569
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    if-eqz p1, :cond_2

    .line 570
    :cond_0
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->tryPushStack(Ljava9/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 572
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava9/util/concurrent/CompletableFuture;->lazySetNext(Ljava9/util/concurrent/CompletableFuture$Completion;Ljava9/util/concurrent/CompletableFuture$Completion;)V

    .line 576
    :cond_1
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 577
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava9/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava9/util/concurrent/CompletableFuture;

    .line 579
    :cond_2
    return-void
.end method

.method public whenComplete(Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2308
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whenComplete(Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->whenComplete(Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whenCompleteAsync(Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2313
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whenCompleteAsync(Ljava9/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2318
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    invoke-static {p2}, Ljava9/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava9/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whenCompleteAsync(Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whenCompleteAsync(Ljava9/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 125
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava9/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
