.class final Ljava9/util/ArraysArrayListSpliterator;
.super Ljava/lang/Object;
.source "ArraysArrayListSpliterator.java"


# static fields
.field private static final ARRAY_OFF:J

.field private static final U:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    sget-object v0, Ljava9/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava9/util/ArraysArrayListSpliterator;->U:Lsun/misc/Unsafe;

    .line 50
    :try_start_0
    const-string v1, "java.util.Arrays$ArrayList"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 51
    .local v1, "aal":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava9/util/ArraysArrayListSpliterator;->ARRAY_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1    # "aal":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 55
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static getArray(Ljava/util/List;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 42
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    sget-object v0, Ljava9/util/ArraysArrayListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/ArraysArrayListSpliterator;->ARRAY_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method static spliterator(Ljava/util/List;)Ljava9/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 38
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Ljava9/util/ArraysArrayListSpliterator;->getArray(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava9/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
