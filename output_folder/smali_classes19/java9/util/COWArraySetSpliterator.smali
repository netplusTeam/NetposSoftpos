.class final Ljava9/util/COWArraySetSpliterator;
.super Ljava/lang/Object;
.source "COWArraySetSpliterator.java"


# static fields
.field private static final COW_ARRAY_OFF:J

.field private static final U:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    sget-object v0, Ljava9/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava9/util/COWArraySetSpliterator;->U:Lsun/misc/Unsafe;

    .line 53
    :try_start_0
    const-class v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    const-string v2, "al"

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava9/util/COWArraySetSpliterator;->COW_ARRAY_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    nop

    .line 58
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static getCowArrayList(Ljava/util/concurrent/CopyOnWriteArraySet;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "TT;>;)",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 45
    .local p0, "set":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TT;>;"
    sget-object v0, Ljava9/util/COWArraySetSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/COWArraySetSpliterator;->COW_ARRAY_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static spliterator(Ljava/util/concurrent/CopyOnWriteArraySet;)Ljava9/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "TT;>;)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 37
    .local p0, "set":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TT;>;"
    nop

    .line 38
    invoke-static {p0}, Ljava9/util/COWArraySetSpliterator;->getCowArrayList(Ljava/util/concurrent/CopyOnWriteArraySet;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava9/util/COWArrayListSpliterator;->getArray(Ljava/util/concurrent/CopyOnWriteArrayList;)[Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "array":[Ljava/lang/Object;
    const/16 v1, 0x401

    invoke-static {v0, v1}, Ljava9/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava9/util/Spliterator;

    move-result-object v1

    return-object v1
.end method
