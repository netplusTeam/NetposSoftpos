.class final Ljava9/util/ImmutableCollections$SetN;
.super Ljava9/util/ImmutableCollections$AbstractImmutableSet;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SetN"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/ImmutableCollections$SetN$SetNIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/ImmutableCollections$AbstractImmutableSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field final size:I


# direct methods
.method varargs constructor <init>([Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 693
    .local p0, "this":Ljava9/util/ImmutableCollections$SetN;, "Ljava9/util/ImmutableCollections$SetN<TE;>;"
    .local p1, "input":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava9/util/ImmutableCollections$AbstractImmutableSet;-><init>()V

    .line 694
    array-length v0, p1

    iput v0, p0, Ljava9/util/ImmutableCollections$SetN;->size:I

    .line 696
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava9/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    .line 697
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 698
    aget-object v1, p1, v0

    .line 699
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v1}, Ljava9/util/ImmutableCollections$SetN;->probe(Ljava/lang/Object;)I

    move-result v2

    .line 700
    .local v2, "idx":I
    if-gez v2, :cond_0

    .line 703
    iget-object v3, p0, Ljava9/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    aput-object v1, v3, v4

    .line 697
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "idx":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 701
    .restart local v1    # "e":Ljava/lang/Object;, "TE;"
    .restart local v2    # "idx":I
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 706
    .end local v0    # "i":I
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "idx":I
    :cond_1
    return-void
.end method

.method private probe(Ljava/lang/Object;)I
    .locals 3
    .param p1, "pe"    # Ljava/lang/Object;

    .line 790
    .local p0, "this":Ljava9/util/ImmutableCollections$SetN;, "Ljava9/util/ImmutableCollections$SetN<TE;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava9/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava9/util/ImmutableCollections;->floorMod(II)I

    move-result v0

    .line 792
    .local v0, "idx":I
    :goto_0
    iget-object v1, p0, Ljava9/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 793
    .local v1, "ee":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    .line 794
    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 795
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 796
    return v0

    .line 797
    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Ljava9/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_2

    .line 798
    const/4 v0, 0x0

    .line 800
    .end local v1    # "ee":Ljava/lang/Object;, "TE;"
    :cond_2
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 804
    .local p0, "this":Ljava9/util/ImmutableCollections$SetN;, "Ljava9/util/ImmutableCollections$SetN<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 7

    .line 808
    .local p0, "this":Ljava9/util/ImmutableCollections$SetN;, "Ljava9/util/ImmutableCollections$SetN<TE;>;"
    iget v0, p0, Ljava9/util/ImmutableCollections$SetN;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 809
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 810
    .local v1, "dest":I
    iget-object v2, p0, Ljava9/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 811
    .local v5, "o":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 812
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "dest":I
    .local v6, "dest":I
    aput-object v5, v0, v1

    move v1, v6

    .line 810
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "dest":I
    .restart local v1    # "dest":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 815
    :cond_1
    new-instance v2, Ljava9/util/ColSer;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Ljava9/util/ColSer;-><init>(I[Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 720
    .local p0, "this":Ljava9/util/ImmutableCollections$SetN;, "Ljava9/util/ImmutableCollections$SetN<TE;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget v0, p0, Ljava9/util/ImmutableCollections$SetN;->size:I

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Ljava9/util/ImmutableCollections$SetN;->probe(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 776
    .local p0, "this":Ljava9/util/ImmutableCollections$SetN;, "Ljava9/util/ImmutableCollections$SetN<TE;>;"
    const/4 v0, 0x0

    .line 777
    .local v0, "h":I
    iget-object v1, p0, Ljava9/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 778
    .local v4, "e":Ljava/lang/Object;, "TE;"
    if-eqz v4, :cond_0

    .line 779
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    .line 777
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 782
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 715
    .local p0, "this":Ljava9/util/ImmutableCollections$SetN;, "Ljava9/util/ImmutableCollections$SetN<TE;>;"
    iget v0, p0, Ljava9/util/ImmutableCollections$SetN;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 771
    .local p0, "this":Ljava9/util/ImmutableCollections$SetN;, "Ljava9/util/ImmutableCollections$SetN<TE;>;"
    new-instance v0, Ljava9/util/ImmutableCollections$SetN$SetNIterator;

    invoke-direct {v0, p0}, Ljava9/util/ImmutableCollections$SetN$SetNIterator;-><init>(Ljava9/util/ImmutableCollections$SetN;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 710
    .local p0, "this":Ljava9/util/ImmutableCollections$SetN;, "Ljava9/util/ImmutableCollections$SetN<TE;>;"
    iget v0, p0, Ljava9/util/ImmutableCollections$SetN;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 820
    .local p0, "this":Ljava9/util/ImmutableCollections$SetN;, "Ljava9/util/ImmutableCollections$SetN<TE;>;"
    iget v0, p0, Ljava9/util/ImmutableCollections$SetN;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 821
    .local v0, "array":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava9/util/ImmutableCollections$SetN;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 822
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Ljava9/util/ImmutableCollections$SetN;->size:I

    if-ge v2, v3, :cond_0

    .line 823
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 822
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 825
    .end local v2    # "i":I
    :cond_0
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

    .line 831
    .local p0, "this":Ljava9/util/ImmutableCollections$SetN;, "Ljava9/util/ImmutableCollections$SetN<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Ljava9/util/ImmutableCollections$SetN;->size:I

    if-lt v0, v1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 832
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Ljava9/util/ImmutableCollections$SetN;->size:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    :goto_0
    nop

    .line 833
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava9/util/ImmutableCollections$SetN;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 834
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Ljava9/util/ImmutableCollections$SetN;->size:I

    if-ge v2, v3, :cond_1

    .line 835
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 834
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 837
    .end local v2    # "i":I
    :cond_1
    array-length v2, v0

    if-le v2, v3, :cond_2

    .line 838
    const/4 v2, 0x0

    aput-object v2, v0, v3

    .line 840
    :cond_2
    return-object v0
.end method
