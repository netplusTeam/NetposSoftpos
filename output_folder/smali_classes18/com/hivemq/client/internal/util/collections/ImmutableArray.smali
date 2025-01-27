.class Lcom/hivemq/client/internal/util/collections/ImmutableArray;
.super Ljava/lang/Object;
.source "ImmutableArray.java"

# interfaces
.implements Lcom/hivemq/client/internal/util/collections/ImmutableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;,
        Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 32
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;

    .line 46
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    .line 48
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 49
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lcom/hivemq/client/internal/util/collections/ImmutableArray;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/hivemq/client/internal/util/collections/ImmutableArray;

    .line 32
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method static varargs of([Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .param p0, "elements"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 36
    const-string v0, "Immutable list"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->of([Ljava/lang/Object;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method static of([Ljava/lang/Object;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 2
    .param p0, "elements"    # [Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;

    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/Checks;->elementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 161
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 162
    return v0

    .line 164
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 165
    return v2

    .line 167
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 168
    .local v1, "that":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v3

    .line 169
    .local v3, "fromIndex":I
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v4

    .line 170
    .local v4, "toIndex":I
    sub-int v5, v4, v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 171
    return v2

    .line 173
    :cond_2
    instance-of v5, v1, Ljava/util/RandomAccess;

    if-eqz v5, :cond_5

    .line 174
    move v5, v3

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 175
    iget-object v6, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    aget-object v6, v6, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 176
    return v2

    .line 174
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v5    # "i":I
    :cond_4
    goto :goto_2

    .line 180
    :cond_5
    move v5, v3

    .line 181
    .restart local v5    # "i":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 182
    .local v7, "e":Ljava/lang/Object;
    iget-object v8, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "i":I
    .local v9, "i":I
    aget-object v5, v8, v5

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 183
    return v2

    .line 185
    .end local v7    # "e":Ljava/lang/Object;
    :cond_6
    move v5, v9

    goto :goto_1

    .line 187
    .end local v9    # "i":I
    :cond_7
    :goto_2
    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v0

    .line 135
    .local v0, "fromIndex":I
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v1

    .line 136
    .local v1, "toIndex":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 138
    iget-object v3, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/hivemq/client/internal/util/Checks;->index(II)I

    move-result v2

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method getFromIndex()I
    .locals 1

    .line 52
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method getToIndex()I
    .locals 1

    .line 56
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 192
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v0

    .line 193
    .local v0, "fromIndex":I
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v1

    .line 194
    .local v1, "toIndex":I
    const/4 v2, 0x1

    .line 195
    .local v2, "hashCode":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 196
    mul-int/lit8 v4, v2, 0x1f

    iget-object v5, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int v2, v4, v5

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    .end local v3    # "i":I
    :cond_0
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 92
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 93
    return v0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    .line 96
    .local v1, "fromIndex":I
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v2

    .line 97
    .local v2, "toIndex":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 98
    iget-object v4, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    sub-int v0, v3, v1

    return v0

    .line 97
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    .end local v3    # "i":I
    :cond_2
    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 107
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 108
    return v0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    .line 111
    .local v1, "fromIndex":I
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v2

    .line 112
    .local v2, "toIndex":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_2

    .line 113
    iget-object v4, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    sub-int v0, v3, v1

    return v0

    .line 112
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 117
    .end local v3    # "i":I
    :cond_2
    return v0
.end method

.method public listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/hivemq/client/internal/util/Checks;->cursorIndex(II)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableArray;I)V

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 32
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 61
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    .line 128
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v2

    .line 127
    const/16 v3, 0x510

    invoke-static {v0, v1, v2, v3}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->size()I

    move-result v0

    .line 145
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/util/Checks;->indexRange(III)V

    .line 146
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    .line 147
    .local v1, "startIndex":I
    sub-int v2, p2, p1

    .line 148
    .local v2, "subSize":I
    packed-switch v2, :pswitch_data_0

    .line 155
    if-ne v2, v0, :cond_0

    move-object v3, p0

    goto :goto_0

    .line 153
    :pswitch_0
    new-instance v3, Lcom/hivemq/client/internal/util/collections/ImmutableElement;

    iget-object v4, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    add-int v5, v1, p1

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;-><init>(Ljava/lang/Object;)V

    return-object v3

    .line 150
    :pswitch_1
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->of()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v3

    return-object v3

    .line 155
    :cond_0
    new-instance v3, Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;

    iget-object v4, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    add-int v5, v1, p1

    add-int v6, v1, p2

    invoke-direct {v3, v4, v5, v6}, Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;-><init>([Ljava/lang/Object;II)V

    :goto_0
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 32
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->subList(II)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 72
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    .local p1, "other":[Ljava/lang/Object;, "[TT;"
    const-string v0, "Array"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->size()I

    move-result v0

    .line 79
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 83
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 86
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 203
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableArray;, "Lcom/hivemq/client/internal/util/collections/ImmutableArray<TE;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v0

    .line 204
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v1

    .line 205
    .local v1, "toIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 207
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v3, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    if-ne v4, v1, :cond_0

    .line 209
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 211
    :cond_0
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v4

    goto :goto_0
.end method
