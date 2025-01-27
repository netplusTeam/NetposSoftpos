.class public Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;
.super Ljava/lang/Object;
.source "ChunkedArrayQueue.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final chunkSize:I

.field private consumerChunk:[Ljava/lang/Object;

.field private consumerIndex:I

.field private producerChunk:[Ljava/lang/Object;

.field private producerIndex:I

.field private single:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "chunkSize"    # I

    .line 39
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;, "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->chunkSize:I

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    .line 29
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerChunk:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)I
    .locals 1
    .param p0, "x0"    # Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    .line 29
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)I
    .locals 1
    .param p0, "x0"    # Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    .line 29
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    return v0
.end method

.method static synthetic access$300(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    .line 29
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->single:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)I
    .locals 1
    .param p0, "x0"    # Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    .line 29
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->chunkSize:I

    return v0
.end method

.method private offerQueue(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;, "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->producerChunk:[Ljava/lang/Object;

    .line 73
    .local v0, "producerChunk":[Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 74
    iget v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->producerIndex:I

    .line 75
    .local v1, "producerIndex":I
    iget v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->chunkSize:I

    if-eq v1, v2, :cond_0

    iget-object v3, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerChunk:[Ljava/lang/Object;

    if-ne v0, v3, :cond_2

    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    .line 77
    :cond_0
    iget v3, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    if-lt v3, v2, :cond_1

    .line 78
    new-array v2, v2, [Ljava/lang/Object;

    .line 79
    .local v2, "chunk":[Ljava/lang/Object;
    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    .line 80
    .local v3, "o":Ljava/lang/Object;
    add-int/lit8 v4, v1, -0x1

    aput-object v2, v0, v4

    .line 81
    move-object v0, v2

    .line 82
    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 83
    iput-object v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->producerChunk:[Ljava/lang/Object;

    .line 84
    const/4 v1, 0x1

    .line 85
    .end local v2    # "chunk":[Ljava/lang/Object;
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 86
    :cond_1
    const/4 v1, 0x0

    .line 89
    :cond_2
    :goto_0
    aput-object p1, v0, v1

    .line 90
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->producerIndex:I

    .line 91
    iget v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    .line 92
    return-void

    .line 73
    .end local v1    # "producerIndex":I
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 157
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;, "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<TE;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 48
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;, "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<TE;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<",
            "TE;>.Iterator;"
        }
    .end annotation

    .line 163
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;, "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<TE;>;"
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;-><init>(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 28
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;, "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<TE;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->iterator()Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;, "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 53
    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    .line 54
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->single:Ljava/lang/Object;

    .line 55
    return-void

    .line 57
    :cond_0
    if-ne v0, v1, :cond_2

    .line 58
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->producerChunk:[Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 59
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->chunkSize:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerChunk:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->producerChunk:[Ljava/lang/Object;

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->single:Ljava/lang/Object;

    .line 62
    .local v0, "single":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    .line 63
    const/4 v1, 0x0

    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->single:Ljava/lang/Object;

    .line 65
    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->offerQueue(Ljava/lang/Object;)V

    .line 68
    .end local v0    # "single":Ljava/lang/Object;, "TE;"
    :cond_2
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->offerQueue(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;, "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<TE;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->single:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 134
    return-object v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerChunk:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 137
    return-object v1

    .line 139
    :cond_1
    iget v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerIndex:I

    aget-object v0, v0, v2

    .line 140
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 141
    return-object v1

    .line 144
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [Ljava/lang/Object;

    if-ne v1, v2, :cond_3

    .line 145
    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 147
    .local v1, "nextChunk":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 148
    .local v1, "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 150
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_3
    move-object v1, v0

    .line 152
    .restart local v1    # "e":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;, "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<TE;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->single:Ljava/lang/Object;

    .line 96
    .local v0, "single":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 97
    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    .line 98
    iput-object v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->single:Ljava/lang/Object;

    .line 99
    return-object v0

    .line 101
    :cond_0
    iget-object v3, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerChunk:[Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 102
    return-object v2

    .line 104
    :cond_1
    iget-object v3, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerChunk:[Ljava/lang/Object;

    .line 105
    .local v3, "consumerChunk":[Ljava/lang/Object;
    iget v4, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerIndex:I

    .line 106
    .local v4, "consumerIndex":I
    aget-object v5, v3, v4

    .line 107
    .local v5, "o":Ljava/lang/Object;
    if-nez v5, :cond_2

    .line 108
    return-object v2

    .line 110
    :cond_2
    aput-object v2, v3, v4

    .line 112
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, [Ljava/lang/Object;

    if-ne v6, v7, :cond_3

    .line 113
    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 114
    .local v6, "nextChunk":[Ljava/lang/Object;
    iput-object v6, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerChunk:[Ljava/lang/Object;

    .line 115
    const/4 v4, 0x1

    .line 117
    aget-object v7, v6, v1

    .line 118
    .local v7, "e":Ljava/lang/Object;, "TE;"
    aput-object v2, v6, v1

    .line 119
    .end local v6    # "nextChunk":[Ljava/lang/Object;
    goto :goto_0

    .line 121
    .end local v7    # "e":Ljava/lang/Object;, "TE;"
    :cond_3
    move-object v7, v5

    .line 122
    .restart local v7    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v4, v4, 0x1

    .line 123
    iget v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->chunkSize:I

    if-ne v4, v1, :cond_4

    .line 124
    const/4 v4, 0x0

    .line 127
    :cond_4
    :goto_0
    iget v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    .line 128
    iput v4, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->consumerIndex:I

    .line 129
    return-object v7
.end method

.method public size()I
    .locals 1

    .line 44
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;, "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<TE;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->size:I

    return v0
.end method
