.class public Lio/netty/channel/FixedRecvByteBufAllocator;
.super Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;
.source "FixedRecvByteBufAllocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/FixedRecvByteBufAllocator$HandleImpl;
    }
.end annotation


# instance fields
.field private final bufferSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .line 45
    invoke-direct {p0}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;-><init>()V

    .line 46
    const-string v0, "bufferSize"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 47
    iput p1, p0, Lio/netty/channel/FixedRecvByteBufAllocator;->bufferSize:I

    .line 48
    return-void
.end method


# virtual methods
.method public newHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;
    .locals 2

    .line 53
    new-instance v0, Lio/netty/channel/FixedRecvByteBufAllocator$HandleImpl;

    iget v1, p0, Lio/netty/channel/FixedRecvByteBufAllocator;->bufferSize:I

    invoke-direct {v0, p0, v1}, Lio/netty/channel/FixedRecvByteBufAllocator$HandleImpl;-><init>(Lio/netty/channel/FixedRecvByteBufAllocator;I)V

    return-object v0
.end method

.method public bridge synthetic respectMaybeMoreData(Z)Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lio/netty/channel/FixedRecvByteBufAllocator;->respectMaybeMoreData(Z)Lio/netty/channel/FixedRecvByteBufAllocator;

    move-result-object p1

    return-object p1
.end method

.method public respectMaybeMoreData(Z)Lio/netty/channel/FixedRecvByteBufAllocator;
    .locals 0
    .param p1, "respectMaybeMoreData"    # Z

    .line 58
    invoke-super {p0, p1}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->respectMaybeMoreData(Z)Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;

    .line 59
    return-object p0
.end method
