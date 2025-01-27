.class Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;
.super Ljava/lang/Object;
.source "Evictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/evictor/Evictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EvictionDebugStats"
.end annotation


# instance fields
.field inPri1LRU:Z

.field numBINsEvictedPri1:I

.field numBINsEvictedPri2:I

.field numBINsMoved1:I

.field numBINsMoved2:I

.field numBINsMutatedPri1:I

.field numBINsMutatedPri2:I

.field numBINsStripped1Pri1:I

.field numBINsStripped1Pri2:I

.field numBINsStripped2Pri1:I

.field numBINsStripped2Pri2:I

.field numPutBackPri1:I

.field numPutBackPri2:I

.field numSelectedPri1:I

.field numSelectedPri2:I

.field numUINsEvictedPri1:I

.field numUINsEvictedPri2:I

.field numUINsMoved1:I

.field numUINsMoved2:I

.field pri1Size:J

.field pri2Size:J

.field withParent:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method incNumEvicted(Z)V
    .locals 1
    .param p1, "isBIN"    # Z

    .line 744
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->inPri1LRU:Z

    if-eqz v0, :cond_1

    .line 745
    if-eqz p1, :cond_0

    .line 746
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsEvictedPri1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsEvictedPri1:I

    goto :goto_0

    .line 748
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numUINsEvictedPri1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numUINsEvictedPri1:I

    goto :goto_0

    .line 751
    :cond_1
    if-eqz p1, :cond_2

    .line 752
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsEvictedPri2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsEvictedPri2:I

    goto :goto_0

    .line 754
    :cond_2
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numUINsEvictedPri2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numUINsEvictedPri2:I

    .line 757
    :goto_0
    return-void
.end method

.method incNumMoved(Z)V
    .locals 1
    .param p1, "isBIN"    # Z

    .line 728
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->withParent:Z

    if-eqz v0, :cond_1

    .line 729
    if-eqz p1, :cond_0

    .line 730
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsMoved2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsMoved2:I

    goto :goto_0

    .line 732
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numUINsMoved2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numUINsMoved2:I

    goto :goto_0

    .line 735
    :cond_1
    if-eqz p1, :cond_2

    .line 736
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsMoved1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsMoved1:I

    goto :goto_0

    .line 738
    :cond_2
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numUINsMoved1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numUINsMoved1:I

    .line 741
    :goto_0
    return-void
.end method

.method incNumMutated()V
    .locals 1

    .line 720
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->inPri1LRU:Z

    if-eqz v0, :cond_0

    .line 721
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsMutatedPri1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsMutatedPri1:I

    goto :goto_0

    .line 723
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsMutatedPri2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsMutatedPri2:I

    .line 725
    :goto_0
    return-void
.end method

.method incNumPutBack()V
    .locals 1

    .line 696
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->inPri1LRU:Z

    if-eqz v0, :cond_0

    .line 697
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numPutBackPri1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numPutBackPri1:I

    goto :goto_0

    .line 699
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numPutBackPri2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numPutBackPri2:I

    .line 701
    :goto_0
    return-void
.end method

.method incNumSelected()V
    .locals 1

    .line 688
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->inPri1LRU:Z

    if-eqz v0, :cond_0

    .line 689
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numSelectedPri1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numSelectedPri1:I

    goto :goto_0

    .line 691
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numSelectedPri2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numSelectedPri2:I

    .line 693
    :goto_0
    return-void
.end method

.method incNumStripped()V
    .locals 1

    .line 704
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->inPri1LRU:Z

    if-eqz v0, :cond_1

    .line 705
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->withParent:Z

    if-eqz v0, :cond_0

    .line 706
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsStripped2Pri1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsStripped2Pri1:I

    goto :goto_0

    .line 708
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsStripped1Pri1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsStripped1Pri1:I

    goto :goto_0

    .line 711
    :cond_1
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->withParent:Z

    if-eqz v0, :cond_2

    .line 712
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsStripped2Pri2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsStripped2Pri2:I

    goto :goto_0

    .line 714
    :cond_2
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsStripped1Pri2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsStripped1Pri2:I

    .line 717
    :goto_0
    return-void
.end method

.method reset()V
    .locals 3

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->inPri1LRU:Z

    .line 657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->withParent:Z

    .line 659
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->pri1Size:J

    .line 660
    iput-wide v1, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->pri2Size:J

    .line 662
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numSelectedPri1:I

    .line 663
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numSelectedPri2:I

    .line 665
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numPutBackPri1:I

    .line 666
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numPutBackPri2:I

    .line 668
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsStripped1Pri1:I

    .line 669
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsStripped2Pri1:I

    .line 670
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsStripped1Pri2:I

    .line 671
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsStripped2Pri2:I

    .line 673
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsMutatedPri1:I

    .line 674
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsMutatedPri2:I

    .line 676
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numUINsMoved1:I

    .line 677
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numUINsMoved2:I

    .line 678
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsMoved1:I

    .line 679
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsMoved2:I

    .line 681
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numUINsEvictedPri1:I

    .line 682
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numUINsEvictedPri2:I

    .line 683
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsEvictedPri1:I

    .line 684
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsEvictedPri2:I

    .line 685
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 762
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Eviction stats PRI1: size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    iget-wide v1, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->pri1Size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 764
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    const-string/jumbo v2, "selected = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numSelectedPri1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 767
    const-string v3, " | "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    const-string/jumbo v4, "put back = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    iget v5, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numPutBackPri1:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    const-string/jumbo v5, "stripped = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    iget v6, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsStripped1Pri1:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 773
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    iget v7, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsStripped2Pri1:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    const-string v7, "mutated = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    iget v8, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsMutatedPri1:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    const-string v8, "moved = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    iget v8, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsMoved1:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    iget v8, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsMoved2:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 783
    const-string v8, " - "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    iget v9, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numUINsMoved1:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    iget v9, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numUINsMoved2:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    const-string v9, "evicted = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    iget v10, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsEvictedPri1:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    iget v10, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numUINsEvictedPri1:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    const-string v10, "Eviction stats PRI2: size = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    iget-wide v10, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->pri2Size:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    iget v2, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numSelectedPri2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 799
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    iget v2, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numPutBackPri2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    iget v2, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsStripped1Pri2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 805
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    iget v2, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsStripped2Pri2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    iget v2, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsMutatedPri2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    iget v2, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numBINsEvictedPri2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 813
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    iget v2, p0, Lcom/sleepycat/je/evictor/Evictor$EvictionDebugStats;->numUINsEvictedPri2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
