.class final Ljava9/util/ImmutableCollections$MapN;
.super Ljava9/util/ImmutableCollections$AbstractImmutableMap;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapN"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/ImmutableCollections$MapN$MapNIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/ImmutableCollections$AbstractImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final size:I

.field final table:[Ljava/lang/Object;


# direct methods
.method varargs constructor <init>([Ljava/lang/Object;)V
    .locals 8
    .param p1, "input"    # [Ljava/lang/Object;

    .line 921
    .local p0, "this":Ljava9/util/ImmutableCollections$MapN;, "Ljava9/util/ImmutableCollections$MapN<TK;TV;>;"
    invoke-direct {p0}, Ljava9/util/ImmutableCollections$AbstractImmutableMap;-><init>()V

    .line 922
    array-length v0, p1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 925
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava9/util/ImmutableCollections$MapN;->size:I

    .line 927
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    .line 928
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v1, -0x2

    .line 929
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Ljava9/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    .line 931
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 932
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 933
    .local v2, "k":Ljava/lang/Object;
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 934
    .local v3, "v":Ljava/lang/Object;
    invoke-direct {p0, v2}, Ljava9/util/ImmutableCollections$MapN;->probe(Ljava/lang/Object;)I

    move-result v4

    .line 935
    .local v4, "idx":I
    if-gez v4, :cond_0

    .line 938
    add-int/lit8 v5, v4, 0x1

    neg-int v5, v5

    .line 939
    .local v5, "dest":I
    iget-object v6, p0, Ljava9/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aput-object v2, v6, v5

    .line 940
    add-int/lit8 v7, v5, 0x1

    aput-object v3, v6, v7

    .line 931
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    .end local v4    # "idx":I
    .end local v5    # "dest":I
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 936
    .restart local v2    # "k":Ljava/lang/Object;
    .restart local v3    # "v":Ljava/lang/Object;
    .restart local v4    # "idx":I
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duplicate key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 943
    .end local v1    # "i":I
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    .end local v4    # "idx":I
    :cond_1
    return-void

    .line 923
    .end local v0    # "len":I
    :cond_2
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "length is odd"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private probe(Ljava/lang/Object;)I
    .locals 3
    .param p1, "pk"    # Ljava/lang/Object;

    .line 1068
    .local p0, "this":Ljava9/util/ImmutableCollections$MapN;, "Ljava9/util/ImmutableCollections$MapN<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava9/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    shr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava9/util/ImmutableCollections;->floorMod(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 1070
    .local v0, "idx":I
    :goto_0
    iget-object v1, p0, Ljava9/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 1071
    .local v1, "ek":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1072
    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 1073
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1074
    return v0

    .line 1075
    :cond_1
    add-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Ljava9/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_2

    .line 1076
    const/4 v0, 0x0

    .line 1078
    .end local v1    # "ek":Ljava/lang/Object;
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

    .line 1082
    .local p0, "this":Ljava9/util/ImmutableCollections$MapN;, "Ljava9/util/ImmutableCollections$MapN<TK;TV;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 7

    .line 1086
    .local p0, "this":Ljava9/util/ImmutableCollections$MapN;, "Ljava9/util/ImmutableCollections$MapN<TK;TV;>;"
    iget v0, p0, Ljava9/util/ImmutableCollections$MapN;->size:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1087
    .local v0, "array":[Ljava/lang/Object;
    iget-object v1, p0, Ljava9/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    .line 1088
    .local v1, "len":I
    const/4 v2, 0x0

    .line 1089
    .local v2, "dest":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1090
    iget-object v4, p0, Ljava9/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v5, v4, v3

    if-eqz v5, :cond_0

    .line 1091
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "dest":I
    .local v6, "dest":I
    aput-object v5, v0, v2

    .line 1092
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "dest":I
    .restart local v2    # "dest":I
    add-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    aput-object v4, v0, v6

    .line 1089
    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1095
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava9/util/ColSer;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Ljava9/util/ColSer;-><init>(I[Ljava/lang/Object;)V

    return-object v3
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 947
    .local p0, "this":Ljava9/util/ImmutableCollections$MapN;, "Ljava9/util/ImmutableCollections$MapN<TK;TV;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    iget v0, p0, Ljava9/util/ImmutableCollections$MapN;->size:I

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Ljava9/util/ImmutableCollections$MapN;->probe(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 953
    .local p0, "this":Ljava9/util/ImmutableCollections$MapN;, "Ljava9/util/ImmutableCollections$MapN<TK;TV;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava9/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 955
    aget-object v1, v1, v0

    .line 956
    .local v1, "v":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 957
    const/4 v2, 0x1

    return v2

    .line 954
    .end local v1    # "v":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 960
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1050
    .local p0, "this":Ljava9/util/ImmutableCollections$MapN;, "Ljava9/util/ImmutableCollections$MapN<TK;TV;>;"
    new-instance v0, Ljava9/util/ImmutableCollections$MapN$1;

    invoke-direct {v0, p0}, Ljava9/util/ImmutableCollections$MapN$1;-><init>(Ljava9/util/ImmutableCollections$MapN;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 978
    .local p0, "this":Ljava9/util/ImmutableCollections$MapN;, "Ljava9/util/ImmutableCollections$MapN<TK;TV;>;"
    iget v0, p0, Ljava9/util/ImmutableCollections$MapN;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 979
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    return-object v1

    .line 982
    :cond_0
    invoke-direct {p0, p1}, Ljava9/util/ImmutableCollections$MapN;->probe(Ljava/lang/Object;)I

    move-result v0

    .line 983
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 984
    iget-object v1, p0, Ljava9/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    return-object v1

    .line 986
    :cond_1
    return-object v1
.end method

.method public hashCode()I
    .locals 6

    .line 965
    .local p0, "this":Ljava9/util/ImmutableCollections$MapN;, "Ljava9/util/ImmutableCollections$MapN<TK;TV;>;"
    const/4 v0, 0x0

    .line 966
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljava9/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 967
    aget-object v2, v2, v1

    .line 968
    .local v2, "k":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 969
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v4, p0, Ljava9/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 966
    .end local v2    # "k":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 972
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 997
    .local p0, "this":Ljava9/util/ImmutableCollections$MapN;, "Ljava9/util/ImmutableCollections$MapN<TK;TV;>;"
    iget v0, p0, Ljava9/util/ImmutableCollections$MapN;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 992
    .local p0, "this":Ljava9/util/ImmutableCollections$MapN;, "Ljava9/util/ImmutableCollections$MapN<TK;TV;>;"
    iget v0, p0, Ljava9/util/ImmutableCollections$MapN;->size:I

    return v0
.end method
