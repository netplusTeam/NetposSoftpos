.class final Ljava9/util/LBQSpliterator;
.super Ljava/lang/Object;
.source "LBQSpliterator.java"

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
.field private static final HEAD_OFF:J

.field private static final MAX_BATCH:I = 0x2000000

.field private static final NODE_ITEM_OFF:J

.field private static final NODE_NEXT_OFF:J

.field private static final PUT_LOCK_OFF:J

.field private static final TAKE_LOCK_OFF:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private batch:I

.field private current:Ljava/lang/Object;

.field private est:J

.field private exhausted:Z

.field private final putLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final takeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 217
    sget-object v0, Ljava9/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava9/util/LBQSpliterator;->U:Lsun/misc/Unsafe;

    .line 225
    :try_start_0
    const-string v1, "java.util.concurrent.LinkedBlockingQueue$Node"

    .line 226
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 227
    .local v1, "nc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/util/concurrent/LinkedBlockingQueue;

    const-string v3, "head"

    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 227
    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava9/util/LBQSpliterator;->HEAD_OFF:J

    .line 229
    const-string v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava9/util/LBQSpliterator;->NODE_ITEM_OFF:J

    .line 230
    const-string v2, "next"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava9/util/LBQSpliterator;->NODE_NEXT_OFF:J

    .line 231
    const-class v2, Ljava/util/concurrent/LinkedBlockingQueue;

    const-string v3, "putLock"

    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 231
    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava9/util/LBQSpliterator;->PUT_LOCK_OFF:J

    .line 233
    const-class v2, Ljava/util/concurrent/LinkedBlockingQueue;

    const-string v3, "takeLock"

    .line 234
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 233
    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava9/util/LBQSpliterator;->TAKE_LOCK_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v1    # "nc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 238
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "TE;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Ljava9/util/LBQSpliterator;, "Ljava9/util/LBQSpliterator<TE;>;"
    .local p1, "queue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Ljava9/util/LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 41
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava9/util/LBQSpliterator;->est:J

    .line 42
    invoke-static {p1}, Ljava9/util/LBQSpliterator;->getPutLock(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/LBQSpliterator;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    invoke-static {p1}, Ljava9/util/LBQSpliterator;->getTakeLock(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/LBQSpliterator;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 44
    return-void
.end method

.method private fullyLock()V
    .locals 1

    .line 175
    .local p0, "this":Ljava9/util/LBQSpliterator;, "Ljava9/util/LBQSpliterator<TE;>;"
    iget-object v0, p0, Ljava9/util/LBQSpliterator;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 176
    iget-object v0, p0, Ljava9/util/LBQSpliterator;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 177
    return-void
.end method

.method private fullyUnlock()V
    .locals 1

    .line 183
    .local p0, "this":Ljava9/util/LBQSpliterator;, "Ljava9/util/LBQSpliterator<TE;>;"
    iget-object v0, p0, Ljava9/util/LBQSpliterator;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 184
    iget-object v0, p0, Ljava9/util/LBQSpliterator;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 185
    return-void
.end method

.method private static getHeadNext(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 199
    .local p0, "queue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TT;>;"
    sget-object v0, Ljava9/util/LBQSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LBQSpliterator;->HEAD_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava9/util/LBQSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getNextNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "node"    # Ljava/lang/Object;

    .line 206
    sget-object v0, Ljava9/util/LBQSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LBQSpliterator;->NODE_NEXT_OFF:J

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

    .line 213
    sget-object v0, Ljava9/util/LBQSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LBQSpliterator;->NODE_ITEM_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getPutLock(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "*>;)",
            "Ljava/util/concurrent/locks/ReentrantLock;"
        }
    .end annotation

    .line 188
    .local p0, "queue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<*>;"
    sget-object v0, Ljava9/util/LBQSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LBQSpliterator;->PUT_LOCK_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private static getTakeLock(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "*>;)",
            "Ljava/util/concurrent/locks/ReentrantLock;"
        }
    .end annotation

    .line 192
    .local p0, "queue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<*>;"
    sget-object v0, Ljava9/util/LBQSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LBQSpliterator;->TAKE_LOCK_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static spliterator(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava9/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "TT;>;)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 47
    .local p0, "queue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TT;>;"
    new-instance v0, Ljava9/util/LBQSpliterator;

    invoke-direct {v0, p0}, Ljava9/util/LBQSpliterator;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 56
    .local p0, "this":Ljava9/util/LBQSpliterator;, "Ljava9/util/LBQSpliterator<TE;>;"
    const/16 v0, 0x1110

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 63
    .local p0, "this":Ljava9/util/LBQSpliterator;, "Ljava9/util/LBQSpliterator<TE;>;"
    iget-wide v0, p0, Ljava9/util/LBQSpliterator;->est:J

    return-wide v0
.end method

.method forEachFrom(Ljava9/util/function/Consumer;Ljava/lang/Object;)V
    .locals 6
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

    .line 145
    .local p0, "this":Ljava9/util/LBQSpliterator;, "Ljava9/util/LBQSpliterator<TE;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    const/16 v0, 0x40

    .line 146
    .local v0, "batchSize":I
    const/4 v1, 0x0

    .line 147
    .local v1, "es":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "len":I
    const/4 v3, 0x0

    .line 149
    :cond_0
    invoke-direct {p0}, Ljava9/util/LBQSpliterator;->fullyLock()V

    .line 151
    if-nez v1, :cond_4

    .line 152
    if-nez p2, :cond_1

    :try_start_0
    iget-object v4, p0, Ljava9/util/LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v4}, Ljava9/util/LBQSpliterator;->getHeadNext(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/lang/Object;

    move-result-object v4

    move-object p2, v4

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v4

    .local v3, "n":I
    goto :goto_4

    .line 153
    .end local v3    # "n":I
    :cond_1
    :goto_0
    move-object v4, p2

    .local v4, "q":Ljava/lang/Object;
    :goto_1
    if-eqz v4, :cond_3

    .line 154
    invoke-static {v4}, Ljava9/util/LBQSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x40

    if-ne v2, v5, :cond_2

    .line 155
    goto :goto_2

    .line 153
    :cond_2
    invoke-virtual {p0, v4}, Ljava9/util/LBQSpliterator;->succ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 156
    .end local v4    # "q":Ljava/lang/Object;
    :cond_3
    :goto_2
    new-array v3, v2, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 158
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "n":I
    :goto_3
    if-eqz p2, :cond_6

    if-ge v3, v2, :cond_6

    .line 159
    :try_start_1
    invoke-static {p2}, Ljava9/util/LBQSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    if-eqz v4, :cond_5

    .line 160
    add-int/lit8 v3, v3, 0x1

    .line 158
    :cond_5
    invoke-virtual {p0, p2}, Ljava9/util/LBQSpliterator;->succ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p2, v4

    goto :goto_3

    .line 162
    :catchall_1
    move-exception v4

    :goto_4
    invoke-direct {p0}, Ljava9/util/LBQSpliterator;->fullyUnlock()V

    throw v4

    :cond_6
    invoke-direct {p0}, Ljava9/util/LBQSpliterator;->fullyUnlock()V

    .line 163
    nop

    .line 164
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v3, :cond_7

    .line 165
    aget-object v5, v1, v4

    .line 166
    .local v5, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v5}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 164
    .end local v5    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 168
    .end local v4    # "i":I
    :cond_7
    if-lez v3, :cond_8

    if-nez p2, :cond_0

    .line 169
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

    .line 68
    .local p0, "this":Ljava9/util/LBQSpliterator;, "Ljava9/util/LBQSpliterator<TE;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-boolean v0, p0, Ljava9/util/LBQSpliterator;->exhausted:Z

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/LBQSpliterator;->exhausted:Z

    .line 71
    iget-object v0, p0, Ljava9/util/LBQSpliterator;->current:Ljava/lang/Object;

    .line 72
    .local v0, "p":Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava9/util/LBQSpliterator;->current:Ljava/lang/Object;

    .line 73
    invoke-virtual {p0, p1, v0}, Ljava9/util/LBQSpliterator;->forEachFrom(Ljava9/util/function/Consumer;Ljava/lang/Object;)V

    .line 75
    .end local v0    # "p":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method succ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Ljava/lang/Object;

    .line 51
    .local p0, "this":Ljava9/util/LBQSpliterator;, "Ljava9/util/LBQSpliterator<TE;>;"
    invoke-static {p1}, Ljava9/util/LBQSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .end local p1    # "p":Ljava/lang/Object;
    .local v1, "p":Ljava/lang/Object;
    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ljava9/util/LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {p1}, Ljava9/util/LBQSpliterator;->getHeadNext(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 79
    .local p0, "this":Ljava9/util/LBQSpliterator;, "Ljava9/util/LBQSpliterator<TE;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-boolean v0, p0, Ljava9/util/LBQSpliterator;->exhausted:Z

    if-nez v0, :cond_3

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava9/util/LBQSpliterator;->fullyLock()V

    .line 85
    :try_start_0
    iget-object v1, p0, Ljava9/util/LBQSpliterator;->current:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "p":Ljava/lang/Object;
    if-nez v1, :cond_0

    iget-object v1, p0, Ljava9/util/LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v1}, Ljava9/util/LBQSpliterator;->getHeadNext(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    invoke-static {v2}, Ljava9/util/LBQSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 88
    invoke-virtual {p0, v2}, Ljava9/util/LBQSpliterator;->succ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 89
    if-nez v0, :cond_1

    if-nez v2, :cond_0

    .line 90
    :cond_1
    iput-object v2, p0, Ljava9/util/LBQSpliterator;->current:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v2, :cond_2

    .line 91
    iput-boolean v1, p0, Ljava9/util/LBQSpliterator;->exhausted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local v2    # "p":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0}, Ljava9/util/LBQSpliterator;->fullyUnlock()V

    .line 94
    nop

    .line 95
    if-eqz v0, :cond_3

    .line 96
    invoke-interface {p1, v0}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 97
    return v1

    .line 93
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Ljava9/util/LBQSpliterator;->fullyUnlock()V

    throw v1

    .line 100
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljava9/util/Spliterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 106
    .local p0, "this":Ljava9/util/LBQSpliterator;, "Ljava9/util/LBQSpliterator<TE;>;"
    iget-object v0, p0, Ljava9/util/LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 107
    .local v0, "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-boolean v1, p0, Ljava9/util/LBQSpliterator;->exhausted:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Ljava9/util/LBQSpliterator;->current:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "h":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 108
    invoke-static {v0}, Ljava9/util/LBQSpliterator;->getHeadNext(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_6

    .line 109
    :cond_0
    invoke-static {v2}, Ljava9/util/LBQSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 110
    iget v1, p0, Ljava9/util/LBQSpliterator;->batch:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/high16 v4, 0x2000000

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Ljava9/util/LBQSpliterator;->batch:I

    .line 111
    .local v1, "n":I
    new-array v4, v1, [Ljava/lang/Object;

    .line 112
    .local v4, "a":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 113
    .local v5, "i":I
    iget-object v6, p0, Ljava9/util/LBQSpliterator;->current:Ljava/lang/Object;

    .line 114
    .local v6, "p":Ljava/lang/Object;
    invoke-direct {p0}, Ljava9/util/LBQSpliterator;->fullyLock()V

    .line 116
    if-nez v6, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava9/util/LBQSpliterator;->getHeadNext(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 117
    :cond_1
    :goto_0
    if-eqz v6, :cond_3

    if-ge v5, v1, :cond_3

    .line 118
    invoke-static {v6}, Ljava9/util/LBQSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v4, v5

    if-eqz v7, :cond_2

    .line 119
    add-int/lit8 v5, v5, 0x1

    .line 117
    :cond_2
    invoke-virtual {p0, v6}, Ljava9/util/LBQSpliterator;->succ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v7

    goto :goto_0

    .line 121
    :goto_1
    invoke-direct {p0}, Ljava9/util/LBQSpliterator;->fullyUnlock()V

    throw v3

    :cond_3
    invoke-direct {p0}, Ljava9/util/LBQSpliterator;->fullyUnlock()V

    .line 122
    nop

    .line 123
    iput-object v6, p0, Ljava9/util/LBQSpliterator;->current:Ljava/lang/Object;

    const-wide/16 v7, 0x0

    if-nez v6, :cond_4

    .line 124
    iput-wide v7, p0, Ljava9/util/LBQSpliterator;->est:J

    .line 125
    iput-boolean v3, p0, Ljava9/util/LBQSpliterator;->exhausted:Z

    goto :goto_2

    .line 127
    :cond_4
    iget-wide v9, p0, Ljava9/util/LBQSpliterator;->est:J

    int-to-long v11, v5

    sub-long/2addr v9, v11

    iput-wide v9, p0, Ljava9/util/LBQSpliterator;->est:J

    cmp-long v3, v9, v7

    if-gez v3, :cond_5

    .line 128
    iput-wide v7, p0, Ljava9/util/LBQSpliterator;->est:J

    .line 129
    :cond_5
    :goto_2
    if-lez v5, :cond_6

    .line 130
    const/4 v3, 0x0

    const/16 v7, 0x1110

    .line 131
    invoke-static {v4, v3, v5, v7}, Ljava9/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava9/util/Spliterator;

    move-result-object v3

    return-object v3

    .line 135
    .end local v1    # "n":I
    .end local v2    # "h":Ljava/lang/Object;
    .end local v4    # "a":[Ljava/lang/Object;
    .end local v5    # "i":I
    .end local v6    # "p":Ljava/lang/Object;
    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method
