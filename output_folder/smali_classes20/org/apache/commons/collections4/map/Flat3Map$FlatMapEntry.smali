.class Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;
.super Ljava/lang/Object;
.source "Flat3Map.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlatMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final index:I

.field private final parent:Lorg/apache/commons/collections4/map/Flat3Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile removed:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/Flat3Map;I)V
    .locals 1
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 805
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry<TK;TV;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/map/Flat3Map;, "Lorg/apache/commons/collections4/map/Flat3Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    .line 807
    iput p2, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->index:I

    .line 808
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->removed:Z

    .line 809
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 880
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->removed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 881
    return v1

    .line 883
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    .line 884
    return v1

    .line 886
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 887
    .local v0, "other":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 888
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 889
    .local v3, "value":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_2

    if-nez v4, :cond_4

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_0
    if-nez v3, :cond_3

    .line 890
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    nop

    .line 889
    :goto_2
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 826
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->removed:Z

    if-nez v0, :cond_0

    .line 829
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->index:I

    packed-switch v0, :pswitch_data_0

    .line 837
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$100(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 833
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$200(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 835
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$300(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 827
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

    .line 842
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->removed:Z

    if-nez v0, :cond_0

    .line 845
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->index:I

    packed-switch v0, :pswitch_data_0

    .line 853
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$400(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 849
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$500(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 851
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/Flat3Map;->access$600(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 843
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

.method public hashCode()I
    .locals 4

    .line 895
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->removed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 896
    return v1

    .line 898
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 899
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 900
    .local v2, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    .line 901
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v1, v3

    .line 900
    return v1
.end method

.method setRemoved(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 821
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry<TK;TV;>;"
    iput-boolean p1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->removed:Z

    .line 822
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 858
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->removed:Z

    if-nez v0, :cond_0

    .line 861
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 862
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->index:I

    packed-switch v1, :pswitch_data_0

    .line 873
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid map index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 864
    :pswitch_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$402(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    goto :goto_0

    .line 867
    :pswitch_1
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$502(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    goto :goto_0

    .line 870
    :pswitch_2
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->parent:Lorg/apache/commons/collections4/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->access$602(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    nop

    .line 875
    :goto_0
    return-object v0

    .line 859
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

    .line 906
    .local p0, "this":Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;, "Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->removed:Z

    if-nez v0, :cond_0

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 909
    :cond_0
    const-string v0, ""

    return-object v0
.end method
