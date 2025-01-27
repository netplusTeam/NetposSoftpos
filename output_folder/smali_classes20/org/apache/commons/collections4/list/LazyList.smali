.class public Lorg/apache/commons/collections4/list/LazyList;
.super Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;
.source "LazyList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x17b569d9a565ab0eL


# instance fields
.field private final factory:Lorg/apache/commons/collections4/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Factory<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TE;>;)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lorg/apache/commons/collections4/list/LazyList;, "Lorg/apache/commons/collections4/list/LazyList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "factory":Lorg/apache/commons/collections4/Factory;, "Lorg/apache/commons/collections4/Factory<+TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    .line 91
    if-eqz p2, :cond_0

    .line 94
    iput-object p2, p0, Lorg/apache/commons/collections4/list/LazyList;->factory:Lorg/apache/commons/collections4/Factory;

    .line 95
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lazyList(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/list/LazyList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/list/LazyList<",
            "TE;>;"
        }
    .end annotation

    .line 78
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "factory":Lorg/apache/commons/collections4/Factory;, "Lorg/apache/commons/collections4/Factory<+TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/LazyList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/commons/collections4/list/LazyList;, "Lorg/apache/commons/collections4/list/LazyList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 112
    .local v0, "size":I
    if-ge p1, v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 115
    .local v1, "object":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    .line 117
    iget-object v2, p0, Lorg/apache/commons/collections4/list/LazyList;->factory:Lorg/apache/commons/collections4/Factory;

    invoke-interface {v2}, Lorg/apache/commons/collections4/Factory;->create()Ljava/lang/Object;

    move-result-object v1

    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-object v1

    .line 122
    :cond_0
    return-object v1

    .line 125
    .end local v1    # "object":Ljava/lang/Object;, "TE;"
    :cond_1
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections4/list/LazyList;->factory:Lorg/apache/commons/collections4/Factory;

    invoke-interface {v1}, Lorg/apache/commons/collections4/Factory;->create()Ljava/lang/Object;

    move-result-object v1

    .line 130
    .local v1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-object v1
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 136
    .local p0, "this":Lorg/apache/commons/collections4/list/LazyList;, "Lorg/apache/commons/collections4/list/LazyList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/LazyList;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 137
    .local v0, "sub":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v1, Lorg/apache/commons/collections4/list/LazyList;

    iget-object v2, p0, Lorg/apache/commons/collections4/list/LazyList;->factory:Lorg/apache/commons/collections4/Factory;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections4/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)V

    return-object v1
.end method
