.class final Ljava9/util/ArrayListSpliterator;
.super Ljava/lang/Object;
.source "ArrayListSpliterator.java"

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
.field private static final DATA_OFF:J

.field private static final MODCOUNT_OFF:J

.field private static final SIZE_OFF:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private expectedModCount:I

.field private fence:I

.field private index:I

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 174
    sget-object v0, Ljava9/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava9/util/ArrayListSpliterator;->U:Lsun/misc/Unsafe;

    .line 180
    :try_start_0
    const-class v1, Ljava/util/AbstractList;

    const-string v2, "modCount"

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava9/util/ArrayListSpliterator;->MODCOUNT_OFF:J

    .line 182
    const-class v1, Ljava/util/ArrayList;

    const-string v2, "size"

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava9/util/ArrayListSpliterator;->SIZE_OFF:J

    .line 184
    sget-boolean v1, Ljava9/util/Spliterators;->IS_HARMONY_ANDROID:Z

    if-eqz v1, :cond_0

    const-string v1, "array"

    goto :goto_0

    :cond_0
    const-string v1, "elementData"

    .line 186
    .local v1, "arrayFieldName":Ljava/lang/String;
    :goto_0
    const-class v2, Ljava/util/ArrayList;

    .line 187
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 186
    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava9/util/ArrayListSpliterator;->DATA_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "arrayFieldName":Ljava/lang/String;
    nop

    .line 191
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Ljava/util/ArrayList;III)V
    .locals 0
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TE;>;III)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Ljava9/util/ArrayListSpliterator;, "Ljava9/util/ArrayListSpliterator<TE;>;"
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Ljava9/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    .line 81
    iput p2, p0, Ljava9/util/ArrayListSpliterator;->index:I

    .line 82
    iput p3, p0, Ljava9/util/ArrayListSpliterator;->fence:I

    .line 83
    iput p4, p0, Ljava9/util/ArrayListSpliterator;->expectedModCount:I

    .line 84
    return-void
.end method

.method private static getData(Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 170
    .local p0, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    sget-object v0, Ljava9/util/ArrayListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/ArrayListSpliterator;->DATA_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private getFence()I
    .locals 3

    .line 92
    .local p0, "this":Ljava9/util/ArrayListSpliterator;, "Ljava9/util/ArrayListSpliterator<TE;>;"
    iget v0, p0, Ljava9/util/ArrayListSpliterator;->fence:I

    move v1, v0

    .local v1, "hi":I
    if-gez v0, :cond_0

    .line 93
    iget-object v0, p0, Ljava9/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    .line 94
    .local v0, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-static {v0}, Ljava9/util/ArrayListSpliterator;->getModCount(Ljava/util/ArrayList;)I

    move-result v2

    iput v2, p0, Ljava9/util/ArrayListSpliterator;->expectedModCount:I

    .line 95
    invoke-static {v0}, Ljava9/util/ArrayListSpliterator;->getSize(Ljava/util/ArrayList;)I

    move-result v2

    iput v2, p0, Ljava9/util/ArrayListSpliterator;->fence:I

    move v1, v2

    .line 97
    .end local v0    # "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :cond_0
    return v1
.end method

.method private static getModCount(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)I"
        }
    .end annotation

    .line 166
    .local p0, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    sget-object v0, Ljava9/util/ArrayListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/ArrayListSpliterator;->MODCOUNT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method private static getSize(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)I"
        }
    .end annotation

    .line 162
    .local p0, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    sget-object v0, Ljava9/util/ArrayListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/ArrayListSpliterator;->SIZE_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static spliterator(Ljava/util/ArrayList;)Ljava9/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 87
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    new-instance v0, Ljava9/util/ArrayListSpliterator;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v1}, Ljava9/util/ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 158
    .local p0, "this":Ljava9/util/ArrayListSpliterator;, "Ljava9/util/ArrayListSpliterator<TE;>;"
    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 153
    .local p0, "this":Ljava9/util/ArrayListSpliterator;, "Ljava9/util/ArrayListSpliterator<TE;>;"
    invoke-direct {p0}, Ljava9/util/ArrayListSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava9/util/ArrayListSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 126
    .local p0, "this":Ljava9/util/ArrayListSpliterator;, "Ljava9/util/ArrayListSpliterator<TE;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Ljava9/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    .line 130
    .local v0, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-static {v0}, Ljava9/util/ArrayListSpliterator;->getData(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "a":[Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 131
    iget v1, p0, Ljava9/util/ArrayListSpliterator;->fence:I

    move v3, v1

    .local v3, "hi":I
    if-gez v1, :cond_0

    .line 132
    invoke-static {v0}, Ljava9/util/ArrayListSpliterator;->getModCount(Ljava/util/ArrayList;)I

    move-result v1

    .line 133
    .local v1, "mc":I
    invoke-static {v0}, Ljava9/util/ArrayListSpliterator;->getSize(Ljava/util/ArrayList;)I

    move-result v3

    goto :goto_0

    .line 136
    .end local v1    # "mc":I
    :cond_0
    iget v1, p0, Ljava9/util/ArrayListSpliterator;->expectedModCount:I

    .line 138
    .restart local v1    # "mc":I
    :goto_0
    iget v4, p0, Ljava9/util/ArrayListSpliterator;->index:I

    move v5, v4

    .local v5, "i":I
    if-ltz v4, :cond_2

    iput v3, p0, Ljava9/util/ArrayListSpliterator;->index:I

    array-length v4, v2

    if-gt v3, v4, :cond_2

    .line 139
    :goto_1
    if-ge v5, v3, :cond_1

    .line 140
    aget-object v4, v2, v5

    .line 141
    .local v4, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v4}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 139
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 143
    :cond_1
    invoke-static {v0}, Ljava9/util/ArrayListSpliterator;->getModCount(Ljava/util/ArrayList;)I

    move-result v4

    if-ne v1, v4, :cond_2

    .line 144
    return-void

    .line 148
    .end local v1    # "mc":I
    .end local v3    # "hi":I
    .end local v5    # "i":I
    :cond_2
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 110
    .local p0, "this":Ljava9/util/ArrayListSpliterator;, "Ljava9/util/ArrayListSpliterator<TE;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-direct {p0}, Ljava9/util/ArrayListSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava9/util/ArrayListSpliterator;->index:I

    .line 112
    .local v1, "i":I
    if-ge v1, v0, :cond_1

    .line 113
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava9/util/ArrayListSpliterator;->index:I

    .line 114
    iget-object v2, p0, Ljava9/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava9/util/ArrayListSpliterator;->getData(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    .line 115
    .local v2, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v2}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 116
    iget v3, p0, Ljava9/util/ArrayListSpliterator;->expectedModCount:I

    iget-object v4, p0, Ljava9/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava9/util/ArrayListSpliterator;->getModCount(Ljava/util/ArrayList;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 119
    const/4 v3, 0x1

    return v3

    .line 117
    :cond_0
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 121
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public trySplit()Ljava9/util/ArrayListSpliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/ArrayListSpliterator<",
            "TE;>;"
        }
    .end annotation

    .line 102
    .local p0, "this":Ljava9/util/ArrayListSpliterator;, "Ljava9/util/ArrayListSpliterator<TE;>;"
    invoke-direct {p0}, Ljava9/util/ArrayListSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava9/util/ArrayListSpliterator;->index:I

    .local v1, "lo":I
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 103
    .local v2, "mid":I
    if-lt v1, v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava9/util/ArrayListSpliterator;

    iget-object v4, p0, Ljava9/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    iput v2, p0, Ljava9/util/ArrayListSpliterator;->index:I

    iget v5, p0, Ljava9/util/ArrayListSpliterator;->expectedModCount:I

    invoke-direct {v3, v4, v1, v2, v5}, Ljava9/util/ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    :goto_0
    return-object v3
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 38
    .local p0, "this":Ljava9/util/ArrayListSpliterator;, "Ljava9/util/ArrayListSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava9/util/ArrayListSpliterator;->trySplit()Ljava9/util/ArrayListSpliterator;

    move-result-object v0

    return-object v0
.end method
