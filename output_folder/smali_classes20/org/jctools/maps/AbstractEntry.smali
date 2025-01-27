.class abstract Lorg/jctools/maps/AbstractEntry;
.super Ljava/lang/Object;
.source "AbstractEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeK:",
        "Ljava/lang/Object;",
        "TypeV:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TTypeK;TTypeV;>;"
    }
.end annotation


# instance fields
.field protected final _key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTypeK;"
        }
    .end annotation
.end field

.field protected _val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTypeV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeK;TTypeV;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lorg/jctools/maps/AbstractEntry;, "Lorg/jctools/maps/AbstractEntry<TTypeK;TTypeV;>;"
    .local p1, "key":Ljava/lang/Object;, "TTypeK;"
    .local p2, "val":Ljava/lang/Object;, "TTypeV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jctools/maps/AbstractEntry;->_key:Ljava/lang/Object;

    iput-object p2, p0, Lorg/jctools/maps/AbstractEntry;->_val:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TTypeK;TTypeV;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lorg/jctools/maps/AbstractEntry;, "Lorg/jctools/maps/AbstractEntry<TTypeK;TTypeV;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TTypeK;TTypeV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jctools/maps/AbstractEntry;->_key:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jctools/maps/AbstractEntry;->_val:Ljava/lang/Object;

    return-void
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .line 57
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 44
    .local p0, "this":Lorg/jctools/maps/AbstractEntry;, "Lorg/jctools/maps/AbstractEntry<TTypeK;TTypeV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 45
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 46
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v2, p0, Lorg/jctools/maps/AbstractEntry;->_key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jctools/maps/AbstractEntry;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/jctools/maps/AbstractEntry;->_val:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jctools/maps/AbstractEntry;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeK;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/jctools/maps/AbstractEntry;, "Lorg/jctools/maps/AbstractEntry<TTypeK;TTypeV;>;"
    iget-object v0, p0, Lorg/jctools/maps/AbstractEntry;->_key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeV;"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/jctools/maps/AbstractEntry;, "Lorg/jctools/maps/AbstractEntry<TTypeK;TTypeV;>;"
    iget-object v0, p0, Lorg/jctools/maps/AbstractEntry;->_val:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 51
    .local p0, "this":Lorg/jctools/maps/AbstractEntry;, "Lorg/jctools/maps/AbstractEntry<TTypeK;TTypeV;>;"
    iget-object v0, p0, Lorg/jctools/maps/AbstractEntry;->_key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/jctools/maps/AbstractEntry;->_val:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    .line 51
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    .local p0, "this":Lorg/jctools/maps/AbstractEntry;, "Lorg/jctools/maps/AbstractEntry<TTypeK;TTypeV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jctools/maps/AbstractEntry;->_key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jctools/maps/AbstractEntry;->_val:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
