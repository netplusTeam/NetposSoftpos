.class public abstract Lorg/apache/commons/collections4/list/AbstractListDecorator;
.super Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;
.source "AbstractListDecorator.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3e75d6dec7f26ae7L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 44
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractListDecorator;, "Lorg/apache/commons/collections4/list/AbstractListDecorator<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>()V

    .line 45
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractListDecorator;, "Lorg/apache/commons/collections4/list/AbstractListDecorator<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 55
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractListDecorator;, "Lorg/apache/commons/collections4/list/AbstractListDecorator<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractListDecorator;, "Lorg/apache/commons/collections4/list/AbstractListDecorator<TE;>;"
    .local p2, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 33
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractListDecorator;, "Lorg/apache/commons/collections4/list/AbstractListDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractListDecorator;, "Lorg/apache/commons/collections4/list/AbstractListDecorator<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 69
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractListDecorator;, "Lorg/apache/commons/collections4/list/AbstractListDecorator<TE;>;"
    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractListDecorator;, "Lorg/apache/commons/collections4/list/AbstractListDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 74
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractListDecorator;, "Lorg/apache/commons/collections4/list/AbstractListDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 96
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractListDecorator;, "Lorg/apache/commons/collections4/list/AbstractListDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractListDecorator;, "Lorg/apache/commons/collections4/list/AbstractListDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractListDecorator;, "Lorg/apache/commons/collections4/list/AbstractListDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractListDecorator;, "Lorg/apache/commons/collections4/list/AbstractListDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractListDecorator;, "Lorg/apache/commons/collections4/list/AbstractListDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractListDecorator;, "Lorg/apache/commons/collections4/list/AbstractListDecorator<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractListDecorator;, "Lorg/apache/commons/collections4/list/AbstractListDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
