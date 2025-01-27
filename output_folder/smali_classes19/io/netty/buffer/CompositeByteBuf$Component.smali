.class final Lio/netty/buffer/CompositeByteBuf$Component;
.super Ljava/lang/Object;
.source "CompositeByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/CompositeByteBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Component"
.end annotation


# instance fields
.field adjustment:I

.field final buf:Lio/netty/buffer/ByteBuf;

.field endOffset:I

.field offset:I

.field private slice:Lio/netty/buffer/ByteBuf;

.field srcAdjustment:I

.field final srcBuf:Lio/netty/buffer/ByteBuf;


# direct methods
.method constructor <init>(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;IIILio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "srcBuf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "srcOffset"    # I
    .param p3, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p4, "bufOffset"    # I
    .param p5, "offset"    # I
    .param p6, "len"    # I
    .param p7, "slice"    # Lio/netty/buffer/ByteBuf;

    .line 1858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1859
    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcBuf:Lio/netty/buffer/ByteBuf;

    .line 1860
    sub-int v0, p2, p5

    iput v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcAdjustment:I

    .line 1861
    iput-object p3, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 1862
    sub-int v0, p4, p5

    iput v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    .line 1863
    iput p5, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 1864
    add-int v0, p5, p6

    iput v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 1865
    iput-object p7, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    .line 1866
    return-void
.end method

.method static synthetic access$100(Lio/netty/buffer/CompositeByteBuf$Component;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1845
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method static synthetic access$102(Lio/netty/buffer/CompositeByteBuf$Component;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p0, "x0"    # Lio/netty/buffer/CompositeByteBuf$Component;
    .param p1, "x1"    # Lio/netty/buffer/ByteBuf;

    .line 1845
    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    return-object p1
.end method


# virtual methods
.method duplicate()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1903
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcBuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method free()V
    .locals 1

    .line 1912
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    .line 1915
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcBuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1916
    return-void
.end method

.method idx(I)I
    .locals 1
    .param p1, "index"    # I

    .line 1873
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    add-int/2addr v0, p1

    return v0
.end method

.method internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 1908
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcBuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->srcIdx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method length()I
    .locals 2

    .line 1877
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method reposition(I)V
    .locals 2
    .param p1, "newOffset"    # I

    .line 1881
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v0, p1, v0

    .line 1882
    .local v0, "move":I
    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 1883
    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcAdjustment:I

    sub-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcAdjustment:I

    .line 1884
    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    sub-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    .line 1885
    iput p1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 1886
    return-void
.end method

.method slice()Lio/netty/buffer/ByteBuf;
    .locals 4

    .line 1895
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    .line 1896
    .local v0, "s":Lio/netty/buffer/ByteBuf;
    if-nez v0, :cond_0

    .line 1897
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcBuf:Lio/netty/buffer/ByteBuf;

    iget v2, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf$Component;->srcIdx(I)I

    move-result v2

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    .line 1899
    :cond_0
    return-object v0
.end method

.method srcIdx(I)I
    .locals 1
    .param p1, "index"    # I

    .line 1869
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcAdjustment:I

    add-int/2addr v0, p1

    return v0
.end method

.method transferTo(Lio/netty/buffer/ByteBuf;)V
    .locals 3
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;

    .line 1890
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    invoke-virtual {p0, v1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v1

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 1891
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 1892
    return-void
.end method
