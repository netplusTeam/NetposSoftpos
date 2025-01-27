.class final Ljava9/util/LinkedListSpliterator;
.super Ljava/lang/Object;
.source "LinkedListSpliterator.java"

# interfaces
.implements Ljava9/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final BATCH_UNIT:I = 0x400

.field private static final FIRST_OFF:J

.field private static final IS_HARMONY:Z

.field private static final IS_JAVA6:Z

.field private static final MAX_BATCH:I = 0x2000000

.field private static final MODCOUNT_OFF:J

.field private static final NODE_ITEM_OFF:J

.field private static final NODE_NEXT_OFF:J

.field private static final SIZE_OFF:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private batch:I

.field private current:Ljava/lang/Object;

.field private final endOfList:Ljava/lang/Object;

.field private est:I

.field private expectedModCount:I

.field private final list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 189
    sget-boolean v0, Ljava9/util/Spliterators;->IS_HARMONY_ANDROID:Z

    sput-boolean v0, Ljava9/util/LinkedListSpliterator;->IS_HARMONY:Z

    .line 190
    sget-boolean v1, Ljava9/util/Spliterators;->IS_JAVA6:Z

    sput-boolean v1, Ljava9/util/LinkedListSpliterator;->IS_JAVA6:Z

    .line 191
    sget-object v2, Ljava9/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v2, Ljava9/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    .line 199
    :try_start_0
    const-class v3, Ljava/util/AbstractList;

    const-string v4, "modCount"

    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 199
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Ljava9/util/LinkedListSpliterator;->MODCOUNT_OFF:J

    .line 201
    if-eqz v0, :cond_0

    const-string v3, "voidLink"

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string v3, "header"

    goto :goto_0

    :cond_1
    const-string v3, "first"

    .line 203
    .local v3, "firstFieldName":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    const-string v4, "java.util.LinkedList$Link"

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const-string v4, "java.util.LinkedList$Entry"

    goto :goto_1

    :cond_3
    const-string v4, "java.util.LinkedList$Node"

    .line 206
    .local v4, "nodeClassName":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_4

    const-string v0, "data"

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    const-string v0, "element"

    goto :goto_2

    :cond_5
    const-string v0, "item"

    .line 208
    .local v0, "nodeItemName":Ljava/lang/String;
    :goto_2
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 209
    .local v1, "nc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/util/LinkedList;

    const-string v6, "size"

    .line 210
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 209
    invoke-virtual {v2, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    sput-wide v5, Ljava9/util/LinkedListSpliterator;->SIZE_OFF:J

    .line 211
    const-class v5, Ljava/util/LinkedList;

    .line 212
    invoke-virtual {v5, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 211
    invoke-virtual {v2, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    sput-wide v5, Ljava9/util/LinkedListSpliterator;->FIRST_OFF:J

    .line 213
    nop

    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 213
    invoke-virtual {v2, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    sput-wide v5, Ljava9/util/LinkedListSpliterator;->NODE_ITEM_OFF:J

    .line 215
    const-string v5, "next"

    .line 216
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 215
    invoke-virtual {v2, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    sput-wide v5, Ljava9/util/LinkedListSpliterator;->NODE_NEXT_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v0    # "nodeItemName":Ljava/lang/String;
    .end local v1    # "nc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "firstFieldName":Ljava/lang/String;
    .end local v4    # "nodeClassName":Ljava/lang/String;
    nop

    .line 220
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Ljava/util/LinkedList;II)V
    .locals 1
    .param p2, "est"    # I
    .param p3, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "TT;>;II)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Ljava9/util/LinkedListSpliterator;, "Ljava9/util/LinkedListSpliterator<TT;>;"
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ljava9/util/LinkedListSpliterator;->list:Ljava/util/LinkedList;

    .line 52
    iput p2, p0, Ljava9/util/LinkedListSpliterator;->est:I

    .line 53
    iput p3, p0, Ljava9/util/LinkedListSpliterator;->expectedModCount:I

    .line 54
    sget-boolean v0, Ljava9/util/LinkedListSpliterator;->IS_JAVA6:Z

    if-nez v0, :cond_1

    sget-boolean v0, Ljava9/util/LinkedListSpliterator;->IS_HARMONY:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava9/util/LinkedListSpliterator;->getHeader(Ljava/util/LinkedList;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Ljava9/util/LinkedListSpliterator;->endOfList:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method private getEst()I
    .locals 3

    .line 64
    .local p0, "this":Ljava9/util/LinkedListSpliterator;, "Ljava9/util/LinkedListSpliterator<TT;>;"
    iget v0, p0, Ljava9/util/LinkedListSpliterator;->est:I

    move v1, v0

    .local v1, "s":I
    if-gez v0, :cond_1

    .line 65
    iget-object v0, p0, Ljava9/util/LinkedListSpliterator;->list:Ljava/util/LinkedList;

    move-object v2, v0

    .local v2, "lst":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TT;>;"
    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Ljava9/util/LinkedListSpliterator;->est:I

    move v1, v0

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {v2}, Ljava9/util/LinkedListSpliterator;->getModCount(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Ljava9/util/LinkedListSpliterator;->expectedModCount:I

    .line 69
    invoke-direct {p0, v2}, Ljava9/util/LinkedListSpliterator;->getFirst(Ljava/util/LinkedList;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    .line 70
    invoke-static {v2}, Ljava9/util/LinkedListSpliterator;->getSize(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Ljava9/util/LinkedListSpliterator;->est:I

    move v1, v0

    .line 73
    .end local v2    # "lst":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TT;>;"
    :cond_1
    :goto_0
    return v1
.end method

.method private getFirst(Ljava/util/LinkedList;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 158
    .local p0, "this":Ljava9/util/LinkedListSpliterator;, "Ljava9/util/LinkedListSpliterator<TT;>;"
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<*>;"
    sget-boolean v0, Ljava9/util/LinkedListSpliterator;->IS_JAVA6:Z

    if-nez v0, :cond_1

    sget-boolean v0, Ljava9/util/LinkedListSpliterator;->IS_HARMONY:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    sget-object v0, Ljava9/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LinkedListSpliterator;->FIRST_OFF:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 160
    :cond_1
    :goto_0
    iget-object v0, p0, Ljava9/util/LinkedListSpliterator;->endOfList:Ljava/lang/Object;

    invoke-static {v0}, Ljava9/util/LinkedListSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getHeader(Ljava/util/LinkedList;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 151
    .local p0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<*>;"
    if-nez p0, :cond_0

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_0
    sget-object v0, Ljava9/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LinkedListSpliterator;->FIRST_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getModCount(Ljava/util/LinkedList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "*>;)I"
        }
    .end annotation

    .line 185
    .local p0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<*>;"
    sget-object v0, Ljava9/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LinkedListSpliterator;->MODCOUNT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method private static getNextNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "node"    # Ljava/lang/Object;

    .line 167
    if-eqz p0, :cond_0

    .line 170
    sget-object v0, Ljava9/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LinkedListSpliterator;->NODE_NEXT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private static getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 174
    if-eqz p0, :cond_0

    .line 177
    sget-object v0, Ljava9/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LinkedListSpliterator;->NODE_ITEM_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private static getSize(Ljava/util/LinkedList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "*>;)I"
        }
    .end annotation

    .line 181
    .local p0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<*>;"
    sget-object v0, Ljava9/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LinkedListSpliterator;->SIZE_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static spliterator(Ljava/util/LinkedList;)Ljava9/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/LinkedList<",
            "TE;>;)",
            "Ljava9/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 58
    .local p0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava9/util/LinkedListSpliterator;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljava9/util/LinkedListSpliterator;-><init>(Ljava/util/LinkedList;II)V

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 78
    .local p0, "this":Ljava9/util/LinkedListSpliterator;, "Ljava9/util/LinkedListSpliterator<TT;>;"
    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 83
    .local p0, "this":Ljava9/util/LinkedListSpliterator;, "Ljava9/util/LinkedListSpliterator<TT;>;"
    invoke-direct {p0}, Ljava9/util/LinkedListSpliterator;->getEst()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 88
    .local p0, "this":Ljava9/util/LinkedListSpliterator;, "Ljava9/util/LinkedListSpliterator<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Ljava9/util/LinkedListSpliterator;->endOfList:Ljava/lang/Object;

    .line 92
    .local v0, "eol":Ljava/lang/Object;
    invoke-direct {p0}, Ljava9/util/LinkedListSpliterator;->getEst()I

    move-result v1

    move v2, v1

    .local v2, "n":I
    if-lez v1, :cond_1

    iget-object v1, p0, Ljava9/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    move-object v3, v1

    .local v3, "p":Ljava/lang/Object;
    if-eq v1, v0, :cond_1

    .line 93
    iput-object v0, p0, Ljava9/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    .line 94
    const/4 v1, 0x0

    iput v1, p0, Ljava9/util/LinkedListSpliterator;->est:I

    .line 96
    :cond_0
    invoke-static {v3}, Ljava9/util/LinkedListSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, "item":Ljava/lang/Object;, "TT;"
    invoke-static {v3}, Ljava9/util/LinkedListSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 98
    invoke-interface {p1, v1}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 99
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    if-eq v3, v0, :cond_1

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_0

    .line 101
    .end local v3    # "p":Ljava/lang/Object;
    :cond_1
    iget v1, p0, Ljava9/util/LinkedListSpliterator;->expectedModCount:I

    iget-object v3, p0, Ljava9/util/LinkedListSpliterator;->list:Ljava/util/LinkedList;

    invoke-static {v3}, Ljava9/util/LinkedListSpliterator;->getModCount(Ljava/util/LinkedList;)I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 104
    return-void

    .line 102
    :cond_2
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 108
    .local p0, "this":Ljava9/util/LinkedListSpliterator;, "Ljava9/util/LinkedListSpliterator<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Ljava9/util/LinkedListSpliterator;->endOfList:Ljava/lang/Object;

    .line 111
    .local v0, "eol":Ljava/lang/Object;
    invoke-direct {p0}, Ljava9/util/LinkedListSpliterator;->getEst()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Ljava9/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "p":Ljava/lang/Object;
    if-eq v1, v0, :cond_1

    .line 112
    iget v1, p0, Ljava9/util/LinkedListSpliterator;->est:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, p0, Ljava9/util/LinkedListSpliterator;->est:I

    .line 113
    invoke-static {v2}, Ljava9/util/LinkedListSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    .local v1, "item":Ljava/lang/Object;, "TT;"
    invoke-static {v2}, Ljava9/util/LinkedListSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Ljava9/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    .line 115
    invoke-interface {p1, v1}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 116
    iget v4, p0, Ljava9/util/LinkedListSpliterator;->expectedModCount:I

    iget-object v5, p0, Ljava9/util/LinkedListSpliterator;->list:Ljava/util/LinkedList;

    invoke-static {v5}, Ljava9/util/LinkedListSpliterator;->getModCount(Ljava/util/LinkedList;)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 119
    return v3

    .line 117
    :cond_0
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 121
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    .end local v2    # "p":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public trySplit()Ljava9/util/Spliterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 126
    .local p0, "this":Ljava9/util/LinkedListSpliterator;, "Ljava9/util/LinkedListSpliterator<TT;>;"
    iget-object v0, p0, Ljava9/util/LinkedListSpliterator;->endOfList:Ljava/lang/Object;

    .line 128
    .local v0, "eol":Ljava/lang/Object;
    invoke-direct {p0}, Ljava9/util/LinkedListSpliterator;->getEst()I

    move-result v1

    .line 129
    .local v1, "s":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    iget-object v2, p0, Ljava9/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "p":Ljava/lang/Object;
    if-eq v2, v0, :cond_4

    .line 130
    iget v2, p0, Ljava9/util/LinkedListSpliterator;->batch:I

    add-int/lit16 v2, v2, 0x400

    .line 131
    .local v2, "n":I
    if-le v2, v1, :cond_0

    .line 132
    move v2, v1

    .line 134
    :cond_0
    const/high16 v4, 0x2000000

    if-le v2, v4, :cond_1

    .line 135
    const/high16 v2, 0x2000000

    .line 137
    :cond_1
    new-array v4, v2, [Ljava/lang/Object;

    .line 138
    .local v4, "a":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 140
    .local v5, "j":I
    :goto_0
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .local v6, "j":I
    invoke-static {v3}, Ljava9/util/LinkedListSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v4, v5

    .line 141
    invoke-static {v3}, Ljava9/util/LinkedListSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    if-eq v5, v0, :cond_3

    if-lt v6, v2, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_0

    .line 142
    :cond_3
    :goto_1
    iput-object v3, p0, Ljava9/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    .line 143
    iput v6, p0, Ljava9/util/LinkedListSpliterator;->batch:I

    .line 144
    sub-int v5, v1, v6

    iput v5, p0, Ljava9/util/LinkedListSpliterator;->est:I

    .line 145
    const/4 v5, 0x0

    const/16 v7, 0x10

    invoke-static {v4, v5, v6, v7}, Ljava9/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava9/util/Spliterator;

    move-result-object v5

    return-object v5

    .line 147
    .end local v2    # "n":I
    .end local v3    # "p":Ljava/lang/Object;
    .end local v4    # "a":[Ljava/lang/Object;
    .end local v6    # "j":I
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method
