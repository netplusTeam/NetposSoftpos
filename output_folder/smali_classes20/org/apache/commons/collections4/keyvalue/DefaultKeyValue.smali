.class public Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;
.super Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;
.source "DefaultKeyValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;, "Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;, "Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;, "Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/KeyValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/KeyValue<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;, "Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue<TK;TV;>;"
    .local p1, "pair":Lorg/apache/commons/collections4/KeyValue;, "Lorg/apache/commons/collections4/KeyValue<+TK;+TV;>;"
    invoke-interface {p1}, Lorg/apache/commons/collections4/KeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/commons/collections4/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 126
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;, "Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 127
    return v0

    .line 129
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 130
    return v2

    .line 133
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;

    .line 134
    .local v1, "other":Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;, "Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue<**>;"
    nop

    .line 135
    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 136
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    move v0, v2

    .line 134
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 149
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;, "Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 150
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    .line 149
    return v0
.end method

.method public setKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;, "Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eq p1, p0, :cond_0

    .line 85
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->setKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DefaultKeyValue may not contain itself as a key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;, "Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eq p1, p0, :cond_0

    .line 101
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/keyvalue/AbstractKeyValue;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DefaultKeyValue may not contain itself as a value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toMapEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue;, "Lorg/apache/commons/collections4/keyvalue/DefaultKeyValue<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/keyvalue/DefaultMapEntry;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/keyvalue/DefaultMapEntry;-><init>(Lorg/apache/commons/collections4/KeyValue;)V

    return-object v0
.end method
