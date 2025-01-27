.class Ljava9/util/Spliterators$IteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava9/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IteratorSpliterator"
.end annotation

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
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private final collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private est:J

.field private it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;I)V
    .locals 1
    .param p2, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 2023
    .local p0, "this":Ljava9/util/Spliterators$IteratorSpliterator;, "Ljava9/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2024
    iput-object p1, p0, Ljava9/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    .line 2025
    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 2026
    and-int/lit16 v0, p2, 0x1000

    if-nez v0, :cond_0

    or-int/lit8 v0, p2, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->characteristics:I

    .line 2029
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;I)V
    .locals 2
    .param p2, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 2059
    .local p0, "this":Ljava9/util/Spliterators$IteratorSpliterator;, "Ljava9/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2060
    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    .line 2061
    iput-object p1, p0, Ljava9/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 2062
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->est:J

    .line 2063
    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->characteristics:I

    .line 2064
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;JI)V
    .locals 1
    .param p2, "size"    # J
    .param p4, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;JI)V"
        }
    .end annotation

    .line 2041
    .local p0, "this":Ljava9/util/Spliterators$IteratorSpliterator;, "Ljava9/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2042
    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    .line 2043
    iput-object p1, p0, Ljava9/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 2044
    iput-wide p2, p0, Ljava9/util/Spliterators$IteratorSpliterator;->est:J

    .line 2045
    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_0

    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    iput v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->characteristics:I

    .line 2048
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 2146
    .local p0, "this":Ljava9/util/Spliterators$IteratorSpliterator;, "Ljava9/util/Spliterators$IteratorSpliterator<TT;>;"
    iget v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 2138
    .local p0, "this":Ljava9/util/Spliterators$IteratorSpliterator;, "Ljava9/util/Spliterators$IteratorSpliterator<TT;>;"
    iget-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 2139
    iget-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 2140
    iget-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->est:J

    return-wide v0

    .line 2142
    :cond_0
    iget-wide v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->est:J

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

    .line 2113
    .local p0, "this":Ljava9/util/Spliterators$IteratorSpliterator;, "Ljava9/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2115
    iget-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    move-object v1, v0

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    if-nez v0, :cond_0

    .line 2116
    iget-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    move-object v1, v0

    .line 2117
    iget-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Ljava9/util/Spliterators$IteratorSpliterator;->est:J

    .line 2119
    :cond_0
    invoke-static {v1, p1}, Ljava9/util/Iterators;->forEachRemaining(Ljava/util/Iterator;Ljava9/util/function/Consumer;)V

    .line 2120
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 2150
    .local p0, "this":Ljava9/util/Spliterators$IteratorSpliterator;, "Ljava9/util/Spliterators$IteratorSpliterator<TT;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava9/util/Spliterators$IteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2151
    const/4 v0, 0x0

    return-object v0

    .line 2153
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 2124
    .local p0, "this":Ljava9/util/Spliterators$IteratorSpliterator;, "Ljava9/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2125
    iget-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 2126
    iget-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 2127
    iget-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->est:J

    .line 2129
    :cond_0
    iget-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2130
    iget-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2131
    const/4 v0, 0x1

    return v0

    .line 2133
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljava9/util/Spliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 2083
    .local p0, "this":Ljava9/util/Spliterators$IteratorSpliterator;, "Ljava9/util/Spliterators$IteratorSpliterator<TT;>;"
    iget-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    move-object v1, v0

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    if-nez v0, :cond_0

    .line 2084
    iget-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    move-object v1, v0

    .line 2085
    iget-object v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Ljava9/util/Spliterators$IteratorSpliterator;->est:J

    .local v2, "s":J
    goto :goto_0

    .line 2087
    .end local v2    # "s":J
    :cond_0
    iget-wide v2, p0, Ljava9/util/Spliterators$IteratorSpliterator;->est:J

    .line 2089
    .restart local v2    # "s":J
    :goto_0
    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2090
    iget v0, p0, Ljava9/util/Spliterators$IteratorSpliterator;->batch:I

    add-int/lit16 v0, v0, 0x400

    .line 2091
    .local v0, "n":I
    int-to-long v4, v0

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    .line 2092
    long-to-int v0, v2

    .line 2094
    :cond_1
    const/high16 v4, 0x2000000

    if-le v0, v4, :cond_2

    .line 2095
    const/high16 v0, 0x2000000

    .line 2097
    :cond_2
    new-array v4, v0, [Ljava/lang/Object;

    .line 2098
    .local v4, "a":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 2100
    .local v5, "j":I
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2101
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2102
    :cond_4
    iput v5, p0, Ljava9/util/Spliterators$IteratorSpliterator;->batch:I

    .line 2103
    iget-wide v6, p0, Ljava9/util/Spliterators$IteratorSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v6, v8

    if-eqz v8, :cond_5

    .line 2104
    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava9/util/Spliterators$IteratorSpliterator;->est:J

    .line 2106
    :cond_5
    new-instance v6, Ljava9/util/Spliterators$ArraySpliterator;

    const/4 v7, 0x0

    iget v8, p0, Ljava9/util/Spliterators$IteratorSpliterator;->characteristics:I

    invoke-direct {v6, v4, v7, v5, v8}, Ljava9/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v6

    .line 2108
    .end local v0    # "n":I
    .end local v4    # "a":[Ljava/lang/Object;
    .end local v5    # "j":I
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method
