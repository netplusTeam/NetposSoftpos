.class final Lio/netty/channel/group/CombinedIterator;
.super Ljava/lang/Object;
.source "CombinedIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private currentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final i1:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final i2:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Ljava/util/Iterator<",
            "TE;>;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lio/netty/channel/group/CombinedIterator;, "Lio/netty/channel/group/CombinedIterator<TE;>;"
    .local p1, "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .local p2, "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "i1"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lio/netty/channel/group/CombinedIterator;->i1:Ljava/util/Iterator;

    .line 33
    const-string v0, "i2"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lio/netty/channel/group/CombinedIterator;->i2:Ljava/util/Iterator;

    .line 34
    iput-object p1, p0, Lio/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    .line 35
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 40
    .local p0, "this":Lio/netty/channel/group/CombinedIterator;, "Lio/netty/channel/group/CombinedIterator<TE;>;"
    :goto_0
    iget-object v0, p0, Lio/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_0
    iget-object v0, p0, Lio/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    iget-object v1, p0, Lio/netty/channel/group/CombinedIterator;->i1:Ljava/util/Iterator;

    if-ne v0, v1, :cond_1

    .line 45
    iget-object v0, p0, Lio/netty/channel/group/CombinedIterator;->i2:Ljava/util/Iterator;

    iput-object v0, p0, Lio/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lio/netty/channel/group/CombinedIterator;, "Lio/netty/channel/group/CombinedIterator<TE;>;"
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/util/NoSuchElementException;
    iget-object v1, p0, Lio/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    iget-object v2, p0, Lio/netty/channel/group/CombinedIterator;->i1:Ljava/util/Iterator;

    if-ne v1, v2, :cond_0

    .line 59
    iget-object v1, p0, Lio/netty/channel/group/CombinedIterator;->i2:Ljava/util/Iterator;

    iput-object v1, p0, Lio/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    .line 63
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    goto :goto_0

    .line 61
    .restart local v0    # "e":Ljava/util/NoSuchElementException;
    :cond_0
    throw v0
.end method

.method public remove()V
    .locals 1

    .line 69
    .local p0, "this":Lio/netty/channel/group/CombinedIterator;, "Lio/netty/channel/group/CombinedIterator<TE;>;"
    iget-object v0, p0, Lio/netty/channel/group/CombinedIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 70
    return-void
.end method
