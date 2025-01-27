.class public abstract Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;
.super Ljava/lang/Object;
.source "DefaultMaxMessagesRecvByteBufAllocator.java"

# interfaces
.implements Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "MaxMessageHandle"
.end annotation


# instance fields
.field private attemptedBytesRead:I

.field private config:Lio/netty/channel/ChannelConfig;

.field private final defaultMaybeMoreSupplier:Lio/netty/util/UncheckedBooleanSupplier;

.field private lastBytesRead:I

.field private maxMessagePerRead:I

.field private final respectMaybeMoreData:Z

.field final synthetic this$0:Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;

.field private totalBytesRead:I

.field private totalMessages:I


# direct methods
.method public constructor <init>(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;)V
    .locals 1
    .param p1, "this$0"    # Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;

    .line 87
    iput-object p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->this$0:Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->access$000(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;)Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->respectMaybeMoreData:Z

    .line 95
    new-instance v0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle$1;

    invoke-direct {v0, p0}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle$1;-><init>(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;)V

    iput-object v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->defaultMaybeMoreSupplier:Lio/netty/util/UncheckedBooleanSupplier;

    return-void
.end method

.method static synthetic access$100(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;

    .line 87
    iget v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->attemptedBytesRead:I

    return v0
.end method

.method static synthetic access$200(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;

    .line 87
    iget v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->lastBytesRead:I

    return v0
.end method


# virtual methods
.method public allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;

    .line 114
    invoke-virtual {p0}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->guess()I

    move-result v0

    invoke-interface {p1, v0}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public attemptedBytesRead()I
    .locals 1

    .line 154
    iget v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->attemptedBytesRead:I

    return v0
.end method

.method public attemptedBytesRead(I)V
    .locals 0
    .param p1, "bytes"    # I

    .line 159
    iput p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->attemptedBytesRead:I

    .line 160
    return-void
.end method

.method public continueReading()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->defaultMaybeMoreSupplier:Lio/netty/util/UncheckedBooleanSupplier;

    invoke-virtual {p0, v0}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->continueReading(Lio/netty/util/UncheckedBooleanSupplier;)Z

    move-result v0

    return v0
.end method

.method public continueReading(Lio/netty/util/UncheckedBooleanSupplier;)Z
    .locals 2
    .param p1, "maybeMoreDataSupplier"    # Lio/netty/util/UncheckedBooleanSupplier;

    .line 142
    iget-object v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->config:Lio/netty/channel/ChannelConfig;

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->respectMaybeMoreData:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {p1}, Lio/netty/util/UncheckedBooleanSupplier;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalMessages:I

    iget v1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->maxMessagePerRead:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalBytesRead:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0
.end method

.method public final incMessagesRead(I)V
    .locals 1
    .param p1, "amt"    # I

    .line 119
    iget v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalMessages:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalMessages:I

    .line 120
    return-void
.end method

.method public final lastBytesRead()I
    .locals 1

    .line 132
    iget v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->lastBytesRead:I

    return v0
.end method

.method public lastBytesRead(I)V
    .locals 1
    .param p1, "bytes"    # I

    .line 124
    iput p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->lastBytesRead:I

    .line 125
    if-lez p1, :cond_0

    .line 126
    iget v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalBytesRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalBytesRead:I

    .line 128
    :cond_0
    return-void
.end method

.method public readComplete()V
    .locals 0

    .line 150
    return-void
.end method

.method public reset(Lio/netty/channel/ChannelConfig;)V
    .locals 1
    .param p1, "config"    # Lio/netty/channel/ChannelConfig;

    .line 107
    iput-object p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->config:Lio/netty/channel/ChannelConfig;

    .line 108
    iget-object v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->this$0:Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;

    invoke-virtual {v0}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->maxMessagesPerRead()I

    move-result v0

    iput v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->maxMessagePerRead:I

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalBytesRead:I

    iput v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalMessages:I

    .line 110
    return-void
.end method

.method protected final totalBytesRead()I
    .locals 1

    .line 163
    iget v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->totalBytesRead:I

    if-gez v0, :cond_0

    const v0, 0x7fffffff

    :cond_0
    return v0
.end method
