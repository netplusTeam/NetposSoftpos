.class final Ljava9/util/LBDSpliterator;
.super Ljava/lang/Object;
.source "LBDSpliterator.java"

# interfaces
.implements Ljava9/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final FIRST_OFF:J

.field private static final LOCK_OFF:J

.field private static final MAX_BATCH:I = 0x2000000

.field private static final NODE_ITEM_OFF:J

.field private static final NODE_NEXT_OFF:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private batch:I

.field private current:Ljava/lang/Object;

.field private est:J

.field private exhausted:Z

.field private final queue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final queueLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 199
    sget-object v0, Ljava9/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava9/util/LBDSpliterator;->U:Lsun/misc/Unsafe;

    .line 206
    :try_start_0
    const-string v1, "java.util.concurrent.LinkedBlockingDeque$Node"

    .line 207
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 208
    .local v1, "nc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/util/concurrent/LinkedBlockingDeque;

    const-string v3, "first"

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 208
    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava9/util/LBDSpliterator;->FIRST_OFF:J

    .line 210
    const-class v2, Ljava/util/concurrent/LinkedBlockingDeque;

    const-string v3, "lock"

    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 210
    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava9/util/LBDSpliterator;->LOCK_OFF:J

    .line 212
    const-string v2, "item"

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 212
    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava9/util/LBDSpliterator;->NODE_ITEM_OFF:J

    .line 214
    const-string v2, "next"

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 214
    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava9/util/LBDSpliterator;->NODE_NEXT_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v1    # "nc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 219
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Ljava/util/concurrent/LinkedBlockingDeque;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "TE;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Ljava9/util/LBDSpliterator;, "Ljava9/util/LBDSpliterator<TE;>;"
    .local p1, "queue":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Ljava9/util/LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 41
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava9/util/LBDSpliterator;->est:J

    .line 42
    invoke-static {p1}, Ljava9/util/LBDSpliterator;->getQueueLock(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/LBDSpliterator;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    return-void
.end method

.method private static getNextNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "node"    # Ljava/lang/Object;

    .line 188
    sget-object v0, Ljava9/util/LBDSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LBDSpliterator;->NODE_NEXT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 195
    sget-object v0, Ljava9/util/LBDSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LBDSpliterator;->NODE_ITEM_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getQueueFirst(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 181
    .local p0, "queue":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<*>;"
    sget-object v0, Ljava9/util/LBDSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LBDSpliterator;->FIRST_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getQueueLock(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "*>;)",
            "Ljava/util/concurrent/locks/ReentrantLock;"
        }
    .end annotation

    .line 177
    .local p0, "queue":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<*>;"
    sget-object v0, Ljava9/util/LBDSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LBDSpliterator;->LOCK_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static spliterator(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava9/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "TT;>;)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 46
    .local p0, "queue":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TT;>;"
    new-instance v0, Ljava9/util/LBDSpliterator;

    invoke-direct {v0, p0}, Ljava9/util/LBDSpliterator;-><init>(Ljava/util/concurrent/LinkedBlockingDeque;)V

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 55
    .local p0, "this":Ljava9/util/LBDSpliterator;, "Ljava9/util/LBDSpliterator<TE;>;"
    const/16 v0, 0x1110

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 62
    .local p0, "this":Ljava9/util/LBDSpliterator;, "Ljava9/util/LBDSpliterator<TE;>;"
    iget-wide v0, p0, Ljava9/util/LBDSpliterator;->est:J

    return-wide v0
.end method

.method forEachFrom(Ljava9/util/function/Consumer;Ljava/lang/Object;)V
    .locals 7
    .param p2, "p"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 148
    .local p0, "this":Ljava9/util/LBDSpliterator;, "Ljava9/util/LBDSpliterator<TE;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Ljava9/util/LBDSpliterator;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 149
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    const/16 v1, 0x40

    .line 150
    .local v1, "batchSize":I
    const/4 v2, 0x0

    .line 151
    .local v2, "es":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "len":I
    const/4 v4, 0x0

    .line 153
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 155
    if-nez v2, :cond_4

    .line 156
    if-nez p2, :cond_1

    :try_start_0
    iget-object v5, p0, Ljava9/util/LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-static {v5}, Ljava9/util/LBDSpliterator;->getQueueFirst(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava/lang/Object;

    move-result-object v5

    move-object p2, v5

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v5

    .local v4, "n":I
    goto :goto_4

    .line 157
    .end local v4    # "n":I
    :cond_1
    :goto_0
    move-object v5, p2

    .local v5, "q":Ljava/lang/Object;
    :goto_1
    if-eqz v5, :cond_3

    .line 158
    invoke-static {v5}, Ljava9/util/LBDSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x40

    if-ne v3, v6, :cond_2

    .line 159
    goto :goto_2

    .line 157
    :cond_2
    invoke-virtual {p0, v5}, Ljava9/util/LBDSpliterator;->succ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    goto :goto_1

    .line 160
    .end local v5    # "q":Ljava/lang/Object;
    :cond_3
    :goto_2
    new-array v4, v3, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    .line 162
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "n":I
    :goto_3
    if-eqz p2, :cond_6

    if-ge v4, v3, :cond_6

    .line 163
    :try_start_1
    invoke-static {p2}, Ljava9/util/LBDSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    if-eqz v5, :cond_5

    .line 164
    add-int/lit8 v4, v4, 0x1

    .line 162
    :cond_5
    invoke-virtual {p0, p2}, Ljava9/util/LBDSpliterator;->succ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p2, v5

    goto :goto_3

    .line 167
    :catchall_1
    move-exception v5

    :goto_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 168
    nop

    .line 169
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v4, :cond_7

    .line 170
    aget-object v6, v2, v5

    .line 171
    .local v6, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v6}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 169
    .end local v6    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 173
    .end local v5    # "i":I
    :cond_7
    if-lez v4, :cond_8

    if-nez p2, :cond_0

    .line 174
    :cond_8
    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Ljava9/util/LBDSpliterator;, "Ljava9/util/LBDSpliterator<TE;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-boolean v0, p0, Ljava9/util/LBDSpliterator;->exhausted:Z

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/LBDSpliterator;->exhausted:Z

    .line 70
    iget-object v0, p0, Ljava9/util/LBDSpliterator;->current:Ljava/lang/Object;

    .line 71
    .local v0, "p":Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava9/util/LBDSpliterator;->current:Ljava/lang/Object;

    .line 72
    invoke-virtual {p0, p1, v0}, Ljava9/util/LBDSpliterator;->forEachFrom(Ljava9/util/function/Consumer;Ljava/lang/Object;)V

    .line 74
    .end local v0    # "p":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method succ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Ljava/lang/Object;

    .line 50
    .local p0, "this":Ljava9/util/LBDSpliterator;, "Ljava9/util/LBDSpliterator<TE;>;"
    invoke-static {p1}, Ljava9/util/LBDSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .end local p1    # "p":Ljava/lang/Object;
    .local v1, "p":Ljava/lang/Object;
    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ljava9/util/LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-static {p1}, Ljava9/util/LBDSpliterator;->getQueueFirst(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 78
    .local p0, "this":Ljava9/util/LBDSpliterator;, "Ljava9/util/LBDSpliterator<TE;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-boolean v0, p0, Ljava9/util/LBDSpliterator;->exhausted:Z

    if-nez v0, :cond_3

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava9/util/LBDSpliterator;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 82
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 85
    :try_start_0
    iget-object v2, p0, Ljava9/util/LBDSpliterator;->current:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "p":Ljava/lang/Object;
    if-nez v2, :cond_0

    iget-object v2, p0, Ljava9/util/LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-static {v2}, Ljava9/util/LBDSpliterator;->getQueueFirst(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_1

    .line 87
    :cond_0
    invoke-static {v3}, Ljava9/util/LBDSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 88
    invoke-virtual {p0, v3}, Ljava9/util/LBDSpliterator;->succ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .line 89
    if-nez v0, :cond_1

    if-nez v3, :cond_0

    .line 90
    :cond_1
    iput-object v3, p0, Ljava9/util/LBDSpliterator;->current:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v3, :cond_2

    .line 91
    iput-boolean v2, p0, Ljava9/util/LBDSpliterator;->exhausted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v3    # "p":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    nop

    .line 96
    if-eqz v0, :cond_3

    .line 97
    invoke-interface {p1, v0}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 98
    return v2

    .line 94
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 101
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljava9/util/Spliterator;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 107
    .local p0, "this":Ljava9/util/LBDSpliterator;, "Ljava9/util/LBDSpliterator<TE;>;"
    iget-object v0, p0, Ljava9/util/LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 108
    .local v0, "q":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-boolean v1, p0, Ljava9/util/LBDSpliterator;->exhausted:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Ljava9/util/LBDSpliterator;->current:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "h":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 109
    invoke-static {v0}, Ljava9/util/LBDSpliterator;->getQueueFirst(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_6

    .line 110
    :cond_0
    invoke-static {v2}, Ljava9/util/LBDSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 111
    iget v1, p0, Ljava9/util/LBDSpliterator;->batch:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/high16 v4, 0x2000000

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Ljava9/util/LBDSpliterator;->batch:I

    .line 112
    .local v1, "n":I
    new-array v4, v1, [Ljava/lang/Object;

    .line 113
    .local v4, "a":[Ljava/lang/Object;
    iget-object v5, p0, Ljava9/util/LBDSpliterator;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 114
    .local v5, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v6, 0x0

    .line 115
    .local v6, "i":I
    iget-object v7, p0, Ljava9/util/LBDSpliterator;->current:Ljava/lang/Object;

    .line 116
    .local v7, "p":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 118
    if-nez v7, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava9/util/LBDSpliterator;->getQueueFirst(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    if-eqz v8, :cond_3

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 119
    :cond_1
    :goto_0
    if-eqz v7, :cond_3

    if-ge v6, v1, :cond_3

    .line 120
    invoke-static {v7}, Ljava9/util/LBDSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v6

    if-eqz v8, :cond_2

    .line 121
    add-int/lit8 v6, v6, 0x1

    .line 119
    :cond_2
    invoke-virtual {p0, v7}, Ljava9/util/LBDSpliterator;->succ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v8

    goto :goto_0

    .line 124
    :goto_1
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    :cond_3
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 125
    nop

    .line 126
    iput-object v7, p0, Ljava9/util/LBDSpliterator;->current:Ljava/lang/Object;

    const-wide/16 v8, 0x0

    if-nez v7, :cond_4

    .line 127
    iput-wide v8, p0, Ljava9/util/LBDSpliterator;->est:J

    .line 128
    iput-boolean v3, p0, Ljava9/util/LBDSpliterator;->exhausted:Z

    goto :goto_2

    .line 130
    :cond_4
    iget-wide v10, p0, Ljava9/util/LBDSpliterator;->est:J

    int-to-long v12, v6

    sub-long/2addr v10, v12

    iput-wide v10, p0, Ljava9/util/LBDSpliterator;->est:J

    cmp-long v3, v10, v8

    if-gez v3, :cond_5

    .line 131
    iput-wide v8, p0, Ljava9/util/LBDSpliterator;->est:J

    .line 132
    :cond_5
    :goto_2
    if-lez v6, :cond_6

    .line 133
    const/4 v3, 0x0

    const/16 v8, 0x1110

    .line 134
    invoke-static {v4, v3, v6, v8}, Ljava9/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava9/util/Spliterator;

    move-result-object v3

    return-object v3

    .line 138
    .end local v1    # "n":I
    .end local v2    # "h":Ljava/lang/Object;
    .end local v4    # "a":[Ljava/lang/Object;
    .end local v5    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "i":I
    .end local v7    # "p":Ljava/lang/Object;
    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method
