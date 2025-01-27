.class public final Lio/netty/util/internal/ReadOnlyIterator;
.super Ljava/lang/Object;
.source "ReadOnlyIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 24
    .local p0, "this":Lio/netty/util/internal/ReadOnlyIterator;, "Lio/netty/util/internal/ReadOnlyIterator<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "iterator"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lio/netty/util/internal/ReadOnlyIterator;->iterator:Ljava/util/Iterator;

    .line 26
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 30
    .local p0, "this":Lio/netty/util/internal/ReadOnlyIterator;, "Lio/netty/util/internal/ReadOnlyIterator<TT;>;"
    iget-object v0, p0, Lio/netty/util/internal/ReadOnlyIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 35
    .local p0, "this":Lio/netty/util/internal/ReadOnlyIterator;, "Lio/netty/util/internal/ReadOnlyIterator<TT;>;"
    iget-object v0, p0, Lio/netty/util/internal/ReadOnlyIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 40
    .local p0, "this":Lio/netty/util/internal/ReadOnlyIterator;, "Lio/netty/util/internal/ReadOnlyIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
