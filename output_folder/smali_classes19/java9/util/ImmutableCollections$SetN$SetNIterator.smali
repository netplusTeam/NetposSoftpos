.class final Ljava9/util/ImmutableCollections$SetN$SetNIterator;
.super Ljava9/util/Iterators$ImmutableIt;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ImmutableCollections$SetN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SetNIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/Iterators$ImmutableIt<",
        "TE;>;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private idx:I

.field private remaining:I

.field final synthetic this$0:Ljava9/util/ImmutableCollections$SetN;


# direct methods
.method constructor <init>(Ljava9/util/ImmutableCollections$SetN;)V
    .locals 4

    .line 730
    .local p0, "this":Ljava9/util/ImmutableCollections$SetN$SetNIterator;, "Ljava9/util/ImmutableCollections$SetN<TE;>.SetNIterator;"
    iput-object p1, p0, Ljava9/util/ImmutableCollections$SetN$SetNIterator;->this$0:Ljava9/util/ImmutableCollections$SetN;

    invoke-direct {p0}, Ljava9/util/Iterators$ImmutableIt;-><init>()V

    .line 731
    iget v0, p1, Ljava9/util/ImmutableCollections$SetN;->size:I

    iput v0, p0, Ljava9/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    .line 734
    sget-wide v0, Ljava9/util/ImmutableCollections;->SALT32L:J

    iget-object p1, p1, Ljava9/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length p1, p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Ljava9/util/ImmutableCollections$SetN$SetNIterator;->idx:I

    .line 735
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 739
    .local p0, "this":Ljava9/util/ImmutableCollections$SetN$SetNIterator;, "Ljava9/util/ImmutableCollections$SetN<TE;>.SetNIterator;"
    iget v0, p0, Ljava9/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 744
    .local p0, "this":Ljava9/util/ImmutableCollections$SetN$SetNIterator;, "Ljava9/util/ImmutableCollections$SetN<TE;>.SetNIterator;"
    iget v0, p0, Ljava9/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    if-lez v0, :cond_3

    .line 746
    iget v0, p0, Ljava9/util/ImmutableCollections$SetN$SetNIterator;->idx:I

    .line 747
    .local v0, "idx":I
    iget-object v1, p0, Ljava9/util/ImmutableCollections$SetN$SetNIterator;->this$0:Ljava9/util/ImmutableCollections$SetN;

    iget-object v1, v1, Ljava9/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v1, v1

    .line 750
    .local v1, "len":I
    :cond_0
    sget-boolean v2, Ljava9/util/ImmutableCollections;->REVERSE:Z

    if-eqz v2, :cond_1

    .line 751
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_2

    .line 752
    const/4 v0, 0x0

    goto :goto_0

    .line 755
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    .line 756
    add-int/lit8 v0, v1, -0x1

    .line 759
    :cond_2
    :goto_0
    iget-object v2, p0, Ljava9/util/ImmutableCollections$SetN$SetNIterator;->this$0:Ljava9/util/ImmutableCollections$SetN;

    iget-object v2, v2, Ljava9/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    move-object v3, v2

    .local v3, "element":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 760
    iput v0, p0, Ljava9/util/ImmutableCollections$SetN$SetNIterator;->idx:I

    .line 761
    iget v2, p0, Ljava9/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava9/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    .line 762
    return-object v3

    .line 764
    .end local v0    # "idx":I
    .end local v1    # "len":I
    .end local v3    # "element":Ljava/lang/Object;, "TE;"
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
