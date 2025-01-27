.class final Ljava9/util/HMSpliterators$KeySpliterator;
.super Ljava9/util/HMSpliterators$HashMapSpliterator;
.source "HMSpliterators.java"

# interfaces
.implements Ljava9/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/HMSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/HMSpliterators$HashMapSpliterator<",
        "TK;TV;>;",
        "Ljava9/util/Spliterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/HashMap;IIII)V
    .locals 0
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "TK;TV;>;IIII)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Ljava9/util/HMSpliterators$KeySpliterator;, "Ljava9/util/HMSpliterators$KeySpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava9/util/HMSpliterators$HashMapSpliterator;-><init>(Ljava/util/HashMap;IIII)V

    .line 69
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 2

    .line 134
    .local p0, "this":Ljava9/util/HMSpliterators$KeySpliterator;, "Ljava9/util/HMSpliterators$KeySpliterator<TK;TV;>;"
    iget v0, p0, Ljava9/util/HMSpliterators$KeySpliterator;->fence:I

    if-ltz v0, :cond_1

    iget v0, p0, Ljava9/util/HMSpliterators$KeySpliterator;->est:I

    iget-object v1, p0, Ljava9/util/HMSpliterators$KeySpliterator;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x40

    :goto_1
    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Ljava9/util/HMSpliterators$KeySpliterator;, "Ljava9/util/HMSpliterators$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TK;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Ljava9/util/HMSpliterators$KeySpliterator;->map:Ljava/util/HashMap;

    .line 84
    .local v0, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-static {v0}, Ljava9/util/HMSpliterators$KeySpliterator;->getTable(Ljava/util/HashMap;)[Ljava/lang/Object;

    move-result-object v1

    .line 85
    .local v1, "tab":[Ljava/lang/Object;
    iget v2, p0, Ljava9/util/HMSpliterators$KeySpliterator;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-gez v2, :cond_1

    .line 86
    invoke-static {v0}, Ljava9/util/HMSpliterators$KeySpliterator;->getModCount(Ljava/util/HashMap;)I

    move-result v2

    iput v2, p0, Ljava9/util/HMSpliterators$KeySpliterator;->expectedModCount:I

    .line 87
    .local v2, "mc":I
    if-nez v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    array-length v4, v1

    :goto_0
    iput v4, p0, Ljava9/util/HMSpliterators$KeySpliterator;->fence:I

    move v3, v4

    goto :goto_1

    .line 89
    .end local v2    # "mc":I
    :cond_1
    iget v2, p0, Ljava9/util/HMSpliterators$KeySpliterator;->expectedModCount:I

    .line 91
    .restart local v2    # "mc":I
    :goto_1
    if-eqz v1, :cond_6

    array-length v4, v1

    if-lt v4, v3, :cond_6

    iget v4, p0, Ljava9/util/HMSpliterators$KeySpliterator;->index:I

    move v5, v4

    .local v5, "i":I
    if-ltz v4, :cond_6

    iput v3, p0, Ljava9/util/HMSpliterators$KeySpliterator;->index:I

    if-lt v5, v3, :cond_2

    iget-object v4, p0, Ljava9/util/HMSpliterators$KeySpliterator;->current:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 93
    :cond_2
    iget-object v4, p0, Ljava9/util/HMSpliterators$KeySpliterator;->current:Ljava/lang/Object;

    .line 94
    .local v4, "p":Ljava/lang/Object;
    const/4 v6, 0x0

    iput-object v6, p0, Ljava9/util/HMSpliterators$KeySpliterator;->current:Ljava/lang/Object;

    .line 96
    :cond_3
    if-nez v4, :cond_4

    .line 97
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget-object v4, v1, v5

    move v5, v6

    goto :goto_2

    .line 99
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :cond_4
    invoke-static {v4}, Ljava9/util/HMSpliterators$HashMapSpliterator;->getNodeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 100
    invoke-static {v4}, Ljava9/util/HMSpliterators$KeySpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 102
    :goto_2
    if-nez v4, :cond_3

    if-lt v5, v3, :cond_3

    .line 103
    invoke-static {v0}, Ljava9/util/HMSpliterators$KeySpliterator;->getModCount(Ljava/util/HashMap;)I

    move-result v6

    if-ne v2, v6, :cond_5

    goto :goto_3

    .line 104
    :cond_5
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 107
    .end local v4    # "p":Ljava/lang/Object;
    .end local v5    # "i":I
    :cond_6
    :goto_3
    return-void
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 111
    .local p0, "this":Ljava9/util/HMSpliterators$KeySpliterator;, "Ljava9/util/HMSpliterators$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TK;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Ljava9/util/HMSpliterators$KeySpliterator;->map:Ljava/util/HashMap;

    invoke-static {v0}, Ljava9/util/HMSpliterators$KeySpliterator;->getTable(Ljava/util/HashMap;)[Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "tab":[Ljava/lang/Object;
    if-eqz v0, :cond_3

    array-length v1, v0

    invoke-virtual {p0}, Ljava9/util/HMSpliterators$KeySpliterator;->getFence()I

    move-result v2

    move v3, v2

    .local v3, "hi":I
    if-lt v1, v2, :cond_3

    iget v1, p0, Ljava9/util/HMSpliterators$KeySpliterator;->index:I

    if-ltz v1, :cond_3

    .line 115
    :goto_0
    iget-object v1, p0, Ljava9/util/HMSpliterators$KeySpliterator;->current:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget v1, p0, Ljava9/util/HMSpliterators$KeySpliterator;->index:I

    if-ge v1, v3, :cond_3

    .line 116
    :cond_0
    iget-object v1, p0, Ljava9/util/HMSpliterators$KeySpliterator;->current:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 117
    iget v1, p0, Ljava9/util/HMSpliterators$KeySpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava9/util/HMSpliterators$KeySpliterator;->index:I

    aget-object v1, v0, v1

    iput-object v1, p0, Ljava9/util/HMSpliterators$KeySpliterator;->current:Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_1
    iget-object v1, p0, Ljava9/util/HMSpliterators$KeySpliterator;->current:Ljava/lang/Object;

    invoke-static {v1}, Ljava9/util/HMSpliterators$KeySpliterator;->getNodeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 120
    .local v1, "k":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Ljava9/util/HMSpliterators$KeySpliterator;->current:Ljava/lang/Object;

    invoke-static {v2}, Ljava9/util/HMSpliterators$KeySpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava9/util/HMSpliterators$KeySpliterator;->current:Ljava/lang/Object;

    .line 121
    invoke-interface {p1, v1}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 122
    iget v2, p0, Ljava9/util/HMSpliterators$KeySpliterator;->expectedModCount:I

    iget-object v4, p0, Ljava9/util/HMSpliterators$KeySpliterator;->map:Ljava/util/HashMap;

    invoke-static {v4}, Ljava9/util/HMSpliterators$KeySpliterator;->getModCount(Ljava/util/HashMap;)I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 125
    const/4 v2, 0x1

    return v2

    .line 123
    :cond_2
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 129
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "hi":I
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public trySplit()Ljava9/util/HMSpliterators$KeySpliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/HMSpliterators$KeySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 73
    .local p0, "this":Ljava9/util/HMSpliterators$KeySpliterator;, "Ljava9/util/HMSpliterators$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava9/util/HMSpliterators$KeySpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v7, p0, Ljava9/util/HMSpliterators$KeySpliterator;->index:I

    .local v7, "lo":I
    add-int v1, v7, v0

    ushr-int/lit8 v8, v1, 0x1

    .line 74
    .local v8, "mid":I
    if-ge v7, v8, :cond_1

    iget-object v1, p0, Ljava9/util/HMSpliterators$KeySpliterator;->current:Ljava/lang/Object;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v9, Ljava9/util/HMSpliterators$KeySpliterator;

    iget-object v2, p0, Ljava9/util/HMSpliterators$KeySpliterator;->map:Ljava/util/HashMap;

    iput v8, p0, Ljava9/util/HMSpliterators$KeySpliterator;->index:I

    iget v1, p0, Ljava9/util/HMSpliterators$KeySpliterator;->est:I

    ushr-int/lit8 v5, v1, 0x1

    iput v5, p0, Ljava9/util/HMSpliterators$KeySpliterator;->est:I

    iget v6, p0, Ljava9/util/HMSpliterators$KeySpliterator;->expectedModCount:I

    move-object v1, v9

    move v3, v7

    move v4, v8

    invoke-direct/range {v1 .. v6}, Ljava9/util/HMSpliterators$KeySpliterator;-><init>(Ljava/util/HashMap;IIII)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v9, 0x0

    :goto_1
    return-object v9
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 63
    .local p0, "this":Ljava9/util/HMSpliterators$KeySpliterator;, "Ljava9/util/HMSpliterators$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava9/util/HMSpliterators$KeySpliterator;->trySplit()Ljava9/util/HMSpliterators$KeySpliterator;

    move-result-object v0

    return-object v0
.end method
