.class public interface abstract Lcom/hivemq/client/internal/util/collections/ImmutableList;
.super Ljava/lang/Object;
.source "ImmutableList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;,
        Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method public static builder()Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableList$1;)V

    return-object v0
.end method

.method public static builder(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .locals 2
    .param p0, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;-><init>(ILcom/hivemq/client/internal/util/collections/ImmutableList$1;)V

    return-object v0
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 88
    .local p0, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const-string v0, "Immutable list"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->copyOf(Ljava/util/Collection;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Collection;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 95
    .local p0, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    instance-of v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableList;

    if-eqz v0, :cond_0

    .line 98
    move-object v0, p0

    check-cast v0, Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->trim()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 106
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->of([Ljava/lang/Object;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0

    .line 104
    :pswitch_0
    invoke-static {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->first(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->of(Ljava/lang/Object;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0

    .line 102
    :pswitch_1
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->of()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static copyOf([Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 70
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    const-string v0, "Immutable list"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->copyOf([Ljava/lang/Object;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 75
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 82
    array-length v0, p0

    const-class v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->of([Ljava/lang/Object;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0

    .line 80
    :pswitch_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->of(Ljava/lang/Object;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0

    .line 78
    :pswitch_1
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->of()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static of()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->of()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 41
    .local p0, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->of(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 46
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->of([Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 51
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->of([Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;[TE;)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 59
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "others":[Ljava/lang/Object;, "[TE;"
    const-string v0, "Immutable list elements"

    invoke-static {p3, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    array-length v0, p3

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    .local v0, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 62
    const/4 v3, 0x1

    aput-object p1, v0, v3

    .line 63
    const/4 v3, 0x2

    aput-object p2, v0, v3

    .line 64
    array-length v3, p3

    invoke-static {p3, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->of([Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v1

    return-object v1
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 128
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    invoke-interface {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const-string v0, "Collection"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 135
    .local v1, "o":Ljava/lang/Object;
    invoke-interface {p0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    const/4 v0, 0x0

    return v0

    .line 138
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 1

    .line 120
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    invoke-interface {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    invoke-interface {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->listIterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 32
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    invoke-interface {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->iterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 32
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    invoke-interface {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->listIterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 32
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    invoke-interface {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract subList(II)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 32
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    invoke-interface {p0, p1, p2}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->subList(II)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public trim()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 159
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<TE;>;"
    return-object p0
.end method
