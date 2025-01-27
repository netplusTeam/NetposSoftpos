.class public abstract Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;
.super Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;
.source "AbstractQueueDecorator.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x247efb3deb433b45L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 47
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>()V

    .line 48
    return-void
.end method

.method protected constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "TE;>;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 37
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;->decorated()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;->decorated()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;->decorated()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;->decorated()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;->decorated()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;->decorated()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;, "Lorg/apache/commons/collections4/queue/AbstractQueueDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/AbstractQueueDecorator;->decorated()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
