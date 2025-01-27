.class public abstract Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;
.super Ljava/lang/Object;
.source "DefaultMaxMessagesRecvByteBufAllocator.java"

# interfaces
.implements Lio/netty/channel/MaxMessagesRecvByteBufAllocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;
    }
.end annotation


# instance fields
.field private volatile maxMessagesPerRead:I

.field private volatile respectMaybeMoreData:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;-><init>(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxMessagesPerRead"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->respectMaybeMoreData:Z

    .line 37
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->maxMessagesPerRead(I)Lio/netty/channel/MaxMessagesRecvByteBufAllocator;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;

    .line 28
    iget-boolean v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->respectMaybeMoreData:Z

    return v0
.end method


# virtual methods
.method public maxMessagesPerRead()I
    .locals 1

    .line 42
    iget v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->maxMessagesPerRead:I

    return v0
.end method

.method public maxMessagesPerRead(I)Lio/netty/channel/MaxMessagesRecvByteBufAllocator;
    .locals 1
    .param p1, "maxMessagesPerRead"    # I

    .line 47
    const-string v0, "maxMessagesPerRead"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 48
    iput p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->maxMessagesPerRead:I

    .line 49
    return-object p0
.end method

.method public respectMaybeMoreData(Z)Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;
    .locals 0
    .param p1, "respectMaybeMoreData"    # Z

    .line 65
    iput-boolean p1, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->respectMaybeMoreData:Z

    .line 66
    return-object p0
.end method

.method public final respectMaybeMoreData()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->respectMaybeMoreData:Z

    return v0
.end method
