.class final Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WorkQueue"
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field static final INITIAL_QUEUE_CAPACITY:I = 0x2000

.field static final MAXIMUM_QUEUE_CAPACITY:I = 0x4000000

.field private static final PHASE:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field array:[Ljava9/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation
.end field

.field volatile base:I

.field id:I

.field nsteals:I

.field final owner:Ljava9/util/concurrent/ForkJoinWorkerThread;

.field volatile pad00:J

.field volatile pad01:J

.field volatile pad02:J

.field volatile pad03:J

.field volatile pad04:J

.field volatile pad05:J

.field volatile pad06:J

.field volatile pad07:J

.field volatile pad08:J

.field volatile pad09:J

.field volatile pad0a:J

.field volatile pad0b:J

.field volatile pad0c:J

.field volatile pad0d:J

.field volatile pad0e:J

.field volatile pad0f:J

.field volatile pad10:Ljava/lang/Object;

.field volatile pad11:Ljava/lang/Object;

.field volatile pad12:Ljava/lang/Object;

.field volatile pad13:Ljava/lang/Object;

.field volatile pad14:Ljava/lang/Object;

.field volatile pad15:Ljava/lang/Object;

.field volatile pad16:Ljava/lang/Object;

.field volatile pad17:Ljava/lang/Object;

.field volatile pad18:Ljava/lang/Object;

.field volatile pad19:Ljava/lang/Object;

.field volatile pad1a:Ljava/lang/Object;

.field volatile pad1b:Ljava/lang/Object;

.field volatile pad1c:Ljava/lang/Object;

.field volatile pad1d:Ljava/lang/Object;

.field volatile pad1e:Ljava/lang/Object;

.field volatile pad1f:Ljava/lang/Object;

.field volatile phase:I

.field final pool:Ljava9/util/concurrent/ForkJoinPool;

.field volatile source:I

.field stackPred:I

.field top:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1157
    sget-object v0, Ljava9/util/concurrent/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1163
    :try_start_0
    const-class v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    const-string v2, "phase"

    .line 1164
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->PHASE:J

    .line 1165
    const-class v1, [Ljava9/util/concurrent/ForkJoinTask;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    .line 1166
    const-class v1, [Ljava9/util/concurrent/ForkJoinTask;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 1167
    .local v0, "scale":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 1169
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    sput v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    .line 1172
    .end local v0    # "scale":I
    nop

    .line 1173
    return-void

    .line 1168
    .restart local v0    # "scale":I
    :cond_0
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    const-string v2, "array index scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    .end local v0    # "scale":I
    :catch_0
    move-exception v0

    .line 1171
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Ljava9/util/concurrent/ForkJoinPool;Ljava9/util/concurrent/ForkJoinWorkerThread;)V
    .locals 1
    .param p1, "pool"    # Ljava9/util/concurrent/ForkJoinPool;
    .param p2, "owner"    # Ljava9/util/concurrent/ForkJoinWorkerThread;

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    iput-object p1, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava9/util/concurrent/ForkJoinPool;

    .line 743
    iput-object p2, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava9/util/concurrent/ForkJoinWorkerThread;

    .line 745
    const/16 v0, 0x1000

    iput v0, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iput v0, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 746
    return-void
.end method


# virtual methods
.method final cancelAll()V
    .locals 2

    .line 918
    :goto_0
    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    .line 919
    invoke-static {v1}, Ljava9/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava9/util/concurrent/ForkJoinTask;)V

    goto :goto_0

    .line 920
    .end local v1    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_0
    return-void
.end method

.method final getPoolIndex()I
    .locals 2

    .line 752
    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    const v1, 0xffff

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method final growArray()[Ljava9/util/concurrent/ForkJoinTask;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 806
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    .line 807
    .local v7, "oldA":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v7, :cond_0

    array-length v1, v7

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v8, v1

    .line 808
    .local v8, "oldSize":I
    const/16 v1, 0x2000

    if-lez v8, :cond_1

    shl-int/lit8 v2, v8, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    move v9, v2

    .line 809
    .local v9, "size":I
    if-lt v9, v1, :cond_6

    const/high16 v1, 0x4000000

    if-gt v9, v1, :cond_6

    .line 812
    new-array v1, v9, [Ljava9/util/concurrent/ForkJoinTask;

    iput-object v1, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v10, v1

    .line 813
    .local v10, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v7, :cond_5

    add-int/lit8 v1, v8, -0x1

    move v11, v1

    .local v11, "oldMask":I
    if-lez v1, :cond_5

    iget v1, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move v12, v1

    .local v12, "t":I
    iget v2, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move v3, v2

    .local v3, "b":I
    sub-int/2addr v1, v2

    if-lez v1, :cond_5

    .line 815
    add-int/lit8 v13, v9, -0x1

    move v14, v3

    .line 817
    .end local v3    # "b":I
    .local v13, "mask":I
    .local v14, "b":I
    :cond_2
    and-int v15, v14, v11

    .line 818
    .local v15, "index":I
    int-to-long v1, v15

    sget v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v1, v3

    sget v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v3, v3

    add-long v5, v1, v3

    .line 819
    .local v5, "offset":J
    sget-object v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 820
    invoke-virtual {v1, v7, v5, v6}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ljava9/util/concurrent/ForkJoinTask;

    .line 821
    .local v16, "x":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v16, :cond_3

    const/16 v17, 0x0

    .line 822
    move-object v2, v7

    move-wide v3, v5

    move-wide/from16 v18, v5

    .end local v5    # "offset":J
    .local v18, "offset":J
    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 823
    and-int v1, v14, v13

    aput-object v16, v10, v1

    goto :goto_2

    .line 821
    .end local v18    # "offset":J
    .restart local v5    # "offset":J
    :cond_3
    move-wide/from16 v18, v5

    .line 824
    .end local v5    # "offset":J
    .end local v15    # "index":I
    .end local v16    # "x":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_4
    :goto_2
    add-int/lit8 v14, v14, 0x1

    if-ne v14, v12, :cond_2

    .line 825
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool$MemBar;->storeFence()V

    .line 827
    .end local v11    # "oldMask":I
    .end local v12    # "t":I
    .end local v13    # "mask":I
    .end local v14    # "b":I
    :cond_5
    return-object v10

    .line 810
    .end local v10    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_6
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v2, "Queue capacity exceeded"

    invoke-direct {v1, v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final isApparentlyUnblocked()Z
    .locals 4

    .line 1150
    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava9/util/concurrent/ForkJoinWorkerThread;

    move-object v1, v0

    .local v1, "wt":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 1151
    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    move-object v2, v0

    .local v2, "s":Ljava/lang/Thread$State;
    sget-object v3, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v0, v3, :cond_0

    sget-object v0, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v2, v0, :cond_0

    sget-object v0, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-eq v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local v2    # "s":Ljava/lang/Thread$State;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isEmpty()Z
    .locals 5

    .line 770
    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move v1, v0

    .local v1, "b":I
    iget v2, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v0, v2

    move v2, v0

    .local v2, "n":I
    if-gez v0, :cond_1

    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v3, v0

    .local v3, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_1

    array-length v0, v3

    move v4, v0

    .local v4, "al":I
    if-eqz v0, :cond_1

    add-int/lit8 v0, v4, -0x1

    and-int/2addr v0, v1

    aget-object v0, v3, v0

    if-nez v0, :cond_0

    goto :goto_0

    .end local v3    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v4    # "al":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method final localHelpCC(Ljava9/util/concurrent/CountedCompleter;I)I
    .locals 22
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;I)I"
        }
    .end annotation

    .line 1028
    .local p1, "task":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1029
    .local v2, "status":I
    if-eqz v1, :cond_5

    iget v3, v1, Ljava9/util/concurrent/CountedCompleter;->status:I

    move v2, v3

    if-ltz v3, :cond_5

    move v3, v2

    move/from16 v2, p2

    .line 1031
    .end local p2    # "limit":I
    .local v2, "limit":I
    .local v3, "status":I
    :goto_0
    const/4 v4, 0x0

    .line 1032
    .local v4, "help":Z
    iget v5, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v5, "b":I
    iget v6, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1033
    .local v6, "s":I
    iget-object v7, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v14, v7

    .local v14, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v7, :cond_3

    if-eq v5, v6, :cond_3

    array-length v7, v14

    move v15, v7

    .local v15, "al":I
    if-lez v7, :cond_3

    .line 1034
    add-int/lit8 v7, v15, -0x1

    add-int/lit8 v8, v6, -0x1

    and-int/2addr v7, v8

    .line 1035
    .local v7, "index":I
    int-to-long v8, v7

    sget v10, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v8, v10

    sget v10, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v10, v10

    add-long v12, v8, v10

    .line 1036
    .local v12, "offset":J
    sget-object v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1037
    invoke-virtual {v8, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava9/util/concurrent/ForkJoinTask;

    .line 1038
    .local v10, "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    instance-of v8, v10, Ljava9/util/concurrent/CountedCompleter;

    if-eqz v8, :cond_2

    .line 1039
    move-object/from16 v16, v10

    check-cast v16, Ljava9/util/concurrent/CountedCompleter;

    .line 1040
    .local v16, "t":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v8, v16

    move-object v11, v8

    .line 1041
    .local v11, "f":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    :cond_0
    if-eq v11, v1, :cond_1

    .line 1042
    iget-object v8, v11, Ljava9/util/concurrent/CountedCompleter;->completer:Ljava9/util/concurrent/CountedCompleter;

    move-object v11, v8

    if-nez v8, :cond_0

    .line 1043
    goto :goto_1

    .line 1046
    :cond_1
    sget-object v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/16 v17, 0x0

    move-object v9, v14

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .end local v10    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v11    # "f":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    .local v18, "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .local v19, "f":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    move-wide v10, v12

    move-wide/from16 v20, v12

    .end local v12    # "offset":J
    .local v20, "offset":J
    move-object/from16 v12, v16

    move-object/from16 v13, v17

    invoke-static/range {v8 .. v13}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1048
    add-int/lit8 v8, v6, -0x1

    iput v8, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1049
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool$MemBar;->storeFence()V

    .line 1050
    invoke-virtual/range {v16 .. v16}, Ljava9/util/concurrent/CountedCompleter;->doExec()I

    .line 1051
    const/4 v4, 0x1

    goto :goto_1

    .line 1038
    .end local v16    # "t":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    .end local v18    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v19    # "f":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    .end local v20    # "offset":J
    .restart local v10    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v12    # "offset":J
    :cond_2
    move-object/from16 v18, v10

    move-wide/from16 v20, v12

    .line 1058
    .end local v7    # "index":I
    .end local v10    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v12    # "offset":J
    .end local v15    # "al":I
    :cond_3
    :goto_1
    iget v7, v1, Ljava9/util/concurrent/CountedCompleter;->status:I

    move v3, v7

    if-ltz v7, :cond_6

    if-eqz v4, :cond_6

    if-eqz v2, :cond_4

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_4

    .line 1060
    goto :goto_2

    .line 1061
    .end local v4    # "help":Z
    .end local v5    # "b":I
    .end local v6    # "s":I
    .end local v14    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_4
    goto :goto_0

    .line 1029
    .end local v3    # "status":I
    .local v2, "status":I
    .restart local p2    # "limit":I
    :cond_5
    move v3, v2

    move/from16 v2, p2

    .line 1063
    .end local p2    # "limit":I
    .local v2, "limit":I
    .restart local v3    # "status":I
    :cond_6
    :goto_2
    return v3
.end method

.method final localPollAndExec(I)V
    .locals 12
    .param p1, "limit"    # I

    .line 958
    const/4 v0, 0x0

    .line 959
    .local v0, "polls":I
    :goto_0
    iget v1, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v1, "b":I
    iget v2, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 960
    .local v2, "s":I
    iget-object v3, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v4, v3

    .local v4, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_3

    sub-int v3, v1, v2

    move v5, v3

    .local v5, "d":I
    if-gez v3, :cond_3

    array-length v3, v4

    move v6, v3

    .local v6, "al":I
    if-lez v3, :cond_3

    .line 962
    add-int/lit8 v3, v6, -0x1

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "b":I
    .local v7, "b":I
    and-int/2addr v1, v3

    .line 963
    .local v1, "index":I
    int-to-long v8, v1

    sget v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v8, v3

    sget v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v10, v3

    add-long/2addr v8, v10

    .line 964
    .local v8, "offset":J
    const/4 v3, 0x0

    .line 965
    invoke-static {v4, v8, v9, v3}, Ljava9/util/concurrent/ForkJoinPool;->getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava9/util/concurrent/ForkJoinTask;

    .line 966
    .local v3, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_0

    .line 967
    iput v7, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 968
    invoke-virtual {v3}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    .line 969
    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p1, :cond_2

    .line 970
    goto :goto_1

    .line 972
    :cond_0
    const/4 v10, -0x1

    if-ne v5, v10, :cond_1

    .line 973
    goto :goto_1

    .line 975
    :cond_1
    const/4 v0, 0x0

    .line 979
    .end local v1    # "index":I
    .end local v2    # "s":I
    .end local v3    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v4    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v5    # "d":I
    .end local v6    # "al":I
    .end local v7    # "b":I
    .end local v8    # "offset":J
    :cond_2
    goto :goto_0

    .line 980
    .end local v0    # "polls":I
    :cond_3
    :goto_1
    return-void
.end method

.method final localPopAndExec(I)V
    .locals 9
    .param p1, "limit"    # I

    .line 931
    :goto_0
    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v0, "b":I
    iget v1, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 932
    .local v1, "s":I
    iget-object v2, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v3, v2

    .local v3, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_1

    array-length v2, v3

    move v4, v2

    .local v4, "al":I
    if-lez v2, :cond_1

    .line 933
    add-int/lit8 v2, v4, -0x1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v2, v1

    .line 934
    .local v2, "index":I
    int-to-long v5, v2

    sget v7, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v5, v7

    sget v7, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 935
    .local v5, "offset":J
    const/4 v7, 0x0

    .line 936
    invoke-static {v3, v5, v6, v7}, Ljava9/util/concurrent/ForkJoinPool;->getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava9/util/concurrent/ForkJoinTask;

    .line 937
    .local v7, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v7, :cond_1

    .line 938
    iput v1, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 939
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool$MemBar;->storeFence()V

    .line 940
    invoke-virtual {v7}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    .line 941
    if-eqz p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    .line 942
    goto :goto_1

    .line 949
    .end local v0    # "b":I
    .end local v1    # "s":I
    .end local v2    # "index":I
    .end local v3    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v4    # "al":I
    .end local v5    # "offset":J
    .end local v7    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_0
    goto :goto_0

    .line 950
    :cond_1
    :goto_1
    return-void
.end method

.method final nextLocalTask()Ljava9/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 884
    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method final peek()Ljava9/util/concurrent/ForkJoinTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 892
    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v1, v0

    .local v1, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_1

    array-length v0, v1

    move v2, v0

    .local v2, "al":I
    if-lez v0, :cond_1

    add-int/lit8 v0, v2, -0x1

    iget v3, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v3, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    goto :goto_0

    :cond_0
    iget v3, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v3, v3, -0x1

    :goto_0
    and-int/2addr v0, v3

    aget-object v0, v1, v0

    goto :goto_1

    .end local v2    # "al":I
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method final poll()Ljava9/util/concurrent/ForkJoinTask;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 856
    :goto_0
    iget v1, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v1, "b":I
    iget v2, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 857
    .local v2, "s":I
    iget-object v3, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v10, v3

    .local v10, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_5

    sub-int v3, v1, v2

    move v11, v3

    .local v11, "d":I
    if-gez v3, :cond_4

    array-length v3, v10

    move v12, v3

    .local v12, "al":I
    if-lez v3, :cond_3

    .line 859
    add-int/lit8 v3, v12, -0x1

    and-int/2addr v3, v1

    .line 860
    .local v3, "index":I
    int-to-long v4, v3

    sget v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v4, v6

    sget v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v6, v6

    add-long v13, v4, v6

    .line 861
    .local v13, "offset":J
    sget-object v4, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 862
    invoke-virtual {v4, v10, v13, v14}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Ljava9/util/concurrent/ForkJoinTask;

    .line 863
    .local v15, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    add-int/lit8 v9, v1, 0x1

    .end local v1    # "b":I
    .local v9, "b":I
    iget v5, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v1, v5, :cond_1

    .line 864
    if-eqz v15, :cond_0

    .line 865
    const/4 v1, 0x0

    move-object v5, v10

    move-wide v6, v13

    move-object v8, v15

    move/from16 v16, v2

    move v2, v9

    .end local v9    # "b":I
    .local v2, "b":I
    .local v16, "s":I
    move-object v9, v1

    invoke-static/range {v4 .. v9}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 866
    iput v2, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 867
    return-object v15

    .line 870
    .end local v16    # "s":I
    .local v2, "s":I
    .restart local v9    # "b":I
    :cond_0
    move/from16 v16, v2

    move v2, v9

    .end local v9    # "b":I
    .local v2, "b":I
    .restart local v16    # "s":I
    const/4 v1, -0x1

    if-ne v11, v1, :cond_2

    .line 871
    goto :goto_1

    .line 863
    .end local v16    # "s":I
    .local v2, "s":I
    .restart local v9    # "b":I
    :cond_1
    move/from16 v16, v2

    move v2, v9

    .line 876
    .end local v2    # "s":I
    .end local v3    # "index":I
    .end local v9    # "b":I
    .end local v10    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v11    # "d":I
    .end local v12    # "al":I
    .end local v13    # "offset":J
    .end local v15    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_2
    goto :goto_0

    .line 857
    .restart local v1    # "b":I
    .restart local v2    # "s":I
    .restart local v10    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v11    # "d":I
    .restart local v12    # "al":I
    :cond_3
    move/from16 v16, v2

    .end local v2    # "s":I
    .restart local v16    # "s":I
    goto :goto_1

    .end local v12    # "al":I
    .end local v16    # "s":I
    .restart local v2    # "s":I
    :cond_4
    move/from16 v16, v2

    .end local v2    # "s":I
    .restart local v16    # "s":I
    goto :goto_1

    .end local v11    # "d":I
    .end local v16    # "s":I
    .restart local v2    # "s":I
    :cond_5
    move/from16 v16, v2

    .line 877
    .end local v1    # "b":I
    .end local v2    # "s":I
    .end local v10    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method final pop()Ljava9/util/concurrent/ForkJoinTask;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 835
    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v0, "b":I
    iget v1, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 836
    .local v1, "s":I
    iget-object v2, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v9, v2

    .local v9, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_0

    if-eq v0, v1, :cond_0

    array-length v2, v9

    move v10, v2

    .local v10, "al":I
    if-lez v2, :cond_0

    .line 837
    add-int/lit8 v2, v10, -0x1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v2, v1

    .line 838
    .local v2, "index":I
    int-to-long v3, v2

    sget v5, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v3, v5

    sget v5, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v5, v5

    add-long v11, v3, v5

    .line 839
    .local v11, "offset":J
    sget-object v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 840
    invoke-virtual {v3, v9, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava9/util/concurrent/ForkJoinTask;

    .line 841
    .local v13, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v13, :cond_0

    const/4 v8, 0x0

    .line 842
    move-object v4, v9

    move-wide v5, v11

    move-object v7, v13

    invoke-static/range {v3 .. v8}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 843
    iput v1, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 844
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool$MemBar;->storeFence()V

    .line 845
    return-object v13

    .line 848
    .end local v2    # "index":I
    .end local v10    # "al":I
    .end local v11    # "offset":J
    .end local v13    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method final push(Ljava9/util/concurrent/ForkJoinTask;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 784
    .local p1, "task":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 785
    .local v0, "s":I
    iget-object v1, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v2, v1

    .local v2, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    array-length v1, v2

    move v3, v1

    .local v3, "al":I
    if-lez v1, :cond_1

    .line 786
    add-int/lit8 v1, v3, -0x1

    and-int/2addr v1, v0

    .line 787
    .local v1, "index":I
    int-to-long v4, v1

    sget v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v4, v6

    sget v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 788
    .local v4, "offset":J
    iget-object v6, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava9/util/concurrent/ForkJoinPool;

    .line 789
    .local v6, "p":Ljava9/util/concurrent/ForkJoinPool;
    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 790
    sget-object v7, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v7, v2, v4, v5, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 791
    iget v7, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v7, v0

    move v8, v7

    .local v8, "d":I
    if-nez v7, :cond_0

    if-eqz v6, :cond_0

    .line 792
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool$MemBar;->fullFence()V

    .line 793
    invoke-virtual {v6}, Ljava9/util/concurrent/ForkJoinPool;->signalWork()V

    goto :goto_0

    .line 795
    :cond_0
    add-int v7, v8, v3

    const/4 v9, 0x1

    if-ne v7, v9, :cond_1

    .line 796
    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava9/util/concurrent/ForkJoinTask;

    .line 798
    .end local v1    # "index":I
    .end local v3    # "al":I
    .end local v4    # "offset":J
    .end local v6    # "p":Ljava9/util/concurrent/ForkJoinPool;
    .end local v8    # "d":I
    :cond_1
    :goto_0
    return-void
.end method

.method final queueSize()I
    .locals 2

    .line 759
    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v0, v1

    .line 760
    .local v0, "n":I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    neg-int v1, v0

    :goto_0
    return v1
.end method

.method final sharedHelpCC(Ljava9/util/concurrent/CountedCompleter;I)I
    .locals 26
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;I)I"
        }
    .end annotation

    .line 1102
    .local p1, "task":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v0, 0x0

    .line 1103
    .local v0, "status":I
    if-eqz v7, :cond_c

    iget v1, v7, Ljava9/util/concurrent/CountedCompleter;->status:I

    move v0, v1

    if-ltz v1, :cond_c

    move/from16 v8, p2

    move v9, v0

    .line 1105
    .end local v0    # "status":I
    .end local p2    # "limit":I
    .local v8, "limit":I
    .local v9, "status":I
    :goto_0
    const/4 v10, 0x0

    .line 1106
    .local v10, "help":Z
    iget v11, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v11, "b":I
    iget v12, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1107
    .local v12, "s":I
    iget-object v0, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v15, v0

    .local v15, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_7

    if-eq v11, v12, :cond_7

    array-length v0, v15

    move/from16 v19, v0

    .local v19, "al":I
    if-lez v0, :cond_6

    .line 1108
    add-int/lit8 v0, v19, -0x1

    add-int/lit8 v1, v12, -0x1

    and-int v14, v0, v1

    .line 1109
    .local v14, "index":I
    int-to-long v0, v14

    sget v2, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v0, v2

    sget v2, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v2, v2

    add-long v4, v0, v2

    .line 1110
    .local v4, "offset":J
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1111
    invoke-virtual {v0, v15, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava9/util/concurrent/ForkJoinTask;

    .line 1112
    .local v13, "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    instance-of v0, v13, Ljava9/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_5

    .line 1113
    move-object/from16 v20, v13

    check-cast v20, Ljava9/util/concurrent/CountedCompleter;

    .line 1114
    .local v20, "t":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, v20

    move-object v2, v0

    .line 1115
    .local v2, "f":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    :cond_0
    if-eq v2, v7, :cond_1

    .line 1116
    iget-object v0, v2, Ljava9/util/concurrent/CountedCompleter;->completer:Ljava9/util/concurrent/CountedCompleter;

    move-object v2, v0

    if-nez v0, :cond_0

    .line 1117
    move-object v2, v15

    goto/16 :goto_2

    .line 1120
    :cond_1
    sget-object v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->PHASE:J

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-wide/from16 v21, v0

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move-object/from16 p2, v3

    .end local v2    # "f":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    .local v23, "f":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    move-wide/from16 v2, v21

    move-wide/from16 v24, v4

    .end local v4    # "offset":J
    .local v24, "offset":J
    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1122
    iget v0, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v12, :cond_2

    iget-object v0, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    if-ne v0, v15, :cond_2

    const/16 v18, 0x0

    .line 1123
    move-object v0, v13

    .end local v13    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .local v0, "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v13, p2

    move v1, v14

    .end local v14    # "index":I
    .local v1, "index":I
    move-object v14, v15

    move-object v2, v15

    .end local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .local v2, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    move-wide/from16 v15, v24

    move-object/from16 v17, v20

    invoke-static/range {v13 .. v18}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1125
    const/4 v3, 0x1

    .line 1126
    .end local v10    # "help":Z
    .local v3, "help":Z
    add-int/lit8 v4, v12, -0x1

    iput v4, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move v10, v3

    goto :goto_1

    .line 1122
    .end local v0    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v1    # "index":I
    .end local v2    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v3    # "help":Z
    .restart local v10    # "help":Z
    .restart local v13    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v14    # "index":I
    .restart local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_2
    move-object v0, v13

    move v1, v14

    move-object v2, v15

    .line 1128
    .end local v13    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "index":I
    .end local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v0    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v1    # "index":I
    .restart local v2    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_3
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v4, p2

    move-wide/from16 v13, v21

    invoke-virtual {v4, v6, v13, v14, v3}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 1129
    if-eqz v10, :cond_8

    .line 1130
    invoke-virtual/range {v20 .. v20}, Ljava9/util/concurrent/CountedCompleter;->doExec()I

    goto :goto_2

    .line 1120
    .end local v0    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v1    # "index":I
    .end local v2    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v13    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v14    # "index":I
    .restart local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_4
    move-object v0, v13

    move v1, v14

    move-object v2, v15

    .end local v13    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "index":I
    .end local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v0    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v1    # "index":I
    .restart local v2    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    goto :goto_2

    .line 1112
    .end local v0    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v1    # "index":I
    .end local v2    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v20    # "t":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    .end local v23    # "f":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    .end local v24    # "offset":J
    .restart local v4    # "offset":J
    .restart local v13    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v14    # "index":I
    .restart local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_5
    move-wide/from16 v24, v4

    move-object v0, v13

    move v1, v14

    move-object v2, v15

    .end local v4    # "offset":J
    .end local v13    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "index":I
    .end local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v0    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v1    # "index":I
    .restart local v2    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v24    # "offset":J
    goto :goto_2

    .line 1107
    .end local v0    # "o":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v1    # "index":I
    .end local v2    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v24    # "offset":J
    .restart local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_6
    move-object v2, v15

    .end local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v2    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    goto :goto_2

    .end local v2    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v19    # "al":I
    .restart local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_7
    move-object v2, v15

    .line 1137
    .end local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v2    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_8
    :goto_2
    iget v0, v7, Ljava9/util/concurrent/CountedCompleter;->status:I

    move v9, v0

    if-ltz v0, :cond_b

    if-eqz v10, :cond_b

    if-eqz v8, :cond_a

    add-int/lit8 v0, v8, -0x1

    .end local v8    # "limit":I
    .local v0, "limit":I
    if-nez v0, :cond_9

    .line 1139
    goto :goto_3

    .line 1137
    :cond_9
    move v8, v0

    .line 1140
    .end local v0    # "limit":I
    .end local v2    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v10    # "help":Z
    .end local v11    # "b":I
    .end local v12    # "s":I
    .restart local v8    # "limit":I
    :cond_a
    goto/16 :goto_0

    .line 1142
    :cond_b
    move v0, v8

    goto :goto_3

    .line 1103
    .end local v8    # "limit":I
    .end local v9    # "status":I
    .local v0, "status":I
    .restart local p2    # "limit":I
    :cond_c
    move v9, v0

    move/from16 v0, p2

    .line 1142
    .end local p2    # "limit":I
    .local v0, "limit":I
    .restart local v9    # "status":I
    :goto_3
    return v9
.end method

.method final tryLockSharedQueue()Z
    .locals 6

    .line 1072
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->PHASE:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method final tryRemoveAndExec(Ljava9/util/concurrent/ForkJoinTask;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 987
    .local p1, "task":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, p0

    iget v1, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v2, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move v3, v2

    .local v3, "s":I
    sub-int/2addr v1, v2

    if-gez v1, :cond_6

    iget-object v1, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v2, v1

    .local v2, "wa":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_5

    array-length v1, v2

    move v10, v1

    .local v10, "wal":I
    if-lez v1, :cond_4

    .line 989
    add-int/lit8 v1, v10, -0x1

    .local v1, "m":I
    add-int/lit8 v11, v3, -0x1

    .local v11, "ns":I
    move v4, v11

    move v12, v4

    .line 990
    .local v12, "i":I
    :goto_0
    and-int v13, v12, v1

    .line 991
    .local v13, "index":I
    sget v4, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int v4, v13, v4

    sget v5, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v4, v5

    int-to-long v14, v4

    .line 992
    .local v14, "offset":J
    sget-object v4, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 993
    invoke-virtual {v4, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava9/util/concurrent/ForkJoinTask;

    .line 994
    .local v9, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-nez v9, :cond_0

    .line 995
    move/from16 v18, v3

    goto/16 :goto_2

    .line 996
    :cond_0
    move-object/from16 v8, p1

    if-ne v9, v8, :cond_3

    .line 997
    const/16 v16, 0x0

    move-object v5, v2

    move-wide v6, v14

    move-object v8, v9

    move-object/from16 v17, v9

    .end local v9    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .local v17, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v9, v16

    invoke-static/range {v4 .. v9}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 998
    iput v11, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 999
    move v4, v12

    .local v4, "j":I
    :goto_1
    if-eq v4, v11, :cond_1

    .line 1001
    add-int/lit8 v5, v4, 0x1

    and-int/2addr v5, v1

    .line 1002
    .local v5, "pindex":I
    sget v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int v7, v5, v6

    sget v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v7, v8

    move/from16 v16, v10

    .end local v10    # "wal":I
    .local v16, "wal":I
    int-to-long v9, v7

    .line 1003
    .local v9, "pOffset":J
    sget-object v7, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava9/util/concurrent/ForkJoinTask;

    .line 1004
    .local v0, "f":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    move/from16 v18, v3

    .end local v3    # "s":I
    .local v18, "s":I
    const/4 v3, 0x0

    invoke-virtual {v7, v2, v9, v10, v3}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1006
    and-int v3, v4, v1

    .line 1007
    .local v3, "jindex":I
    shl-int v6, v3, v6

    add-int/2addr v6, v8

    move v8, v5

    .end local v5    # "pindex":I
    .local v8, "pindex":I
    int-to-long v5, v6

    .line 1008
    .local v5, "jOffset":J
    invoke-virtual {v7, v2, v5, v6, v0}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 999
    .end local v0    # "f":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v3    # "jindex":I
    .end local v5    # "jOffset":J
    .end local v8    # "pindex":I
    .end local v9    # "pOffset":J
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v10, v16

    move/from16 v3, v18

    goto :goto_1

    .end local v16    # "wal":I
    .end local v18    # "s":I
    .local v3, "s":I
    .restart local v10    # "wal":I
    :cond_1
    move/from16 v18, v3

    move/from16 v16, v10

    .line 1010
    .end local v3    # "s":I
    .end local v4    # "j":I
    .end local v10    # "wal":I
    .restart local v16    # "wal":I
    .restart local v18    # "s":I
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool$MemBar;->storeFence()V

    .line 1011
    invoke-virtual/range {v17 .. v17}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_2

    .line 997
    .end local v16    # "wal":I
    .end local v18    # "s":I
    .restart local v3    # "s":I
    .restart local v10    # "wal":I
    :cond_2
    move/from16 v18, v3

    move/from16 v16, v10

    .end local v3    # "s":I
    .end local v10    # "wal":I
    .restart local v16    # "wal":I
    .restart local v18    # "s":I
    goto :goto_2

    .line 996
    .end local v16    # "wal":I
    .end local v17    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v18    # "s":I
    .restart local v3    # "s":I
    .local v9, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v10    # "wal":I
    :cond_3
    move/from16 v18, v3

    move-object/from16 v17, v9

    move/from16 v16, v10

    .line 989
    .end local v3    # "s":I
    .end local v9    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v10    # "wal":I
    .end local v13    # "index":I
    .end local v14    # "offset":J
    .restart local v16    # "wal":I
    .restart local v18    # "s":I
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 987
    .end local v1    # "m":I
    .end local v11    # "ns":I
    .end local v12    # "i":I
    .end local v16    # "wal":I
    .end local v18    # "s":I
    .restart local v3    # "s":I
    .restart local v10    # "wal":I
    :cond_4
    move/from16 v18, v3

    move/from16 v16, v10

    .end local v3    # "s":I
    .end local v10    # "wal":I
    .restart local v16    # "wal":I
    .restart local v18    # "s":I
    goto :goto_2

    .end local v16    # "wal":I
    .end local v18    # "s":I
    .restart local v3    # "s":I
    :cond_5
    move/from16 v18, v3

    .end local v3    # "s":I
    .restart local v18    # "s":I
    goto :goto_2

    .end local v2    # "wa":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v18    # "s":I
    .restart local v3    # "s":I
    :cond_6
    move/from16 v18, v3

    .line 1017
    .end local v3    # "s":I
    .restart local v18    # "s":I
    :goto_2
    return-void
.end method

.method final trySharedUnpush(Ljava9/util/concurrent/ForkJoinTask;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    .line 1079
    .local p1, "task":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v6, p0

    const/4 v7, 0x0

    .line 1080
    .local v7, "popped":Z
    iget v0, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v8, v0, -0x1

    .line 1081
    .local v8, "s":I
    iget-object v0, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v15, v0

    .local v15, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_4

    array-length v0, v15

    move/from16 v16, v0

    .local v16, "al":I
    if-lez v0, :cond_4

    .line 1082
    add-int/lit8 v0, v16, -0x1

    and-int v14, v0, v8

    .line 1083
    .local v14, "index":I
    int-to-long v0, v14

    sget v2, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v0, v2

    sget v2, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v2, v2

    add-long v11, v0, v2

    .line 1084
    .local v11, "offset":J
    sget-object v13, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v13, v15, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava9/util/concurrent/ForkJoinTask;

    .line 1085
    .local v10, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v9, p1

    if-ne v10, v9, :cond_3

    sget-wide v4, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->PHASE:J

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 1086
    move-object v0, v13

    move-object/from16 v1, p0

    move-wide v2, v4

    move-wide/from16 v19, v4

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1087
    iget v0, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v1, v8, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    if-ne v0, v15, :cond_0

    const/4 v0, 0x0

    .line 1088
    move-object v9, v13

    move-object v1, v10

    .end local v10    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .local v1, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    move-object v10, v15

    move-wide v2, v11

    .end local v11    # "offset":J
    .local v2, "offset":J
    move-object v4, v13

    move-object/from16 v13, p1

    move v5, v14

    .end local v14    # "index":I
    .local v5, "index":I
    move-object v14, v0

    invoke-static/range {v9 .. v14}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1089
    const/4 v0, 0x1

    .line 1090
    .end local v7    # "popped":Z
    .local v0, "popped":Z
    iput v8, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move v7, v0

    goto :goto_0

    .line 1087
    .end local v0    # "popped":Z
    .end local v1    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "offset":J
    .end local v5    # "index":I
    .restart local v7    # "popped":Z
    .restart local v10    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v11    # "offset":J
    .restart local v14    # "index":I
    :cond_0
    move-object v1, v10

    move-wide v2, v11

    move-object v4, v13

    move v5, v14

    .line 1092
    .end local v10    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v11    # "offset":J
    .end local v14    # "index":I
    .restart local v1    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v2    # "offset":J
    .restart local v5    # "index":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    move-wide/from16 v9, v19

    invoke-virtual {v4, v6, v9, v10, v0}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    goto :goto_1

    .line 1086
    .end local v1    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "offset":J
    .end local v5    # "index":I
    .restart local v10    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v11    # "offset":J
    .restart local v14    # "index":I
    :cond_2
    move-object v1, v10

    move-wide v2, v11

    move v5, v14

    .end local v10    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v11    # "offset":J
    .end local v14    # "index":I
    .restart local v1    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v2    # "offset":J
    .restart local v5    # "index":I
    goto :goto_1

    .line 1085
    .end local v1    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "offset":J
    .end local v5    # "index":I
    .restart local v10    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v11    # "offset":J
    .restart local v14    # "index":I
    :cond_3
    move-object v1, v10

    move-wide v2, v11

    move v5, v14

    .line 1095
    .end local v10    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v11    # "offset":J
    .end local v14    # "index":I
    .end local v16    # "al":I
    :cond_4
    :goto_1
    return v7
.end method

.method final tryUnpush(Ljava9/util/concurrent/ForkJoinTask;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    .line 901
    .local p1, "task":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v0, "b":I
    iget v1, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 902
    .local v1, "s":I
    iget-object v2, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v9, v2

    .local v9, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_0

    if-eq v0, v1, :cond_0

    array-length v2, v9

    move v10, v2

    .local v10, "al":I
    if-lez v2, :cond_0

    .line 903
    add-int/lit8 v2, v10, -0x1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v2, v1

    .line 904
    .local v2, "index":I
    int-to-long v3, v2

    sget v5, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v3, v5

    sget v5, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v5, v5

    add-long v11, v3, v5

    .line 905
    .local v11, "offset":J
    sget-object v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    move-object v4, v9

    move-wide v5, v11

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 906
    iput v1, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 907
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool$MemBar;->storeFence()V

    .line 908
    const/4 v3, 0x1

    return v3

    .line 911
    .end local v2    # "index":I
    .end local v10    # "al":I
    .end local v11    # "offset":J
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
