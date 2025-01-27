.class final Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;
.super Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegularSetBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final MAX_RUN_MULTIPLIER:I = 0xd


# instance fields
.field private expandTableThreshold:I

.field private hashCode:I

.field private hashTable:[Ljava/lang/Object;

.field private maxRunBeforeFallback:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "expectedCapacity"    # I

    .line 726
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl<TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;-><init>(I)V

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 728
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    .line 729
    iput v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    .line 730
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl<",
            "TE;>;)V"
        }
    .end annotation

    .line 733
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl<TE;>;"
    .local p1, "toCopy":Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl<TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;-><init>(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    .line 734
    iget-object v0, p1, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 735
    iget v0, p1, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    iput v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    .line 736
    iget v0, p1, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    iput v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    .line 737
    iget v0, p1, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    iput v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    .line 738
    return-void
.end method

.method static hashFloodingDetected([Ljava/lang/Object;)Z
    .locals 7
    .param p0, "hashTable"    # [Ljava/lang/Object;

    .line 887
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback(I)I

    move-result v0

    .line 888
    .local v0, "maxRunBeforeFallback":I
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 894
    .local v1, "mask":I
    const/4 v3, 0x0

    .line 895
    .local v3, "knownRunStart":I
    const/4 v4, 0x0

    .line 898
    .local v4, "knownRunEnd":I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_4

    .line 899
    if-ne v3, v4, :cond_1

    aget-object v5, p0, v3

    if-nez v5, :cond_1

    .line 900
    add-int v5, v3, v0

    sub-int/2addr v5, v2

    and-int/2addr v5, v1

    aget-object v5, p0, v5

    if-nez v5, :cond_0

    .line 904
    add-int/2addr v3, v0

    goto :goto_1

    .line 906
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 909
    :goto_1
    move v4, v3

    goto :goto_0

    .line 911
    :cond_1
    add-int v5, v3, v0

    sub-int/2addr v5, v2

    .local v5, "j":I
    :goto_2
    if-lt v5, v4, :cond_3

    .line 912
    and-int v6, v5, v1

    aget-object v6, p0, v6

    if-nez v6, :cond_2

    .line 913
    add-int v4, v3, v0

    .line 914
    add-int/lit8 v3, v5, 0x1

    .line 915
    goto :goto_0

    .line 911
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 918
    .end local v5    # "j":I
    :cond_3
    return v2

    .line 921
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private insertInHashTable(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 758
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 760
    .local v0, "eHash":I
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    .line 761
    .local v1, "i0":I
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 762
    .local v2, "mask":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    sub-int v4, v3, v1

    iget v5, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    if-ge v4, v5, :cond_2

    .line 763
    and-int v4, v3, v2

    .line 764
    .local v4, "index":I
    iget-object v5, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    aget-object v5, v5, v4

    .line 765
    .local v5, "tableEntry":Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 766
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->addDedupedElement(Ljava/lang/Object;)V

    .line 767
    iget-object v6, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    aput-object p1, v6, v4

    .line 768
    iget v6, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    .line 769
    iget v6, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->distinct:I

    invoke-virtual {p0, v6}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->ensureTableCapacity(I)V

    .line 770
    return-object p0

    .line 771
    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 772
    return-object p0

    .line 762
    .end local v4    # "index":I
    .end local v5    # "tableEntry":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 776
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;

    invoke-direct {v3, p0}, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;-><init>(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    invoke-virtual {v3, p1}, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object v3

    return-object v3
.end method

.method static maxRunBeforeFallback(I)I
    .locals 1
    .param p0, "tableSize"    # I

    .line 930
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    return v0
.end method

.method static rebuildHashTable(I[Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 8
    .param p0, "newTableSize"    # I
    .param p1, "elements"    # [Ljava/lang/Object;
    .param p2, "n"    # I

    .line 826
    new-array v0, p0, [Ljava/lang/Object;

    .line 827
    .local v0, "hashTable":[Ljava/lang/Object;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 828
    .local v1, "mask":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 830
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 831
    .local v3, "e":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v4

    .line 832
    .local v4, "j0":I
    move v5, v4

    .line 833
    .local v5, "j":I
    :goto_1
    and-int v6, v5, v1

    .line 834
    .local v6, "index":I
    aget-object v7, v0, v6

    if-nez v7, :cond_0

    .line 835
    aput-object v3, v0, v6

    .line 836
    nop

    .line 828
    .end local v3    # "e":Ljava/lang/Object;
    .end local v4    # "j0":I
    .end local v5    # "j":I
    .end local v6    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 832
    .restart local v3    # "e":Ljava/lang/Object;
    .restart local v4    # "j0":I
    .restart local v5    # "j":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 840
    .end local v2    # "i":I
    .end local v3    # "e":Ljava/lang/Object;
    .end local v4    # "j0":I
    .end local v5    # "j":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 742
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 744
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->distinct:I

    if-nez v0, :cond_0

    .line 745
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->addDedupedElement(Ljava/lang/Object;)V

    .line 746
    return-object p0

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->ensureTableCapacity(I)V

    .line 749
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 750
    .local v0, "elem":Ljava/lang/Object;, "TE;"
    iget v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->distinct:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->distinct:I

    .line 751
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->insertInHashTable(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object v1

    return-object v1

    .line 754
    .end local v0    # "elem":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->insertInHashTable(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method build()Lcom/google/common/collect/ImmutableSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 800
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl<TE;>;"
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->distinct:I

    packed-switch v0, :pswitch_data_0

    .line 816
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->distinct:I

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 817
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    goto :goto_0

    .line 808
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 802
    :pswitch_1
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->distinct:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    nop

    .line 819
    .local v0, "elements":[Ljava/lang/Object;
    new-instance v1, Lcom/google/common/collect/RegularImmutableSet;

    iget v2, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 820
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    .line 819
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method copy()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 781
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;-><init>(Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;)V

    return-object v0
.end method

.method ensureTableCapacity(I)V
    .locals 5
    .param p1, "minCapacity"    # I

    .line 845
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 846
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v0

    .line 847
    .local v0, "newTableSize":I
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    goto :goto_0

    .line 848
    .end local v0    # "newTableSize":I
    :cond_0
    iget v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    if-le p1, v1, :cond_1

    array-length v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_1

    .line 849
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 850
    .restart local v0    # "newTableSize":I
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->distinct:I

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->rebuildHashTable(I[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 854
    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    .line 855
    const-wide v1, 0x3fe6666666666666L    # 0.7

    int-to-double v3, v0

    mul-double/2addr v3, v1

    double-to-int v1, v3

    iput v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    .line 856
    return-void

    .line 852
    .end local v0    # "newTableSize":I
    :cond_1
    return-void
.end method

.method review()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 786
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;, "Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 787
    return-object p0

    .line 789
    :cond_0
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->distinct:I

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v0

    .line 790
    .local v0, "targetTableSize":I
    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 791
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->distinct:I

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->rebuildHashTable(I[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 792
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    .line 793
    const-wide v1, 0x3fe6666666666666L    # 0.7

    int-to-double v3, v0

    mul-double/2addr v3, v1

    double-to-int v1, v3

    iput v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    .line 795
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashFloodingDetected([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;

    invoke-direct {v1, p0}, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;-><init>(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    return-object v1
.end method
