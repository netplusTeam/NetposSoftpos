.class final Lio/netty/util/Recycler$WeakOrderQueue$Head;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler$WeakOrderQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Head"
.end annotation


# instance fields
.field private final availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

.field link:Lio/netty/util/Recycler$WeakOrderQueue$Link;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "availableSharedCapacity"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 259
    return-void
.end method

.method private reclaimSpace(I)V
    .locals 1
    .param p1, "space"    # I

    .line 281
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 282
    return-void
.end method

.method static reserveSpaceForLink(Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 2
    .param p0, "availableSharedCapacity"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .line 299
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 300
    .local v0, "available":I
    invoke-static {}, Lio/netty/util/Recycler;->access$500()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 301
    const/4 v1, 0x0

    return v1

    .line 303
    :cond_0
    invoke-static {}, Lio/netty/util/Recycler;->access$500()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    const/4 v1, 0x1

    return v1

    .line 306
    .end local v0    # "available":I
    :cond_1
    goto :goto_0
.end method


# virtual methods
.method newLink()Lio/netty/util/Recycler$WeakOrderQueue$Link;
    .locals 1

    .line 294
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->reserveSpaceForLink(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;

    invoke-direct {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method reclaimAllSpaceAndUnlink()V
    .locals 4

    .line 265
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 266
    .local v0, "head":Lio/netty/util/Recycler$WeakOrderQueue$Link;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 267
    const/4 v2, 0x0

    .line 268
    .local v2, "reclaimSpace":I
    :goto_0
    if-eqz v0, :cond_0

    .line 269
    invoke-static {}, Lio/netty/util/Recycler;->access$500()I

    move-result v3

    add-int/2addr v2, v3

    .line 270
    iget-object v3, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 272
    .local v3, "next":Lio/netty/util/Recycler$WeakOrderQueue$Link;
    iput-object v1, v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 273
    move-object v0, v3

    .line 274
    .end local v3    # "next":Lio/netty/util/Recycler$WeakOrderQueue$Link;
    goto :goto_0

    .line 275
    :cond_0
    if-lez v2, :cond_1

    .line 276
    invoke-direct {p0, v2}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->reclaimSpace(I)V

    .line 278
    :cond_1
    return-void
.end method

.method relink(Lio/netty/util/Recycler$WeakOrderQueue$Link;)V
    .locals 1
    .param p1, "link"    # Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 285
    invoke-static {}, Lio/netty/util/Recycler;->access$500()I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/util/Recycler$WeakOrderQueue$Head;->reclaimSpace(I)V

    .line 286
    iput-object p1, p0, Lio/netty/util/Recycler$WeakOrderQueue$Head;->link:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 287
    return-void
.end method
