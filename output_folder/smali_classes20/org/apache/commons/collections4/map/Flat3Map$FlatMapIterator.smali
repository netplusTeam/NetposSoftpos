.class Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;
.super Ljava/lang/Object;
.source "Flat3Map.java"

# interfaces
.implements Lorg/apache/commons/collections4/MapIterator;
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlatMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/MapIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private nextIndex:I

.field private final parent:Lorg/apache/commons/collections4/map/Flat3Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/Flat3Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 639
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 636
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    .line 640
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    .line 641
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 670
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 673
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    packed-switch v0, :pswitch_data_0

    .line 681
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$100(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 677
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$200(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 679
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$300(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 671
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 686
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 689
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    packed-switch v0, :pswitch_data_0

    .line 697
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$400(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 693
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$500(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 695
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$600(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 687
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasNext()Z
    .locals 2

    .line 645
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$000(Lorg/apache/commons/collections4/map/Flat3Map;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 650
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    .line 654
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 655
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 651
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 660
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/Flat3Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    .line 666
    return-void

    .line 661
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 724
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 725
    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    .line 726
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 702
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 706
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    packed-switch v1, :pswitch_data_0

    .line 717
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid map index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->nextIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 708
    :pswitch_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$402(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    goto :goto_0

    .line 711
    :pswitch_1
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$502(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    goto :goto_0

    .line 714
    :pswitch_2
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$602(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    nop

    .line 719
    :goto_0
    return-object v0

    .line 703
    .end local v0    # "old":Ljava/lang/Object;, "TV;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 730
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Iterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 733
    :cond_0
    const-string v0, "Iterator[]"

    return-object v0
.end method
