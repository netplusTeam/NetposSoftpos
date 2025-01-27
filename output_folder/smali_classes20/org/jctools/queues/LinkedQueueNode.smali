.class final Lorg/jctools/queues/LinkedQueueNode;
.super Ljava/lang/Object;
.source "LinkedQueueNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NEXT_OFFSET:J


# instance fields
.field private volatile next:Lorg/jctools/queues/LinkedQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lorg/jctools/queues/LinkedQueueNode;

    const-string v1, "next"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/queues/LinkedQueueNode;->NEXT_OFFSET:J

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 28
    .local p0, "this":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jctools/queues/LinkedQueueNode;-><init>(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    .local p1, "val":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lorg/jctools/queues/LinkedQueueNode;->spValue(Ljava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getAndNullValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    invoke-virtual {p0}, Lorg/jctools/queues/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "temp":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/jctools/queues/LinkedQueueNode;->spValue(Ljava/lang/Object;)V

    .line 45
    return-object v0
.end method

.method public lpValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/LinkedQueueNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public lvNext()Lorg/jctools/queues/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    iget-object v0, p0, Lorg/jctools/queues/LinkedQueueNode;->next:Lorg/jctools/queues/LinkedQueueNode;

    return-object v0
.end method

.method public soNext(Lorg/jctools/queues/LinkedQueueNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/LinkedQueueNode<",
            "TE;>;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    .local p1, "n":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lorg/jctools/queues/LinkedQueueNode;->NEXT_OFFSET:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 61
    return-void
.end method

.method public spValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/jctools/queues/LinkedQueueNode;, "Lorg/jctools/queues/LinkedQueueNode<TE;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Lorg/jctools/queues/LinkedQueueNode;->value:Ljava/lang/Object;

    .line 56
    return-void
.end method
