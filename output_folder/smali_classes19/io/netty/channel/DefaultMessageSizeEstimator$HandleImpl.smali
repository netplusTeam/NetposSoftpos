.class final Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;
.super Ljava/lang/Object;
.source "DefaultMessageSizeEstimator.java"

# interfaces
.implements Lio/netty/channel/MessageSizeEstimator$Handle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/DefaultMessageSizeEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HandleImpl"
.end annotation


# instance fields
.field private final unknownSize:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "unknownSize"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;->unknownSize:I

    .line 34
    return-void
.end method

.method synthetic constructor <init>(ILio/netty/channel/DefaultMessageSizeEstimator$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lio/netty/channel/DefaultMessageSizeEstimator$1;

    .line 29
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;-><init>(I)V

    return-void
.end method


# virtual methods
.method public size(Ljava/lang/Object;)I
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 38
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 39
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    return v0

    .line 41
    :cond_0
    instance-of v0, p1, Lio/netty/buffer/ByteBufHolder;

    if-eqz v0, :cond_1

    .line 42
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBufHolder;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    return v0

    .line 44
    :cond_1
    instance-of v0, p1, Lio/netty/channel/FileRegion;

    if-eqz v0, :cond_2

    .line 45
    const/4 v0, 0x0

    return v0

    .line 47
    :cond_2
    iget v0, p0, Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;->unknownSize:I

    return v0
.end method
