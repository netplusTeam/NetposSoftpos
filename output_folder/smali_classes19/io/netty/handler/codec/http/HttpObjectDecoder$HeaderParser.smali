.class Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;
.super Ljava/lang/Object;
.source "HttpObjectDecoder.java"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpObjectDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderParser"
.end annotation


# instance fields
.field private final maxLength:I

.field private final seq:Lio/netty/util/internal/AppendableCharSequence;

.field private size:I


# direct methods
.method constructor <init>(Lio/netty/util/internal/AppendableCharSequence;I)V
    .locals 0
    .param p1, "seq"    # Lio/netty/util/internal/AppendableCharSequence;
    .param p2, "maxLength"    # I

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 865
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    .line 866
    iput p2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->maxLength:I

    .line 867
    return-void
.end method


# virtual methods
.method protected final increaseCount()V
    .locals 2

    .line 905
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->maxLength:I

    if-gt v0, v1, :cond_0

    .line 912
    return-void

    .line 910
    :cond_0
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->newException(I)Lio/netty/handler/codec/TooLongFrameException;

    move-result-object v0

    throw v0
.end method

.method protected newException(I)Lio/netty/handler/codec/TooLongFrameException;
    .locals 3
    .param p1, "maxLength"    # I

    .line 915
    new-instance v0, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP header is larger than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;
    .locals 3
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 870
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    .line 871
    .local v0, "oldSize":I
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-virtual {v1}, Lio/netty/util/internal/AppendableCharSequence;->reset()V

    .line 872
    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->forEachByte(Lio/netty/util/ByteProcessor;)I

    move-result v1

    .line 873
    .local v1, "i":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 874
    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    .line 875
    const/4 v2, 0x0

    return-object v2

    .line 877
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 878
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    return-object v2
.end method

.method public process(B)Z
    .locals 5
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 887
    and-int/lit16 v0, p1, 0xff

    int-to-char v0, v0

    .line 888
    .local v0, "nextByte":C
    const/4 v1, 0x1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 889
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-virtual {v2}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v2

    .line 891
    .local v2, "len":I
    if-lt v2, v1, :cond_0

    iget-object v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Lio/netty/util/internal/AppendableCharSequence;->charAtUnsafe(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    .line 892
    iget v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    sub-int/2addr v3, v1

    iput v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    .line 893
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Lio/netty/util/internal/AppendableCharSequence;->setLength(I)V

    .line 895
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 898
    .end local v2    # "len":I
    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->increaseCount()V

    .line 900
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-virtual {v2, v0}, Lio/netty/util/internal/AppendableCharSequence;->append(C)Lio/netty/util/internal/AppendableCharSequence;

    .line 901
    return v1
.end method

.method public reset()V
    .locals 1

    .line 882
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    .line 883
    return-void
.end method
