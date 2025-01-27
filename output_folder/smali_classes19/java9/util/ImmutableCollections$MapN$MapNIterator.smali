.class Ljava9/util/ImmutableCollections$MapN$MapNIterator;
.super Ljava9/util/Iterators$ImmutableIt;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ImmutableCollections$MapN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapNIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/Iterators$ImmutableIt<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private idx:I

.field private remaining:I

.field final synthetic this$0:Ljava9/util/ImmutableCollections$MapN;


# direct methods
.method constructor <init>(Ljava9/util/ImmutableCollections$MapN;)V
    .locals 4
    .param p1, "this$0"    # Ljava9/util/ImmutableCollections$MapN;

    .line 1006
    .local p0, "this":Ljava9/util/ImmutableCollections$MapN$MapNIterator;, "Ljava9/util/ImmutableCollections$MapN<TK;TV;>.MapNIterator;"
    iput-object p1, p0, Ljava9/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljava9/util/ImmutableCollections$MapN;

    invoke-direct {p0}, Ljava9/util/Iterators$ImmutableIt;-><init>()V

    .line 1007
    iget v0, p1, Ljava9/util/ImmutableCollections$MapN;->size:I

    iput v0, p0, Ljava9/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    .line 1010
    sget-wide v0, Ljava9/util/ImmutableCollections;->SALT32L:J

    iget-object v2, p1, Ljava9/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v2, v2

    shr-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava9/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    .line 1011
    return-void
.end method

.method private nextIndex()I
    .locals 2

    .line 1019
    .local p0, "this":Ljava9/util/ImmutableCollections$MapN$MapNIterator;, "Ljava9/util/ImmutableCollections$MapN<TK;TV;>.MapNIterator;"
    iget v0, p0, Ljava9/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    .line 1020
    .local v0, "idx":I
    sget-boolean v1, Ljava9/util/ImmutableCollections;->REVERSE:Z

    if-eqz v1, :cond_0

    .line 1021
    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljava9/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljava9/util/ImmutableCollections$MapN;

    iget-object v1, v1, Ljava9/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1022
    const/4 v0, 0x0

    goto :goto_0

    .line 1025
    :cond_0
    add-int/lit8 v0, v0, -0x2

    if-gez v0, :cond_1

    .line 1026
    iget-object v1, p0, Ljava9/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljava9/util/ImmutableCollections$MapN;

    iget-object v1, v1, Ljava9/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x2

    .line 1029
    :cond_1
    :goto_0
    iput v0, p0, Ljava9/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    return v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1015
    .local p0, "this":Ljava9/util/ImmutableCollections$MapN$MapNIterator;, "Ljava9/util/ImmutableCollections$MapN<TK;TV;>.MapNIterator;"
    iget v0, p0, Ljava9/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1000
    .local p0, "this":Ljava9/util/ImmutableCollections$MapN$MapNIterator;, "Ljava9/util/ImmutableCollections$MapN<TK;TV;>.MapNIterator;"
    invoke-virtual {p0}, Ljava9/util/ImmutableCollections$MapN$MapNIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1034
    .local p0, "this":Ljava9/util/ImmutableCollections$MapN$MapNIterator;, "Ljava9/util/ImmutableCollections$MapN<TK;TV;>.MapNIterator;"
    iget v0, p0, Ljava9/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    if-lez v0, :cond_1

    .line 1036
    :goto_0
    iget-object v0, p0, Ljava9/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljava9/util/ImmutableCollections$MapN;

    iget-object v0, v0, Ljava9/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava9/util/ImmutableCollections$MapN$MapNIterator;->nextIndex()I

    move-result v1

    move v2, v1

    .local v2, "idx":I
    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1038
    :cond_0
    new-instance v0, Ljava9/util/KeyValueHolder;

    iget-object v1, p0, Ljava9/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljava9/util/ImmutableCollections$MapN;

    iget-object v1, v1, Ljava9/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v1, v1, v2

    iget-object v3, p0, Ljava9/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljava9/util/ImmutableCollections$MapN;

    iget-object v3, v3, Ljava9/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-direct {v0, v1, v3}, Ljava9/util/KeyValueHolder;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1040
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget v1, p0, Ljava9/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava9/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    .line 1041
    return-object v0

    .line 1043
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "idx":I
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
