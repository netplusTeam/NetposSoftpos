.class public abstract Lorg/jdom2/filter/AbstractFilter;
.super Ljava/lang/Object;
.source "AbstractFilter.java"

# interfaces
.implements Lorg/jdom2/filter/Filter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jdom2/filter/Filter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    .local p0, "this":Lorg/jdom2/filter/AbstractFilter;, "Lorg/jdom2/filter/AbstractFilter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final and(Lorg/jdom2/filter/Filter;)Lorg/jdom2/filter/Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/filter/Filter<",
            "*>;)",
            "Lorg/jdom2/filter/Filter<",
            "TT;>;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/jdom2/filter/AbstractFilter;, "Lorg/jdom2/filter/AbstractFilter<TT;>;"
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<*>;"
    new-instance v0, Lorg/jdom2/filter/AndFilter;

    invoke-direct {v0, p1, p0}, Lorg/jdom2/filter/AndFilter;-><init>(Lorg/jdom2/filter/Filter;Lorg/jdom2/filter/Filter;)V

    return-object v0
.end method

.method public filter(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/jdom2/filter/AbstractFilter;, "Lorg/jdom2/filter/AbstractFilter<TT;>;"
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p1, :cond_0

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_4

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 91
    .local v0, "sz":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 93
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jdom2/filter/AbstractFilter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 94
    .local v3, "c":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_1

    .line 95
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v3    # "c":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 101
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 103
    .end local v0    # "sz":I
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jdom2/filter/AbstractFilter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 106
    .local v2, "c":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_5

    .line 107
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v2    # "c":Ljava/lang/Object;, "TT;"
    :cond_5
    goto :goto_1

    .line 110
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 113
    :cond_7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final matches(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "content"    # Ljava/lang/Object;

    .line 81
    .local p0, "this":Lorg/jdom2/filter/AbstractFilter;, "Lorg/jdom2/filter/AbstractFilter<TT;>;"
    invoke-virtual {p0, p1}, Lorg/jdom2/filter/AbstractFilter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final negate()Lorg/jdom2/filter/Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdom2/filter/Filter<",
            "*>;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lorg/jdom2/filter/AbstractFilter;, "Lorg/jdom2/filter/AbstractFilter<TT;>;"
    instance-of v0, p0, Lorg/jdom2/filter/NegateFilter;

    if-eqz v0, :cond_0

    .line 119
    move-object v0, p0

    check-cast v0, Lorg/jdom2/filter/NegateFilter;

    invoke-virtual {v0}, Lorg/jdom2/filter/NegateFilter;->getBaseFilter()Lorg/jdom2/filter/Filter;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    new-instance v0, Lorg/jdom2/filter/NegateFilter;

    invoke-direct {v0, p0}, Lorg/jdom2/filter/NegateFilter;-><init>(Lorg/jdom2/filter/Filter;)V

    return-object v0
.end method

.method public final or(Lorg/jdom2/filter/Filter;)Lorg/jdom2/filter/Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/filter/Filter<",
            "*>;)",
            "Lorg/jdom2/filter/Filter<",
            "+",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lorg/jdom2/filter/AbstractFilter;, "Lorg/jdom2/filter/AbstractFilter<TT;>;"
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<*>;"
    new-instance v0, Lorg/jdom2/filter/OrFilter;

    invoke-direct {v0, p0, p1}, Lorg/jdom2/filter/OrFilter;-><init>(Lorg/jdom2/filter/Filter;Lorg/jdom2/filter/Filter;)V

    return-object v0
.end method

.method public refine(Lorg/jdom2/filter/Filter;)Lorg/jdom2/filter/Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdom2/filter/Filter<",
            "TR;>;)",
            "Lorg/jdom2/filter/Filter<",
            "TR;>;"
        }
    .end annotation

    .line 136
    .local p0, "this":Lorg/jdom2/filter/AbstractFilter;, "Lorg/jdom2/filter/AbstractFilter<TT;>;"
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TR;>;"
    new-instance v0, Lorg/jdom2/filter/AndFilter;

    invoke-direct {v0, p0, p1}, Lorg/jdom2/filter/AndFilter;-><init>(Lorg/jdom2/filter/Filter;Lorg/jdom2/filter/Filter;)V

    return-object v0
.end method
