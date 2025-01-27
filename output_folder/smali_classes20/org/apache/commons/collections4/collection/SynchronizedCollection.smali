.class public Lorg/apache/commons/collections4/collection/SynchronizedCollection;
.super Ljava/lang/Object;
.source "SynchronizedCollection.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x217c0172bf490b22L


# instance fields
.field private final collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected final lock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-eqz p1, :cond_0

    .line 74
    iput-object p1, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    .line 75
    iput-object p0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    .line 76
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Collection must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 2
    .param p2, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    if-eqz p1, :cond_1

    .line 89
    if-eqz p2, :cond_0

    .line 92
    iput-object p1, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    .line 93
    iput-object p2, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    .line 94
    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Lock must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Collection must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synchronizedCollection(Ljava/util/Collection;)Lorg/apache/commons/collections4/collection/SynchronizedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lorg/apache/commons/collections4/collection/SynchronizedCollection<",
            "TT;>;"
        }
    .end annotation

    .line 60
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 116
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 2

    .line 123
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 125
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 130
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected decorated()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 209
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    const/4 v1, 0x1

    if-ne p1, p0, :cond_0

    .line 211
    :try_start_0
    monitor-exit v0

    return v1

    .line 214
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 213
    :cond_0
    if-eq p1, p0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    monitor-exit v0

    return v1

    .line 214
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 219
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 221
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 144
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 181
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 188
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 195
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 2

    .line 202
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 167
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    .local p1, "object":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 226
    .local p0, "this":Lorg/apache/commons/collections4/collection/SynchronizedCollection;, "Lorg/apache/commons/collections4/collection/SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
