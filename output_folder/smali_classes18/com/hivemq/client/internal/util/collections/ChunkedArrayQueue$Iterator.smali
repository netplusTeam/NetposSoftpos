.class public Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;
.super Ljava/lang/Object;
.source "ChunkedArrayQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Iterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private iterated:I

.field private iteratorChunk:[Ljava/lang/Object;

.field private iteratorIndex:I

.field final synthetic this$0:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    .line 172
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;, "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<TE;>.Iterator;"
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->this$0:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->reset()V

    .line 174
    return-void
.end method


# virtual methods
.method public getIterated()I
    .locals 1

    .line 232
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;, "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<TE;>.Iterator;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 184
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;, "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<TE;>.Iterator;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->this$0:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-static {v1}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->access$200(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;, "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<TE;>.Iterator;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->this$0:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->access$300(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, "iteratorSingle":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 191
    iget v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    if-gtz v2, :cond_0

    .line 194
    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    .line 195
    return-object v0

    .line 192
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorChunk:[Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 200
    iget v3, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorIndex:I

    aget-object v2, v2, v3

    .line 201
    .local v2, "o":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 205
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    .line 206
    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 207
    .local v3, "nextChunk":[Ljava/lang/Object;
    iput-object v3, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorChunk:[Ljava/lang/Object;

    .line 208
    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorIndex:I

    .line 210
    aget-object v3, v3, v5

    .line 211
    .local v3, "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 213
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    move-object v3, v2

    .line 214
    .restart local v3    # "e":Ljava/lang/Object;, "TE;"
    iget v4, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorIndex:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorIndex:I

    .line 215
    iget-object v6, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->this$0:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-static {v6}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->access$400(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 216
    iput v5, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorIndex:I

    .line 219
    :cond_3
    :goto_0
    iget v4, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    .line 220
    return-object v3

    .line 202
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    :cond_4
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 198
    .end local v2    # "o":Ljava/lang/Object;
    :cond_5
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 2

    .line 225
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;, "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<TE;>.Iterator;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    if-ge v0, v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->this$0:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->poll()Ljava/lang/Object;

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    .line 229
    return-void
.end method

.method public reset()V
    .locals 1

    .line 177
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;, "Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue<TE;>.Iterator;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->this$0:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->access$000(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorChunk:[Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->this$0:Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;->access$100(Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue;)I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iteratorIndex:I

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/ChunkedArrayQueue$Iterator;->iterated:I

    .line 180
    return-void
.end method
