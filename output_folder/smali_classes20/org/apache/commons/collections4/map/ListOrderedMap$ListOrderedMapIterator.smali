.class Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;
.super Ljava/lang/Object;
.source "ListOrderedMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedMapIterator;
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListOrderedMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/OrderedMapIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "TK;>;"
        }
    .end annotation
.end field

.field private last:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final parent:Lorg/apache/commons/collections4/map/ListOrderedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/ListOrderedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private readable:Z


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/ListOrderedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/ListOrderedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 724
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;, "Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator<TK;TV;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/map/ListOrderedMap;, "Lorg/apache/commons/collections4/map/ListOrderedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    .line 721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    .line 725
    iput-object p1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    .line 726
    invoke-static {p1}, Lorg/apache/commons/collections4/map/ListOrderedMap;->access$000(Lorg/apache/commons/collections4/map/ListOrderedMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    .line 727
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 765
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;, "Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    return-object v0

    .line 766
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 773
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;, "Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/ListOrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 774
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 731
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;, "Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 743
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;, "Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 736
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;, "Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    .line 737
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    .line 738
    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 748
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;, "Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    .line 749
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    .line 750
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 755
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;, "Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 759
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/ListOrderedMap;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    .line 761
    return-void

    .line 756
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 789
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;, "Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->access$000(Lorg/apache/commons/collections4/map/ListOrderedMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    .line 791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    .line 792
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 781
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;, "Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->parent:Lorg/apache/commons/collections4/map/ListOrderedMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/ListOrderedMap;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 782
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 796
    .local p0, "this":Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;, "Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Iterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$ListOrderedMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 799
    :cond_0
    const-string v0, "Iterator[]"

    return-object v0
.end method
