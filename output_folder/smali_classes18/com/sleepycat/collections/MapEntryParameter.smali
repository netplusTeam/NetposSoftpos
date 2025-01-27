.class public Lcom/sleepycat/collections/MapEntryParameter;
.super Ljava/lang/Object;
.source "MapEntryParameter.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
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
.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/sleepycat/collections/MapEntryParameter;, "Lcom/sleepycat/collections/MapEntryParameter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sleepycat/collections/MapEntryParameter;->key:Ljava/lang/Object;

    .line 49
    iput-object p2, p0, Lcom/sleepycat/collections/MapEntryParameter;->value:Ljava/lang/Object;

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 72
    .local p0, "this":Lcom/sleepycat/collections/MapEntryParameter;, "Lcom/sleepycat/collections/MapEntryParameter<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 73
    return v1

    .line 76
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v2, p0, Lcom/sleepycat/collections/MapEntryParameter;->key:Ljava/lang/Object;

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iget-object v2, p0, Lcom/sleepycat/collections/MapEntryParameter;->value:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_2
    nop

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    nop

    .line 78
    :goto_2
    return v1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/sleepycat/collections/MapEntryParameter;, "Lcom/sleepycat/collections/MapEntryParameter<TK;TV;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/MapEntryParameter;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/sleepycat/collections/MapEntryParameter;, "Lcom/sleepycat/collections/MapEntryParameter<TK;TV;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/MapEntryParameter;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 60
    .local p0, "this":Lcom/sleepycat/collections/MapEntryParameter;, "Lcom/sleepycat/collections/MapEntryParameter<TK;TV;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/MapEntryParameter;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/sleepycat/collections/MapEntryParameter;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/sleepycat/collections/MapEntryParameter;, "Lcom/sleepycat/collections/MapEntryParameter<TK;TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final setValueInternal(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/sleepycat/collections/MapEntryParameter;, "Lcom/sleepycat/collections/MapEntryParameter<TK;TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/sleepycat/collections/MapEntryParameter;->value:Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 127
    .local p0, "this":Lcom/sleepycat/collections/MapEntryParameter;, "Lcom/sleepycat/collections/MapEntryParameter<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[key ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/collections/MapEntryParameter;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] value ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/collections/MapEntryParameter;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
