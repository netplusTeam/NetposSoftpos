.class public abstract Lorg/javatuples/Tuple;
.super Ljava/lang/Object;
.source "Tuple.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lorg/javatuples/Tuple;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4b5f179b83a89e3dL


# instance fields
.field private final valueArray:[Ljava/lang/Object;

.field private final valueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected varargs constructor <init>(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lorg/javatuples/Tuple;->valueArray:[Ljava/lang/Object;

    .line 59
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/javatuples/Tuple;->valueList:Ljava/util/List;

    .line 60
    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .param p1, "values"    # [Ljava/lang/Object;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/javatuples/Tuple;->valueArray:[Ljava/lang/Object;

    .line 67
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/javatuples/Tuple;->valueList:Ljava/util/List;

    .line 68
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 41
    move-object v0, p1

    check-cast v0, Lorg/javatuples/Tuple;

    invoke-virtual {p0, v0}, Lorg/javatuples/Tuple;->compareTo(Lorg/javatuples/Tuple;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/javatuples/Tuple;)I
    .locals 7
    .param p1, "o"    # Lorg/javatuples/Tuple;

    .line 235
    iget-object v0, p0, Lorg/javatuples/Tuple;->valueArray:[Ljava/lang/Object;

    array-length v0, v0

    .line 236
    .local v0, "tLen":I
    iget-object v1, p1, Lorg/javatuples/Tuple;->valueArray:[Ljava/lang/Object;

    .line 237
    .local v1, "oValues":[Ljava/lang/Object;
    array-length v2, v1

    .line 239
    .local v2, "oLen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    if-ge v3, v2, :cond_1

    .line 241
    iget-object v4, p0, Lorg/javatuples/Tuple;->valueArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    check-cast v4, Ljava/lang/Comparable;

    .line 242
    .local v4, "tElement":Ljava/lang/Comparable;
    aget-object v5, v1, v3

    check-cast v5, Ljava/lang/Comparable;

    .line 244
    .local v5, "oElement":Ljava/lang/Comparable;
    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    .line 245
    .local v6, "comparison":I
    if-eqz v6, :cond_0

    .line 246
    return v6

    .line 239
    .end local v4    # "tElement":Ljava/lang/Comparable;
    .end local v5    # "oElement":Ljava/lang/Comparable;
    .end local v6    # "comparison":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    .end local v3    # "i":I
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    return v3
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lorg/javatuples/Tuple;->valueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 115
    .local v1, "val":Ljava/lang/Object;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 116
    if-nez p1, :cond_1

    .line 117
    return v2

    .line 120
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    return v2

    .end local v1    # "val":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 125
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 130
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 131
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/javatuples/Tuple;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    const/4 v2, 0x0

    return v2

    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 135
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final varargs containsAll([Ljava/lang/Object;)Z
    .locals 5
    .param p1, "values"    # [Ljava/lang/Object;

    .line 140
    if-eqz p1, :cond_2

    .line 143
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 144
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lorg/javatuples/Tuple;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 145
    const/4 v4, 0x0

    return v4

    .line 143
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 141
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Values array cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 216
    if-ne p0, p1, :cond_0

    .line 217
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 220
    return v0

    .line 222
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 223
    return v0

    .line 225
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/javatuples/Tuple;

    .line 226
    .local v0, "other":Lorg/javatuples/Tuple;
    iget-object v1, p0, Lorg/javatuples/Tuple;->valueList:Ljava/util/List;

    iget-object v2, v0, Lorg/javatuples/Tuple;->valueList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public abstract getSize()I
.end method

.method public final getValue(I)Ljava/lang/Object;
    .locals 3
    .param p1, "pos"    # I

    .line 92
    invoke-virtual {p0}, Lorg/javatuples/Tuple;->getSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/javatuples/Tuple;->valueArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot retrieve position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Positions for this class start with 0 and end with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/javatuples/Tuple;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 4

    .line 205
    const/16 v0, 0x1f

    .line 206
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 207
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/javatuples/Tuple;->valueList:Ljava/util/List;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 209
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "i":I
    iget-object v1, p0, Lorg/javatuples/Tuple;->valueList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 156
    .local v2, "val":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 157
    if-nez p1, :cond_1

    .line 158
    return v0

    .line 161
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    return v0

    .line 165
    :cond_1
    nop

    .end local v2    # "val":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/javatuples/Tuple;->valueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 172
    invoke-virtual {p0}, Lorg/javatuples/Tuple;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 173
    iget-object v1, p0, Lorg/javatuples/Tuple;->valueList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 174
    .local v1, "val":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 175
    if-nez p1, :cond_1

    .line 176
    return v0

    .line 179
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    return v0

    .line 172
    .end local v1    # "val":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 184
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/javatuples/Tuple;->valueArray:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public final toList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/javatuples/Tuple;->valueList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/javatuples/Tuple;->valueList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
