.class final Lorg/jdom2/filter/AndFilter;
.super Lorg/jdom2/filter/AbstractFilter;
.source "AndFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jdom2/filter/AbstractFilter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field private final base:Lorg/jdom2/filter/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdom2/filter/Filter<",
            "*>;"
        }
    .end annotation
.end field

.field private final refiner:Lorg/jdom2/filter/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdom2/filter/Filter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jdom2/filter/Filter;Lorg/jdom2/filter/Filter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/filter/Filter<",
            "*>;",
            "Lorg/jdom2/filter/Filter<",
            "TT;>;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/jdom2/filter/AndFilter;, "Lorg/jdom2/filter/AndFilter<TT;>;"
    .local p1, "base":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<*>;"
    .local p2, "refiner":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TT;>;"
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    .line 77
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 80
    iput-object p1, p0, Lorg/jdom2/filter/AndFilter;->base:Lorg/jdom2/filter/Filter;

    .line 81
    iput-object p2, p0, Lorg/jdom2/filter/AndFilter;->refiner:Lorg/jdom2/filter/Filter;

    .line 82
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot have a null base or refiner filter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 100
    .local p0, "this":Lorg/jdom2/filter/AndFilter;, "Lorg/jdom2/filter/AndFilter<TT;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 101
    return v0

    .line 103
    :cond_0
    instance-of v1, p1, Lorg/jdom2/filter/AndFilter;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 104
    move-object v1, p1

    check-cast v1, Lorg/jdom2/filter/AndFilter;

    .line 105
    .local v1, "them":Lorg/jdom2/filter/AndFilter;, "Lorg/jdom2/filter/AndFilter<*>;"
    iget-object v3, p0, Lorg/jdom2/filter/AndFilter;->base:Lorg/jdom2/filter/Filter;

    iget-object v4, v1, Lorg/jdom2/filter/AndFilter;->base:Lorg/jdom2/filter/Filter;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/jdom2/filter/AndFilter;->refiner:Lorg/jdom2/filter/Filter;

    iget-object v4, v1, Lorg/jdom2/filter/AndFilter;->refiner:Lorg/jdom2/filter/Filter;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    iget-object v3, p0, Lorg/jdom2/filter/AndFilter;->refiner:Lorg/jdom2/filter/Filter;

    iget-object v4, v1, Lorg/jdom2/filter/AndFilter;->base:Lorg/jdom2/filter/Filter;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jdom2/filter/AndFilter;->base:Lorg/jdom2/filter/Filter;

    iget-object v4, v1, Lorg/jdom2/filter/AndFilter;->refiner:Lorg/jdom2/filter/Filter;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    return v0

    .line 109
    .end local v1    # "them":Lorg/jdom2/filter/AndFilter;, "Lorg/jdom2/filter/AndFilter<*>;"
    :cond_4
    return v2
.end method

.method public filter(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "content"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/jdom2/filter/AndFilter;, "Lorg/jdom2/filter/AndFilter<TT;>;"
    iget-object v0, p0, Lorg/jdom2/filter/AndFilter;->base:Lorg/jdom2/filter/Filter;

    invoke-interface {v0, p1}, Lorg/jdom2/filter/Filter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lorg/jdom2/filter/AndFilter;->refiner:Lorg/jdom2/filter/Filter;

    invoke-interface {v1, p1}, Lorg/jdom2/filter/Filter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 90
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .line 95
    .local p0, "this":Lorg/jdom2/filter/AndFilter;, "Lorg/jdom2/filter/AndFilter<TT;>;"
    iget-object v0, p0, Lorg/jdom2/filter/AndFilter;->base:Lorg/jdom2/filter/Filter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/jdom2/filter/AndFilter;->refiner:Lorg/jdom2/filter/Filter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    .local p0, "this":Lorg/jdom2/filter/AndFilter;, "Lorg/jdom2/filter/AndFilter<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[AndFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/filter/AndFilter;->base:Lorg/jdom2/filter/Filter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/filter/AndFilter;->refiner:Lorg/jdom2/filter/Filter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
