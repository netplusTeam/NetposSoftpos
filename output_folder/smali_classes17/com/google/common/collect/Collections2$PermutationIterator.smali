.class Lcom/google/common/collect/Collections2$PermutationIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermutationIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final c:[I

.field j:I

.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field final o:[I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 645
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationIterator;, "Lcom/google/common/collect/Collections2$PermutationIterator<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    .line 647
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 648
    .local v0, "n":I
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    .line 649
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    .line 650
    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 651
    const/4 v1, 0x1

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 652
    const v1, 0x7fffffff

    iput v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    .line 653
    return-void
.end method


# virtual methods
.method calculateNextPermutation()V
    .locals 5

    .line 667
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationIterator;, "Lcom/google/common/collect/Collections2$PermutationIterator<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    .line 668
    const/4 v1, 0x0

    .line 672
    .local v1, "s":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 673
    return-void

    .line 677
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    iget v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aget v0, v0, v2

    iget-object v3, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    aget v3, v3, v2

    add-int/2addr v3, v0

    .line 678
    .local v3, "q":I
    if-gez v3, :cond_1

    .line 679
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->switchDirection()V

    .line 680
    goto :goto_0

    .line 682
    :cond_1
    add-int/lit8 v4, v2, 0x1

    if-ne v3, v4, :cond_3

    .line 683
    if-nez v2, :cond_2

    .line 684
    goto :goto_1

    .line 686
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 687
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->switchDirection()V

    .line 688
    goto :goto_0

    .line 691
    :cond_3
    iget-object v4, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    sub-int v0, v2, v0

    add-int/2addr v0, v1

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    invoke-static {v4, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 692
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    iget v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aput v3, v0, v2

    .line 693
    nop

    .line 695
    .end local v3    # "q":I
    :goto_1
    return-void
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 639
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationIterator;, "Lcom/google/common/collect/Collections2$PermutationIterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->computeNext()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 658
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationIterator;, "Lcom/google/common/collect/Collections2$PermutationIterator<TE;>;"
    iget v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    if-gtz v0, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 662
    .local v0, "next":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->calculateNextPermutation()V

    .line 663
    return-object v0
.end method

.method switchDirection()V
    .locals 3

    .line 698
    .local p0, "this":Lcom/google/common/collect/Collections2$PermutationIterator;, "Lcom/google/common/collect/Collections2$PermutationIterator<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    iget v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aget v2, v0, v1

    neg-int v2, v2

    aput v2, v0, v1

    .line 699
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    .line 700
    return-void
.end method
