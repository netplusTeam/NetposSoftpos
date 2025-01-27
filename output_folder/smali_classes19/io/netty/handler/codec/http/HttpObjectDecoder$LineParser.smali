.class final Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;
.super Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;
.source "HttpObjectDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpObjectDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LineParser"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/util/internal/AppendableCharSequence;I)V
    .locals 0
    .param p2, "seq"    # Lio/netty/util/internal/AppendableCharSequence;
    .param p3, "maxLength"    # I

    .line 921
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    .line 922
    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;-><init>(Lio/netty/util/internal/AppendableCharSequence;I)V

    .line 923
    return-void
.end method


# virtual methods
.method protected newException(I)Lio/netty/handler/codec/TooLongFrameException;
    .locals 3
    .param p1, "maxLength"    # I

    .line 946
    new-instance v0, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An HTTP line is larger than "

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
    .locals 1
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 927
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->reset()V

    .line 928
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v0

    return-object v0
.end method

.method public process(B)Z
    .locals 3
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 933
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$000(Lio/netty/handler/codec/http/HttpObjectDecoder;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    if-ne v0, v1, :cond_2

    .line 934
    and-int/lit16 v0, p1, 0xff

    int-to-char v0, v0

    .line 935
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 939
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    sget-object v2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_INITIAL:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-static {v1, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$002(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/handler/codec/http/HttpObjectDecoder$State;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    goto :goto_1

    .line 936
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->increaseCount()V

    .line 937
    const/4 v1, 0x1

    return v1

    .line 941
    .end local v0    # "c":C
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->process(B)Z

    move-result v0

    return v0
.end method
