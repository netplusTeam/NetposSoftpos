.class Lorg/apache/commons/collections4/bidimap/TreeBidiMap$EntryView;
.super Lorg/apache/commons/collections4/bidimap/TreeBidiMap$View;
.source "TreeBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<",
        "TK;TV;>.View<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 1574
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$EntryView;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.EntryView;"
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$EntryView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 1575
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$View;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    .line 1576
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1580
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$EntryView;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.EntryView;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1581
    return v1

    .line 1583
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1584
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1585
    .local v2, "value":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$EntryView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$1600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v3

    .line 1586
    .local v3, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1606
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$EntryView;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.EntryView;"
    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapEntryIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$EntryView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewMapEntryIterator;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1591
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$EntryView;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<TK;TV;>.EntryView;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1592
    return v1

    .line 1594
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1595
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1596
    .local v2, "value":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$EntryView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$1600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Ljava/lang/Object;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v3

    .line 1597
    .local v3, "node":Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;, "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<TK;TV;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1598
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$EntryView;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v1, v3}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V

    .line 1599
    const/4 v1, 0x1

    return v1

    .line 1601
    :cond_1
    return v1
.end method
