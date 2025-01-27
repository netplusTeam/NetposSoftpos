.class final Lio/netty/util/Recycler$DefaultHandle;
.super Ljava/lang/Object;
.source "Recycler.java"

# interfaces
.implements Lio/netty/util/Recycler$Handle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/util/Recycler$Handle<",
        "TT;>;"
    }
.end annotation


# instance fields
.field hasBeenRecycled:Z

.field lastRecycledId:I

.field recycleId:I

.field stack:Lio/netty/util/Recycler$Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler$Stack<",
            "*>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/netty/util/Recycler$Stack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "*>;)V"
        }
    .end annotation

    .line 209
    .local p0, "this":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle<TT;>;"
    .local p1, "stack":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    .line 211
    return-void
.end method


# virtual methods
.method public recycle(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 215
    .local p0, "this":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle<TT;>;"
    iget-object v0, p0, Lio/netty/util/Recycler$DefaultHandle;->value:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    .line 219
    iget-object v0, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    .line 220
    .local v0, "stack":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<*>;"
    iget v1, p0, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    iget v2, p0, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0, p0}, Lio/netty/util/Recycler$Stack;->push(Lio/netty/util/Recycler$DefaultHandle;)V

    .line 225
    return-void

    .line 221
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "recycled already"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    .end local v0    # "stack":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<*>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object does not belong to handle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
