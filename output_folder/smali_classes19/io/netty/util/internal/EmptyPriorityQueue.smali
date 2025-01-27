.class public final Lio/netty/util/internal/EmptyPriorityQueue;
.super Ljava/lang/Object;
.source "EmptyPriorityQueue.java"

# interfaces
.implements Lio/netty/util/internal/PriorityQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/util/internal/PriorityQueue<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lio/netty/util/internal/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/PriorityQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lio/netty/util/internal/EmptyPriorityQueue;

    invoke-direct {v0}, Lio/netty/util/internal/EmptyPriorityQueue;-><init>()V

    sput-object v0, Lio/netty/util/internal/EmptyPriorityQueue;->INSTANCE:Lio/netty/util/internal/PriorityQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static instance()Lio/netty/util/internal/EmptyPriorityQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/netty/util/internal/EmptyPriorityQueue<",
            "TV;>;"
        }
    .end annotation

    .line 34
    sget-object v0, Lio/netty/util/internal/EmptyPriorityQueue;->INSTANCE:Lio/netty/util/internal/PriorityQueue;

    check-cast v0, Lio/netty/util/internal/EmptyPriorityQueue;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 86
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 101
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 0

    .line 116
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    return-void
.end method

.method public clearIgnoringIndexes()V
    .locals 0

    .line 120
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 63
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 96
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsTyped(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 44
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    .local p1, "node":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 124
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    instance-of v0, p1, Lio/netty/util/internal/PriorityQueue;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/netty/util/internal/PriorityQueue;

    invoke-interface {v0}, Lio/netty/util/internal/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 129
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 58
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 134
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public priorityChanged(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    .local p1, "node":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 91
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    const/4 v0, 0x0

    return v0
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

    .line 106
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public removeTyped(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 39
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    .local p1, "node":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return v0
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

    .line 111
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 53
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 73
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">([TT1;)[TT1;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT1;"
    array-length v0, p1

    if-lez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 81
    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 159
    .local p0, "this":Lio/netty/util/internal/EmptyPriorityQueue;, "Lio/netty/util/internal/EmptyPriorityQueue<TT;>;"
    const-class v0, Lio/netty/util/internal/EmptyPriorityQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
