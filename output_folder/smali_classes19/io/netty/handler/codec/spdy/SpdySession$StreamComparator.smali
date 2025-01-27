.class final Lio/netty/handler/codec/spdy/SpdySession$StreamComparator;
.super Ljava/lang/Object;
.source "SpdySession.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/spdy/SpdySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StreamComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/spdy/SpdySession;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/spdy/SpdySession;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamComparator;->this$0:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 5
    .param p1, "id1"    # Ljava/lang/Integer;
    .param p2, "id2"    # Ljava/lang/Integer;

    .line 331
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamComparator;->this$0:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-static {v0}, Lio/netty/handler/codec/spdy/SpdySession;->access$000(Lio/netty/handler/codec/spdy/SpdySession;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 332
    .local v0, "state1":Lio/netty/handler/codec/spdy/SpdySession$StreamState;
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamComparator;->this$0:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-static {v1}, Lio/netty/handler/codec/spdy/SpdySession;->access$000(Lio/netty/handler/codec/spdy/SpdySession;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 334
    .local v1, "state2":Lio/netty/handler/codec/spdy/SpdySession$StreamState;
    invoke-virtual {v0}, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->getPriority()B

    move-result v2

    invoke-virtual {v1}, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->getPriority()B

    move-result v3

    sub-int/2addr v2, v3

    .line 335
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 336
    return v2

    .line 339
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 325
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/spdy/SpdySession$StreamComparator;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
