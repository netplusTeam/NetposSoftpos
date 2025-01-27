.class public Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;
.super Ljava/lang/Object;
.source "RecvByteBufAllocator.java"

# interfaces
.implements Lio/netty/channel/RecvByteBufAllocator$Handle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/RecvByteBufAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelegatingHandle"
.end annotation


# instance fields
.field private final delegate:Lio/netty/channel/RecvByteBufAllocator$Handle;


# direct methods
.method public constructor <init>(Lio/netty/channel/RecvByteBufAllocator$Handle;)V
    .locals 1
    .param p1, "delegate"    # Lio/netty/channel/RecvByteBufAllocator$Handle;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const-string v0, "delegate"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/RecvByteBufAllocator$Handle;

    iput-object v0, p0, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->delegate:Lio/netty/channel/RecvByteBufAllocator$Handle;

    .line 128
    return-void
.end method


# virtual methods
.method public allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;

    .line 140
    iget-object v0, p0, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->delegate:Lio/netty/channel/RecvByteBufAllocator$Handle;

    invoke-interface {v0, p1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public attemptedBytesRead()I
    .locals 1

    .line 175
    iget-object v0, p0, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->delegate:Lio/netty/channel/RecvByteBufAllocator$Handle;

    invoke-interface {v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->attemptedBytesRead()I

    move-result v0

    return v0
.end method

.method public attemptedBytesRead(I)V
    .locals 1
    .param p1, "bytes"    # I

    .line 180
    iget-object v0, p0, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->delegate:Lio/netty/channel/RecvByteBufAllocator$Handle;

    invoke-interface {v0, p1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->attemptedBytesRead(I)V

    .line 181
    return-void
.end method

.method public continueReading()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->delegate:Lio/netty/channel/RecvByteBufAllocator$Handle;

    invoke-interface {v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->continueReading()Z

    move-result v0

    return v0
.end method

.method protected final delegate()Lio/netty/channel/RecvByteBufAllocator$Handle;
    .locals 1

    .line 135
    iget-object v0, p0, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->delegate:Lio/netty/channel/RecvByteBufAllocator$Handle;

    return-object v0
.end method

.method public guess()I
    .locals 1

    .line 145
    iget-object v0, p0, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->delegate:Lio/netty/channel/RecvByteBufAllocator$Handle;

    invoke-interface {v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->guess()I

    move-result v0

    return v0
.end method

.method public incMessagesRead(I)V
    .locals 1
    .param p1, "numMessages"    # I

    .line 155
    iget-object v0, p0, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->delegate:Lio/netty/channel/RecvByteBufAllocator$Handle;

    invoke-interface {v0, p1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->incMessagesRead(I)V

    .line 156
    return-void
.end method

.method public lastBytesRead()I
    .locals 1

    .line 165
    iget-object v0, p0, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->delegate:Lio/netty/channel/RecvByteBufAllocator$Handle;

    invoke-interface {v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead()I

    move-result v0

    return v0
.end method

.method public lastBytesRead(I)V
    .locals 1
    .param p1, "bytes"    # I

    .line 160
    iget-object v0, p0, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->delegate:Lio/netty/channel/RecvByteBufAllocator$Handle;

    invoke-interface {v0, p1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead(I)V

    .line 161
    return-void
.end method

.method public readComplete()V
    .locals 1

    .line 185
    iget-object v0, p0, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->delegate:Lio/netty/channel/RecvByteBufAllocator$Handle;

    invoke-interface {v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->readComplete()V

    .line 186
    return-void
.end method

.method public reset(Lio/netty/channel/ChannelConfig;)V
    .locals 1
    .param p1, "config"    # Lio/netty/channel/ChannelConfig;

    .line 150
    iget-object v0, p0, Lio/netty/channel/RecvByteBufAllocator$DelegatingHandle;->delegate:Lio/netty/channel/RecvByteBufAllocator$Handle;

    invoke-interface {v0, p1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 151
    return-void
.end method
