.class final Lio/netty/buffer/FixedCompositeByteBuf$Component;
.super Lio/netty/buffer/WrappedByteBuf;
.source "FixedCompositeByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/FixedCompositeByteBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Component"
.end annotation


# instance fields
.field private final endOffset:I

.field private final index:I

.field private final offset:I


# direct methods
.method constructor <init>(IILio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 682
    invoke-direct {p0, p3}, Lio/netty/buffer/WrappedByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 683
    iput p1, p0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->index:I

    .line 684
    iput p2, p0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->offset:I

    .line 685
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->endOffset:I

    .line 686
    return-void
.end method

.method static synthetic access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/FixedCompositeByteBuf$Component;

    .line 676
    iget v0, p0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->offset:I

    return v0
.end method

.method static synthetic access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/FixedCompositeByteBuf$Component;

    .line 676
    iget v0, p0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->endOffset:I

    return v0
.end method

.method static synthetic access$200(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/FixedCompositeByteBuf$Component;

    .line 676
    iget v0, p0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->index:I

    return v0
.end method
