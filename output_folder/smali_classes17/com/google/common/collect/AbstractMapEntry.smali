.class abstract Lcom/google/common/collect/AbstractMapEntry;
.super Ljava/lang/Object;
.source "AbstractMapEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    .local p0, "this":Lcom/google/common/collect/AbstractMapEntry;, "Lcom/google/common/collect/AbstractMapEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 52
    .local p0, "this":Lcom/google/common/collect/AbstractMapEntry;, "Lcom/google/common/collect/AbstractMapEntry<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 53
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 54
    .local v0, "that":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 54
    :goto_0
    return v1

    .line 57
    .end local v0    # "that":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_1
    return v1
.end method

.method public abstract getKey()Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 4

    .line 62
    .local p0, "this":Lcom/google/common/collect/AbstractMapEntry;, "Lcom/google/common/collect/AbstractMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 64
    .local v1, "v":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v2, v3

    return v2
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/google/common/collect/AbstractMapEntry;, "Lcom/google/common/collect/AbstractMapEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 70
    .local p0, "this":Lcom/google/common/collect/AbstractMapEntry;, "Lcom/google/common/collect/AbstractMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
