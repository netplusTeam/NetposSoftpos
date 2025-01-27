.class public Lio/netty/util/concurrent/FastThreadLocal;
.super Ljava/lang/Object;
.source "FastThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final variablesToRemoveIndex:I


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->nextVariableIndex()I

    move-result v0

    sput v0, Lio/netty/util/concurrent/FastThreadLocal;->variablesToRemoveIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 127
    .local p0, "this":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->nextVariableIndex()I

    move-result v0

    iput v0, p0, Lio/netty/util/concurrent/FastThreadLocal;->index:I

    .line 129
    return-void
.end method

.method private static addToVariablesToRemove(Lio/netty/util/internal/InternalThreadLocalMap;Lio/netty/util/concurrent/FastThreadLocal;)V
    .locals 3
    .param p0, "threadLocalMap"    # Lio/netty/util/internal/InternalThreadLocalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/InternalThreadLocalMap;",
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "*>;)V"
        }
    .end annotation

    .line 99
    .local p1, "variable":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<*>;"
    sget v0, Lio/netty/util/concurrent/FastThreadLocal;->variablesToRemoveIndex:I

    invoke-virtual {p0, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariable(I)Ljava/lang/Object;

    move-result-object v1

    .line 101
    .local v1, "v":Ljava/lang/Object;
    sget-object v2, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    move-object v0, v1

    check-cast v0, Ljava/util/Set;

    .local v0, "variablesToRemove":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/concurrent/FastThreadLocal<*>;>;"
    goto :goto_1

    .line 102
    .end local v0    # "variablesToRemove":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/concurrent/FastThreadLocal<*>;>;"
    :cond_1
    :goto_0
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    .line 103
    .local v2, "variablesToRemove":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/concurrent/FastThreadLocal<*>;>;"
    invoke-virtual {p0, v0, v2}, Lio/netty/util/internal/InternalThreadLocalMap;->setIndexedVariable(ILjava/lang/Object;)Z

    move-object v0, v2

    .line 108
    .end local v2    # "variablesToRemove":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/concurrent/FastThreadLocal<*>;>;"
    .restart local v0    # "variablesToRemove":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/concurrent/FastThreadLocal<*>;>;"
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public static destroy()V
    .locals 0

    .line 94
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->destroy()V

    .line 95
    return-void
.end method

.method private initialize(Lio/netty/util/internal/InternalThreadLocalMap;)Ljava/lang/Object;
    .locals 2
    .param p1, "threadLocalMap"    # Lio/netty/util/internal/InternalThreadLocalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/InternalThreadLocalMap;",
            ")TV;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<TV;>;"
    const/4 v0, 0x0

    .line 177
    .local v0, "v":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/FastThreadLocal;->initialValue()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 180
    goto :goto_0

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 182
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget v1, p0, Lio/netty/util/concurrent/FastThreadLocal;->index:I

    invoke-virtual {p1, v1, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->setIndexedVariable(ILjava/lang/Object;)Z

    .line 183
    invoke-static {p1, p0}, Lio/netty/util/concurrent/FastThreadLocal;->addToVariablesToRemove(Lio/netty/util/internal/InternalThreadLocalMap;Lio/netty/util/concurrent/FastThreadLocal;)V

    .line 184
    return-object v0
.end method

.method public static removeAll()V
    .locals 7

    .line 54
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->getIfSet()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    .line 55
    .local v0, "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    if-nez v0, :cond_0

    .line 56
    return-void

    .line 60
    :cond_0
    :try_start_0
    sget v1, Lio/netty/util/concurrent/FastThreadLocal;->variablesToRemoveIndex:I

    invoke-virtual {v0, v1}, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariable(I)Ljava/lang/Object;

    move-result-object v1

    .line 61
    .local v1, "v":Ljava/lang/Object;
    if-eqz v1, :cond_1

    sget-object v2, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    .line 63
    move-object v2, v1

    check-cast v2, Ljava/util/Set;

    .line 64
    .local v2, "variablesToRemove":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/concurrent/FastThreadLocal<*>;>;"
    const/4 v3, 0x0

    new-array v4, v3, [Lio/netty/util/concurrent/FastThreadLocal;

    .line 65
    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lio/netty/util/concurrent/FastThreadLocal;

    .line 66
    .local v4, "variablesToRemoveArray":[Lio/netty/util/concurrent/FastThreadLocal;, "[Lio/netty/util/concurrent/FastThreadLocal<*>;"
    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v4, v3

    .line 67
    .local v6, "tlv":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<*>;"
    invoke-virtual {v6, v0}, Lio/netty/util/concurrent/FastThreadLocal;->remove(Lio/netty/util/internal/InternalThreadLocalMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v6    # "tlv":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "v":Ljava/lang/Object;
    .end local v2    # "variablesToRemove":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/concurrent/FastThreadLocal<*>;>;"
    .end local v4    # "variablesToRemoveArray":[Lio/netty/util/concurrent/FastThreadLocal;, "[Lio/netty/util/concurrent/FastThreadLocal<*>;"
    :cond_1
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->remove()V

    .line 72
    nop

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v1

    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->remove()V

    .line 72
    throw v1
.end method

.method private static removeFromVariablesToRemove(Lio/netty/util/internal/InternalThreadLocalMap;Lio/netty/util/concurrent/FastThreadLocal;)V
    .locals 2
    .param p0, "threadLocalMap"    # Lio/netty/util/internal/InternalThreadLocalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/InternalThreadLocalMap;",
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "*>;)V"
        }
    .end annotation

    .line 114
    .local p1, "variable":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<*>;"
    sget v0, Lio/netty/util/concurrent/FastThreadLocal;->variablesToRemoveIndex:I

    invoke-virtual {p0, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariable(I)Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "v":Ljava/lang/Object;
    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    .line 122
    .local v1, "variablesToRemove":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/concurrent/FastThreadLocal<*>;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 123
    return-void

    .line 117
    .end local v1    # "variablesToRemove":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/concurrent/FastThreadLocal<*>;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method private setKnownNotUnset(Lio/netty/util/internal/InternalThreadLocalMap;Ljava/lang/Object;)V
    .locals 1
    .param p1, "threadLocalMap"    # Lio/netty/util/internal/InternalThreadLocalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/InternalThreadLocalMap;",
            "TV;)V"
        }
    .end annotation

    .line 214
    .local p0, "this":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lio/netty/util/concurrent/FastThreadLocal;->index:I

    invoke-virtual {p1, v0, p2}, Lio/netty/util/internal/InternalThreadLocalMap;->setIndexedVariable(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {p1, p0}, Lio/netty/util/concurrent/FastThreadLocal;->addToVariablesToRemove(Lio/netty/util/internal/InternalThreadLocalMap;Lio/netty/util/concurrent/FastThreadLocal;)V

    .line 217
    :cond_0
    return-void
.end method

.method public static size()I
    .locals 2

    .line 79
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->getIfSet()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    .line 80
    .local v0, "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    if-nez v0, :cond_0

    .line 81
    const/4 v1, 0x0

    return v1

    .line 83
    :cond_0
    invoke-virtual {v0}, Lio/netty/util/internal/InternalThreadLocalMap;->size()I

    move-result v1

    return v1
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 136
    .local p0, "this":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<TV;>;"
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    .line 137
    .local v0, "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    iget v1, p0, Lio/netty/util/concurrent/FastThreadLocal;->index:I

    invoke-virtual {v0, v1}, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariable(I)Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "v":Ljava/lang/Object;
    sget-object v2, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 139
    return-object v1

    .line 142
    :cond_0
    invoke-direct {p0, v0}, Lio/netty/util/concurrent/FastThreadLocal;->initialize(Lio/netty/util/internal/InternalThreadLocalMap;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public final get(Lio/netty/util/internal/InternalThreadLocalMap;)Ljava/lang/Object;
    .locals 2
    .param p1, "threadLocalMap"    # Lio/netty/util/internal/InternalThreadLocalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/InternalThreadLocalMap;",
            ")TV;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<TV;>;"
    iget v0, p0, Lio/netty/util/concurrent/FastThreadLocal;->index:I

    invoke-virtual {p1, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariable(I)Ljava/lang/Object;

    move-result-object v0

    .line 167
    .local v0, "v":Ljava/lang/Object;
    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 168
    return-object v0

    .line 171
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/FastThreadLocal;->initialize(Lio/netty/util/internal/InternalThreadLocalMap;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final getIfExists()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<TV;>;"
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->getIfSet()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    .line 151
    .local v0, "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    if-eqz v0, :cond_0

    .line 152
    iget v1, p0, Lio/netty/util/concurrent/FastThreadLocal;->index:I

    invoke-virtual {v0, v1}, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariable(I)Ljava/lang/Object;

    move-result-object v1

    .line 153
    .local v1, "v":Ljava/lang/Object;
    sget-object v2, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 154
    return-object v1

    .line 157
    .end local v1    # "v":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    .local p0, "this":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isSet()Z
    .locals 1

    .line 223
    .local p0, "this":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<TV;>;"
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->getIfSet()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/FastThreadLocal;->isSet(Lio/netty/util/internal/InternalThreadLocalMap;)Z

    move-result v0

    return v0
.end method

.method public final isSet(Lio/netty/util/internal/InternalThreadLocalMap;)Z
    .locals 1
    .param p1, "threadLocalMap"    # Lio/netty/util/internal/InternalThreadLocalMap;

    .line 231
    .local p0, "this":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<TV;>;"
    if-eqz p1, :cond_0

    iget v0, p0, Lio/netty/util/concurrent/FastThreadLocal;->index:I

    invoke-virtual {p1, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->isIndexedVariableSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onRemoval(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 275
    .local p0, "this":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public final remove()V
    .locals 1

    .line 237
    .local p0, "this":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<TV;>;"
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->getIfSet()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/FastThreadLocal;->remove(Lio/netty/util/internal/InternalThreadLocalMap;)V

    .line 238
    return-void
.end method

.method public final remove(Lio/netty/util/internal/InternalThreadLocalMap;)V
    .locals 2
    .param p1, "threadLocalMap"    # Lio/netty/util/internal/InternalThreadLocalMap;

    .line 247
    .local p0, "this":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<TV;>;"
    if-nez p1, :cond_0

    .line 248
    return-void

    .line 251
    :cond_0
    iget v0, p0, Lio/netty/util/concurrent/FastThreadLocal;->index:I

    invoke-virtual {p1, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->removeIndexedVariable(I)Ljava/lang/Object;

    move-result-object v0

    .line 252
    .local v0, "v":Ljava/lang/Object;
    invoke-static {p1, p0}, Lio/netty/util/concurrent/FastThreadLocal;->removeFromVariablesToRemove(Lio/netty/util/internal/InternalThreadLocalMap;Lio/netty/util/concurrent/FastThreadLocal;)V

    .line 254
    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 256
    :try_start_0
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/FastThreadLocal;->onRemoval(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 261
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public final set(Lio/netty/util/internal/InternalThreadLocalMap;Ljava/lang/Object;)V
    .locals 1
    .param p1, "threadLocalMap"    # Lio/netty/util/internal/InternalThreadLocalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/InternalThreadLocalMap;",
            "TV;)V"
        }
    .end annotation

    .line 203
    .local p0, "this":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    sget-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq p2, v0, :cond_0

    .line 204
    invoke-direct {p0, p1, p2}, Lio/netty/util/concurrent/FastThreadLocal;->setKnownNotUnset(Lio/netty/util/internal/InternalThreadLocalMap;Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/FastThreadLocal;->remove(Lio/netty/util/internal/InternalThreadLocalMap;)V

    .line 208
    :goto_0
    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 191
    .local p0, "this":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    sget-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 192
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    .line 193
    .local v0, "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    invoke-direct {p0, v0, p1}, Lio/netty/util/concurrent/FastThreadLocal;->setKnownNotUnset(Lio/netty/util/internal/InternalThreadLocalMap;Ljava/lang/Object;)V

    .line 194
    .end local v0    # "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/FastThreadLocal;->remove()V

    .line 197
    :goto_0
    return-void
.end method
