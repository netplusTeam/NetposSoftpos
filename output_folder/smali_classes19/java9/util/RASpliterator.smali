.class final Ljava9/util/RASpliterator;
.super Ljava/lang/Object;
.source "RASpliterator.java"

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
.field private static final MODCOUNT_OFF:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private final alist:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private expectedModCount:I

.field private fence:I

.field private index:I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 137
    sget-object v0, Ljava9/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava9/util/RASpliterator;->U:Lsun/misc/Unsafe;

    .line 141
    :try_start_0
    const-class v1, Ljava/util/AbstractList;

    const-string v2, "modCount"

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava9/util/RASpliterator;->MODCOUNT_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    nop

    .line 146
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Ljava/util/List;III)V
    .locals 1
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;III)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Ljava9/util/RASpliterator;, "Ljava9/util/RASpliterator<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Ljava9/util/RASpliterator;->list:Ljava/util/List;

    .line 58
    iput p2, p0, Ljava9/util/RASpliterator;->index:I

    .line 59
    iput p3, p0, Ljava9/util/RASpliterator;->fence:I

    .line 61
    instance-of v0, p1, Ljava/util/AbstractList;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/AbstractList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljava9/util/RASpliterator;->alist:Ljava/util/AbstractList;

    .line 63
    iput p4, p0, Ljava9/util/RASpliterator;->expectedModCount:I

    .line 64
    return-void
.end method

.method private static checkAbsListModCount(Ljava/util/AbstractList;I)V
    .locals 1
    .param p1, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList<",
            "*>;I)V"
        }
    .end annotation

    .line 127
    .local p0, "alist":Ljava/util/AbstractList;, "Ljava/util/AbstractList<*>;"
    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava9/util/RASpliterator;->getModCount(Ljava/util/List;)I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 130
    :cond_1
    :goto_0
    return-void
.end method

.method private getFence()I
    .locals 3

    .line 72
    .local p0, "this":Ljava9/util/RASpliterator;, "Ljava9/util/RASpliterator<TE;>;"
    iget-object v0, p0, Ljava9/util/RASpliterator;->list:Ljava/util/List;

    .line 73
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget v1, p0, Ljava9/util/RASpliterator;->fence:I

    move v2, v1

    .local v2, "hi":I
    if-gez v1, :cond_1

    .line 74
    iget-object v1, p0, Ljava9/util/RASpliterator;->alist:Ljava/util/AbstractList;

    if-eqz v1, :cond_0

    .line 75
    invoke-static {v1}, Ljava9/util/RASpliterator;->getModCount(Ljava/util/List;)I

    move-result v1

    iput v1, p0, Ljava9/util/RASpliterator;->expectedModCount:I

    .line 77
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Ljava9/util/RASpliterator;->fence:I

    move v2, v1

    .line 79
    :cond_1
    return v2
.end method

.method private static getModCount(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)I"
        }
    .end annotation

    .line 133
    .local p0, "lst":Ljava/util/List;, "Ljava/util/List<TT;>;"
    sget-object v0, Ljava9/util/RASpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/RASpliterator;->MODCOUNT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static spliterator(Ljava/util/List;)Ljava9/util/Spliterator;
    .locals 3
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

    .line 67
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava9/util/RASpliterator;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v1}, Ljava9/util/RASpliterator;-><init>(Ljava/util/List;III)V

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 123
    .local p0, "this":Ljava9/util/RASpliterator;, "Ljava9/util/RASpliterator<TE;>;"
    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 119
    .local p0, "this":Ljava9/util/RASpliterator;, "Ljava9/util/RASpliterator<TE;>;"
    invoke-direct {p0}, Ljava9/util/RASpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava9/util/RASpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Ljava9/util/RASpliterator;, "Ljava9/util/RASpliterator<TE;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Ljava9/util/RASpliterator;->list:Ljava/util/List;

    .line 104
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava9/util/RASpliterator;->getFence()I

    move-result v1

    .line 105
    .local v1, "hi":I
    iget v2, p0, Ljava9/util/RASpliterator;->index:I

    .line 106
    .local v2, "i":I
    iput v1, p0, Ljava9/util/RASpliterator;->index:I

    .line 108
    :goto_0
    if-ge v2, v1, :cond_0

    .line 109
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 114
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    nop

    .line 115
    iget-object v3, p0, Ljava9/util/RASpliterator;->alist:Ljava/util/AbstractList;

    iget v4, p0, Ljava9/util/RASpliterator;->expectedModCount:I

    invoke-static {v3, v4}, Ljava9/util/RASpliterator;->checkAbsListModCount(Ljava/util/AbstractList;I)V

    .line 116
    return-void
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

    .line 90
    .local p0, "this":Ljava9/util/RASpliterator;, "Ljava9/util/RASpliterator<TE;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-direct {p0}, Ljava9/util/RASpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava9/util/RASpliterator;->index:I

    .line 92
    .local v1, "i":I
    if-ge v1, v0, :cond_0

    .line 93
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava9/util/RASpliterator;->index:I

    .line 94
    iget-object v2, p0, Ljava9/util/RASpliterator;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 95
    iget-object v2, p0, Ljava9/util/RASpliterator;->alist:Ljava/util/AbstractList;

    iget v3, p0, Ljava9/util/RASpliterator;->expectedModCount:I

    invoke-static {v2, v3}, Ljava9/util/RASpliterator;->checkAbsListModCount(Ljava/util/AbstractList;I)V

    .line 96
    const/4 v2, 0x1

    return v2

    .line 98
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public trySplit()Ljava9/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 83
    .local p0, "this":Ljava9/util/RASpliterator;, "Ljava9/util/RASpliterator<TE;>;"
    invoke-direct {p0}, Ljava9/util/RASpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava9/util/RASpliterator;->index:I

    .local v1, "lo":I
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 84
    .local v2, "mid":I
    if-lt v1, v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava9/util/RASpliterator;

    iget-object v4, p0, Ljava9/util/RASpliterator;->list:Ljava/util/List;

    iput v2, p0, Ljava9/util/RASpliterator;->index:I

    iget v5, p0, Ljava9/util/RASpliterator;->expectedModCount:I

    invoke-direct {v3, v4, v1, v2, v5}, Ljava9/util/RASpliterator;-><init>(Ljava/util/List;III)V

    :goto_0
    return-object v3
.end method
