.class public abstract Lio/netty/handler/codec/http/HttpObjectDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "HttpObjectDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;,
        Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;,
        Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_VALUE:Ljava/lang/String; = ""


# instance fields
.field private chunkSize:J

.field private final chunkedSupported:Z

.field private contentLength:J

.field private currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field private final headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

.field private final lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

.field private final maxChunkSize:I

.field private message:Lio/netty/handler/codec/http/HttpMessage;

.field private name:Ljava/lang/CharSequence;

.field private volatile resetRequested:Z

.field private trailer:Lio/netty/handler/codec/http/LastHttpContent;

.field protected final validateHeaders:Z

.field private value:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 104
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 150
    const/16 v0, 0x1000

    const/16 v1, 0x2000

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v1, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZ)V

    .line 151
    return-void
.end method

.method protected constructor <init>(IIIZ)V
    .locals 6
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "chunkedSupported"    # Z

    .line 158
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZZ)V

    .line 159
    return-void
.end method

.method protected constructor <init>(IIIZZ)V
    .locals 7
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "chunkedSupported"    # Z
    .param p5, "validateHeaders"    # Z

    .line 167
    const/16 v6, 0x80

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZZI)V

    .line 168
    return-void
.end method

.method protected constructor <init>(IIIZZI)V
    .locals 2
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "chunkedSupported"    # Z
    .param p5, "validateHeaders"    # Z
    .param p6, "initialBufferSize"    # I

    .line 172
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 115
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    .line 142
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 173
    const-string v0, "maxInitialLineLength"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 174
    const-string v0, "maxHeaderSize"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 175
    const-string v0, "maxChunkSize"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 177
    new-instance v0, Lio/netty/util/internal/AppendableCharSequence;

    invoke-direct {v0, p6}, Lio/netty/util/internal/AppendableCharSequence;-><init>(I)V

    .line 178
    .local v0, "seq":Lio/netty/util/internal/AppendableCharSequence;
    new-instance v1, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    invoke-direct {v1, p0, v0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;-><init>(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/util/internal/AppendableCharSequence;I)V

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    .line 179
    new-instance v1, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    invoke-direct {v1, v0, p2}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;-><init>(Lio/netty/util/internal/AppendableCharSequence;I)V

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    .line 180
    iput p3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxChunkSize:I

    .line 181
    iput-boolean p4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkedSupported:Z

    .line 182
    iput-boolean p5, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    .line 183
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http/HttpObjectDecoder;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/HttpObjectDecoder;

    .line 104
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    return-object v0
.end method

.method static synthetic access$002(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/handler/codec/http/HttpObjectDecoder$State;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http/HttpObjectDecoder;
    .param p1, "x1"    # Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 104
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    return-object p1
.end method

.method private contentLength()J
    .locals 4

    .line 653
    iget-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 654
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lio/netty/handler/codec/http/HttpUtil;->getContentLength(Lio/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    .line 656
    :cond_0
    iget-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    return-wide v0
.end method

.method private static findEndOfString(Lio/netty/util/internal/AppendableCharSequence;)I
    .locals 2
    .param p0, "sb"    # Lio/netty/util/internal/AppendableCharSequence;

    .line 847
    invoke-virtual {p0}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "result":I
    :goto_0
    if-lez v0, :cond_1

    .line 848
    invoke-virtual {p0, v0}, Lio/netty/util/internal/AppendableCharSequence;->charAtUnsafe(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 849
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 847
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 852
    .end local v0    # "result":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static findNonSPLenient(Lio/netty/util/internal/AppendableCharSequence;I)I
    .locals 4
    .param p0, "sb"    # Lio/netty/util/internal/AppendableCharSequence;
    .param p1, "offset"    # I

    .line 803
    move v0, p1

    .local v0, "result":I
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 804
    invoke-virtual {p0, v0}, Lio/netty/util/internal/AppendableCharSequence;->charAtUnsafe(I)C

    move-result v1

    .line 806
    .local v1, "c":C
    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isSPLenient(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 807
    nop

    .line 803
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 809
    .restart local v1    # "c":C
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 813
    return v0

    .line 811
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid separator"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 815
    .end local v0    # "result":I
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {p0}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v0

    return v0
.end method

.method private static findNonWhitespace(Lio/netty/util/internal/AppendableCharSequence;IZ)I
    .locals 5
    .param p0, "sb"    # Lio/netty/util/internal/AppendableCharSequence;
    .param p1, "offset"    # I
    .param p2, "validateOWS"    # Z

    .line 833
    move v0, p1

    .local v0, "result":I
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 834
    invoke-virtual {p0, v0}, Lio/netty/util/internal/AppendableCharSequence;->charAtUnsafe(I)C

    move-result v1

    .line 835
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 836
    return v0

    .line 837
    :cond_0
    if-eqz p2, :cond_2

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isOWS(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 839
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid separator, only a single space or horizontal tab allowed, but received a \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 833
    .end local v1    # "c":C
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 843
    .end local v0    # "result":I
    :cond_3
    invoke-virtual {p0}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v0

    return v0
.end method

.method private static findSPLenient(Lio/netty/util/internal/AppendableCharSequence;I)I
    .locals 2
    .param p0, "sb"    # Lio/netty/util/internal/AppendableCharSequence;
    .param p1, "offset"    # I

    .line 819
    move v0, p1

    .local v0, "result":I
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 820
    invoke-virtual {p0, v0}, Lio/netty/util/internal/AppendableCharSequence;->charAtUnsafe(I)C

    move-result v1

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isSPLenient(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    return v0

    .line 819
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 824
    .end local v0    # "result":I
    :cond_1
    invoke-virtual {p0}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v0

    return v0
.end method

.method private static getChunkSize(Ljava/lang/String;)I
    .locals 3
    .param p0, "hex"    # Ljava/lang/String;

    .line 715
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 716
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 717
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 718
    .local v1, "c":C
    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 716
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    .restart local v1    # "c":C
    :cond_1
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 724
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_2
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private invalidChunk(Lio/netty/buffer/ByteBuf;Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpContent;
    .locals 2
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "cause"    # Ljava/lang/Exception;

    .line 535
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->BAD_MESSAGE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 539
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 541
    new-instance v0, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 542
    .local v0, "chunk":Lio/netty/handler/codec/http/HttpContent;
    invoke-static {p2}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http/HttpContent;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 543
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 544
    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->trailer:Lio/netty/handler/codec/http/LastHttpContent;

    .line 545
    return-object v0
.end method

.method private invalidMessage(Lio/netty/buffer/ByteBuf;Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpMessage;
    .locals 2
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "cause"    # Ljava/lang/Exception;

    .line 518
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->BAD_MESSAGE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 522
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 524
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    if-nez v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->createInvalidMessage()Lio/netty/handler/codec/http/HttpMessage;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 527
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-static {p2}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http/HttpMessage;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 529
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 530
    .local v0, "ret":Lio/netty/handler/codec/http/HttpMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 531
    return-object v0
.end method

.method private static isOWS(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 856
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isSPLenient(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 829
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private readHeaders(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    .locals 10
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 549
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 550
    .local v0, "message":Lio/netty/handler/codec/http/HttpMessage;
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    .line 552
    .local v1, "headers":Lio/netty/handler/codec/http/HttpHeaders;
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    invoke-virtual {v2, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v2

    .line 553
    .local v2, "line":Lio/netty/util/internal/AppendableCharSequence;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 554
    return-object v3

    .line 556
    :cond_0
    invoke-virtual {v2}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_6

    .line 558
    :cond_1
    invoke-virtual {v2, v5}, Lio/netty/util/internal/AppendableCharSequence;->charAtUnsafe(I)C

    move-result v4

    .line 559
    .local v4, "firstChar":C
    iget-object v6, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3

    const/16 v7, 0x20

    if-eq v4, v7, :cond_2

    const/16 v8, 0x9

    if-ne v4, v8, :cond_3

    .line 562
    :cond_2
    invoke-virtual {v2}, Lio/netty/util/internal/AppendableCharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 563
    .local v6, "trimmedLine":Ljava/lang/String;
    iget-object v8, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/CharSequence;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 564
    .local v8, "valueStr":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/CharSequence;

    .line 565
    .end local v6    # "trimmedLine":Ljava/lang/String;
    .end local v8    # "valueStr":Ljava/lang/String;
    goto :goto_0

    .line 566
    :cond_3
    if-eqz v6, :cond_4

    .line 567
    iget-object v7, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/CharSequence;

    invoke-virtual {v1, v6, v7}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 569
    :cond_4
    invoke-direct {p0, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitHeader(Lio/netty/util/internal/AppendableCharSequence;)V

    .line 572
    :goto_0
    iget-object v6, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    invoke-virtual {v6, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v2

    .line 573
    if-nez v2, :cond_5

    .line 574
    return-object v3

    .line 576
    .end local v4    # "firstChar":C
    :cond_5
    invoke-virtual {v2}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 580
    :cond_6
    iget-object v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    .line 581
    iget-object v6, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4, v6}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 585
    :cond_7
    iput-object v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Ljava/lang/CharSequence;

    .line 586
    iput-object v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/CharSequence;

    .line 588
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v3}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    .line 589
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 591
    .local v4, "contentLengthValuesCount":I
    if-lez v4, :cond_a

    .line 605
    const/4 v6, 0x1

    if-le v4, v6, :cond_9

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    if-eq v6, v7, :cond_8

    goto :goto_1

    .line 606
    :cond_8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Multiple Content-Length headers found"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 608
    :cond_9
    :goto_1
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    .line 611
    :cond_a
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 612
    invoke-static {v0, v5}, Lio/netty/handler/codec/http/HttpUtil;->setTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 613
    sget-object v5, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    return-object v5

    .line 614
    :cond_b
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpUtil;->isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 615
    if-lez v4, :cond_c

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    if-ne v5, v6, :cond_c

    .line 616
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->handleTransferEncodingChunkedWithContentLength(Lio/netty/handler/codec/http/HttpMessage;)V

    .line 618
    :cond_c
    sget-object v5, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    return-object v5

    .line 619
    :cond_d
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_e

    .line 620
    sget-object v5, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    return-object v5

    .line 622
    :cond_e
    sget-object v5, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    return-object v5
.end method

.method private readTrailingHeaders(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 10
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 660
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v0

    .line 661
    .local v0, "line":Lio/netty/util/internal/AppendableCharSequence;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 662
    return-object v1

    .line 664
    :cond_0
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->trailer:Lio/netty/handler/codec/http/LastHttpContent;

    .line 665
    .local v2, "trailer":Lio/netty/handler/codec/http/LastHttpContent;
    invoke-virtual {v0}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    .line 668
    sget-object v1, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    return-object v1

    .line 671
    :cond_1
    const/4 v3, 0x0

    .line 672
    .local v3, "lastHeader":Ljava/lang/CharSequence;
    if-nez v2, :cond_2

    .line 673
    new-instance v4, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    sget-object v5, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    iget-boolean v6, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    invoke-direct {v4, v5, v6}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    iput-object v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->trailer:Lio/netty/handler/codec/http/LastHttpContent;

    move-object v2, v4

    .line 675
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 676
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lio/netty/util/internal/AppendableCharSequence;->charAtUnsafe(I)C

    move-result v4

    .line 677
    .local v4, "firstChar":C
    if-eqz v3, :cond_5

    const/16 v5, 0x20

    if-eq v4, v5, :cond_3

    const/16 v5, 0x9

    if-ne v4, v5, :cond_5

    .line 678
    :cond_3
    invoke-interface {v2}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    invoke-virtual {v5, v3}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v5

    .line 679
    .local v5, "current":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 680
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 683
    .local v6, "lastPos":I
    invoke-virtual {v0}, Lio/netty/util/internal/AppendableCharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 684
    .local v7, "lineTrimmed":Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 685
    .local v8, "currentLastPos":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v6, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 687
    .end local v5    # "current":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "lastPos":I
    .end local v7    # "lineTrimmed":Ljava/lang/String;
    .end local v8    # "currentLastPos":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 688
    :cond_5
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitHeader(Lio/netty/util/internal/AppendableCharSequence;)V

    .line 689
    iget-object v5, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Ljava/lang/CharSequence;

    .line 690
    .local v5, "headerName":Ljava/lang/CharSequence;
    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v6, v5}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    .line 691
    invoke-virtual {v6, v5}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->TRAILER:Lio/netty/util/AsciiString;

    .line 692
    invoke-virtual {v6, v5}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 693
    invoke-interface {v2}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    iget-object v7, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/CharSequence;

    invoke-virtual {v6, v5, v7}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 695
    :cond_6
    iget-object v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Ljava/lang/CharSequence;

    .line 697
    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Ljava/lang/CharSequence;

    .line 698
    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/CharSequence;

    .line 700
    .end local v5    # "headerName":Ljava/lang/CharSequence;
    :goto_1
    iget-object v5, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    invoke-virtual {v5, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v0

    .line 701
    if-nez v0, :cond_7

    .line 702
    return-object v1

    .line 704
    .end local v4    # "firstChar":C
    :cond_7
    goto/16 :goto_0

    .line 706
    :cond_8
    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->trailer:Lio/netty/handler/codec/http/LastHttpContent;

    .line 707
    return-object v2
.end method

.method private resetNow()V
    .locals 4

    .line 497
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 498
    .local v0, "message":Lio/netty/handler/codec/http/HttpMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 499
    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Ljava/lang/CharSequence;

    .line 500
    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/CharSequence;

    .line 501
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    .line 502
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->reset()V

    .line 503
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->reset()V

    .line 504
    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->trailer:Lio/netty/handler/codec/http/LastHttpContent;

    .line 505
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isDecodingRequest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    move-object v1, v0

    check-cast v1, Lio/netty/handler/codec/http/HttpResponse;

    .line 507
    .local v1, "res":Lio/netty/handler/codec/http/HttpResponse;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isSwitchingToNonHttp1Protocol(Lio/netty/handler/codec/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    sget-object v2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->UPGRADED:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 509
    return-void

    .line 513
    .end local v1    # "res":Lio/netty/handler/codec/http/HttpResponse;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetRequested:Z

    .line 514
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 515
    return-void
.end method

.method private splitHeader(Lio/netty/util/internal/AppendableCharSequence;)V
    .locals 7
    .param p1, "sb"    # Lio/netty/util/internal/AppendableCharSequence;

    .line 751
    invoke-virtual {p1}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v0

    .line 758
    .local v0, "length":I
    const/4 v1, 0x0

    invoke-static {p1, v1, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonWhitespace(Lio/netty/util/internal/AppendableCharSequence;IZ)I

    move-result v1

    .line 759
    .local v1, "nameStart":I
    move v2, v1

    .local v2, "nameEnd":I
    :goto_0
    const/16 v3, 0x3a

    if-ge v2, v0, :cond_1

    .line 760
    invoke-virtual {p1, v2}, Lio/netty/util/internal/AppendableCharSequence;->charAtUnsafe(I)C

    move-result v4

    .line 770
    .local v4, "ch":C
    if-eq v4, v3, :cond_1

    .line 775
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isDecodingRequest()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isOWS(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 776
    goto :goto_1

    .line 759
    .end local v4    # "ch":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 780
    :cond_1
    :goto_1
    if-eq v2, v0, :cond_5

    .line 785
    move v4, v2

    .local v4, "colonEnd":I
    :goto_2
    if-ge v4, v0, :cond_3

    .line 786
    invoke-virtual {p1, v4}, Lio/netty/util/internal/AppendableCharSequence;->charAtUnsafe(I)C

    move-result v5

    if-ne v5, v3, :cond_2

    .line 787
    add-int/lit8 v4, v4, 0x1

    .line 788
    goto :goto_3

    .line 785
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 792
    :cond_3
    :goto_3
    invoke-virtual {p1, v1, v2}, Lio/netty/util/internal/AppendableCharSequence;->subStringUnsafe(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Ljava/lang/CharSequence;

    .line 793
    const/4 v3, 0x1

    invoke-static {p1, v4, v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonWhitespace(Lio/netty/util/internal/AppendableCharSequence;IZ)I

    move-result v3

    .line 794
    .local v3, "valueStart":I
    if-ne v3, v0, :cond_4

    .line 795
    const-string v5, ""

    iput-object v5, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/CharSequence;

    goto :goto_4

    .line 797
    :cond_4
    invoke-static {p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findEndOfString(Lio/netty/util/internal/AppendableCharSequence;)I

    move-result v5

    .line 798
    .local v5, "valueEnd":I
    invoke-virtual {p1, v3, v5}, Lio/netty/util/internal/AppendableCharSequence;->subStringUnsafe(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/CharSequence;

    .line 800
    .end local v5    # "valueEnd":I
    :goto_4
    return-void

    .line 782
    .end local v3    # "valueStart":I
    .end local v4    # "colonEnd":I
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No colon found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static splitInitialLine(Lio/netty/util/internal/AppendableCharSequence;)[Ljava/lang/String;
    .locals 9
    .param p0, "sb"    # Lio/netty/util/internal/AppendableCharSequence;

    .line 735
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonSPLenient(Lio/netty/util/internal/AppendableCharSequence;I)I

    move-result v1

    .line 736
    .local v1, "aStart":I
    invoke-static {p0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findSPLenient(Lio/netty/util/internal/AppendableCharSequence;I)I

    move-result v2

    .line 738
    .local v2, "aEnd":I
    invoke-static {p0, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonSPLenient(Lio/netty/util/internal/AppendableCharSequence;I)I

    move-result v3

    .line 739
    .local v3, "bStart":I
    invoke-static {p0, v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findSPLenient(Lio/netty/util/internal/AppendableCharSequence;I)I

    move-result v4

    .line 741
    .local v4, "bEnd":I
    invoke-static {p0, v4}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonSPLenient(Lio/netty/util/internal/AppendableCharSequence;I)I

    move-result v5

    .line 742
    .local v5, "cStart":I
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findEndOfString(Lio/netty/util/internal/AppendableCharSequence;)I

    move-result v6

    .line 744
    .local v6, "cEnd":I
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    .line 745
    invoke-virtual {p0, v1, v2}, Lio/netty/util/internal/AppendableCharSequence;->subStringUnsafe(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    .line 746
    invoke-virtual {p0, v3, v4}, Lio/netty/util/internal/AppendableCharSequence;->subStringUnsafe(II)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    aput-object v0, v7, v8

    if-ge v5, v6, :cond_0

    .line 747
    invoke-virtual {p0, v5, v6}, Lio/netty/util/internal/AppendableCharSequence;->subStringUnsafe(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v8, 0x2

    aput-object v0, v7, v8

    .line 744
    return-object v7
.end method


# virtual methods
.method protected abstract createInvalidMessage()Lio/netty/handler/codec/http/HttpMessage;
.end method

.method protected abstract createMessage([Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetRequested:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V

    .line 191
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$1;->$SwitchMap$io$netty$handler$codec$http$HttpObjectDecoder$State:[I

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 374
    :pswitch_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 375
    .local v0, "readableBytes":I
    if-lez v0, :cond_16

    .line 380
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readBytes(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 370
    .end local v0    # "readableBytes":I
    :pswitch_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 371
    goto/16 :goto_6

    .line 357
    :pswitch_2
    :try_start_0
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->readTrailingHeaders(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    .line 358
    .local v0, "trailer":Lio/netty/handler/codec/http/LastHttpContent;
    if-nez v0, :cond_1

    .line 359
    return-void

    .line 361
    :cond_1
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    return-void

    .line 364
    .end local v0    # "trailer":Lio/netty/handler/codec/http/LastHttpContent;
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p2, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidChunk(Lio/netty/buffer/ByteBuf;Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpContent;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    return-void

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_3
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 284
    .local v0, "readLimit":I
    if-nez v0, :cond_2

    .line 285
    return-void

    .line 288
    :cond_2
    iget v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxChunkSize:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 289
    .local v3, "toRead":I
    int-to-long v4, v3

    iget-wide v6, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 290
    long-to-int v3, v6

    .line 292
    :cond_3
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 293
    .local v4, "content":Lio/netty/buffer/ByteBuf;
    iget-wide v5, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    int-to-long v7, v3

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    .line 295
    cmp-long v1, v5, v1

    if-nez v1, :cond_4

    .line 297
    new-instance v1, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    iget-boolean v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    invoke-direct {v1, v4, v2}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V

    goto :goto_0

    .line 300
    :cond_4
    new-instance v1, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-direct {v1, v4}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :goto_0
    return-void

    .line 268
    .end local v0    # "readLimit":I
    .end local v3    # "toRead":I
    .end local v4    # "content":Lio/netty/buffer/ByteBuf;
    :pswitch_4
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxChunkSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 269
    .local v0, "toRead":I
    if-lez v0, :cond_5

    .line 270
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 271
    .local v1, "content":Lio/netty/buffer/ByteBuf;
    new-instance v2, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-direct {v2, v1}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v1    # "content":Lio/netty/buffer/ByteBuf;
    :cond_5
    return-void

    .line 309
    .end local v0    # "toRead":I
    :pswitch_5
    :try_start_1
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    invoke-virtual {v0, p2}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v0

    .line 310
    .local v0, "line":Lio/netty/util/internal/AppendableCharSequence;
    if-nez v0, :cond_6

    .line 311
    return-void

    .line 313
    :cond_6
    invoke-virtual {v0}, Lio/netty/util/internal/AppendableCharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->getChunkSize(Ljava/lang/String;)I

    move-result v3

    .line 314
    .local v3, "chunkSize":I
    int-to-long v4, v3

    iput-wide v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    .line 315
    if-nez v3, :cond_7

    .line 316
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_FOOTER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 317
    return-void

    .line 319
    :cond_7
    sget-object v4, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNKED_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 324
    .end local v0    # "line":Lio/netty/util/internal/AppendableCharSequence;
    .end local v3    # "chunkSize":I
    nop

    .line 326
    :pswitch_6
    iget-wide v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_c

    .line 327
    long-to-int v0, v3

    iget v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxChunkSize:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 328
    .local v0, "toRead":I
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 329
    if-nez v0, :cond_8

    .line 330
    return-void

    .line 332
    :cond_8
    new-instance v3, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 333
    .local v3, "chunk":Lio/netty/handler/codec/http/HttpContent;
    iget-wide v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    .line 335
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-wide v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    cmp-long v1, v4, v1

    if-eqz v1, :cond_9

    .line 338
    return-void

    .line 340
    :cond_9
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_DELIMITER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 344
    .end local v0    # "toRead":I
    .end local v3    # "chunk":Lio/netty/handler/codec/http/HttpContent;
    :pswitch_7
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 345
    .local v0, "wIdx":I
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    .line 346
    .local v1, "rIdx":I
    :goto_1
    if-le v0, v1, :cond_b

    .line 347
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "rIdx":I
    .local v2, "rIdx":I
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    .line 348
    .local v1, "next":B
    const/16 v3, 0xa

    if-ne v1, v3, :cond_a

    .line 349
    sget-object v3, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 350
    move v1, v2

    goto :goto_2

    .line 352
    .end local v1    # "next":B
    :cond_a
    move v1, v2

    goto :goto_1

    .line 353
    .end local v2    # "rIdx":I
    .local v1, "rIdx":I
    :cond_b
    :goto_2
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 354
    return-void

    .line 326
    .end local v0    # "wIdx":I
    .end local v1    # "rIdx":I
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 321
    :catch_1
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p2, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidChunk(Lio/netty/buffer/ByteBuf;Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpContent;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    return-void

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_8
    :try_start_2
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    invoke-virtual {v0, p2}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v0

    .line 196
    .local v0, "line":Lio/netty/util/internal/AppendableCharSequence;
    if-nez v0, :cond_d

    .line 197
    return-void

    .line 199
    :cond_d
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitInitialLine(Lio/netty/util/internal/AppendableCharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "initialLine":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x3

    if-ge v4, v5, :cond_e

    .line 202
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 203
    return-void

    .line 206
    :cond_e
    invoke-virtual {p0, v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->createMessage([Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMessage;

    move-result-object v4

    iput-object v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 207
    sget-object v4, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_HEADER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 212
    .end local v0    # "line":Lio/netty/util/internal/AppendableCharSequence;
    .end local v3    # "initialLine":[Ljava/lang/String;
    nop

    .line 214
    :pswitch_9
    :try_start_3
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->readHeaders(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-result-object v0

    .line 215
    .local v0, "nextState":Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    if-nez v0, :cond_f

    .line 216
    return-void

    .line 218
    :cond_f
    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 219
    sget-object v3, Lio/netty/handler/codec/http/HttpObjectDecoder$1;->$SwitchMap$io$netty$handler$codec$http$HttpObjectDecoder$State:[I

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 241
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength()J

    move-result-wide v3

    goto :goto_3

    .line 228
    :pswitch_a
    iget-boolean v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkedSupported:Z

    if-eqz v1, :cond_10

    .line 232
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-void

    .line 229
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Chunked messages not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "buffer":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v1

    .line 223
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "buffer":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :pswitch_b
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v1, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V

    .line 226
    return-void

    .line 242
    .local v3, "contentLength":J
    :goto_3
    cmp-long v1, v3, v1

    if-eqz v1, :cond_15

    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isDecodingRequest()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_5

    .line 249
    :cond_11
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    if-eq v0, v1, :cond_13

    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    if-ne v0, v1, :cond_12

    goto :goto_4

    :cond_12
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "buffer":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v1

    .line 252
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "buffer":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_13
    :goto_4
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    if-ne v0, v1, :cond_14

    .line 256
    iput-wide v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    .line 260
    :cond_14
    return-void

    .line 243
    :cond_15
    :goto_5
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v1, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 246
    return-void

    .line 262
    .end local v0    # "nextState":Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    .end local v3    # "contentLength":J
    :catch_2
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p2, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidMessage(Lio/netty/buffer/ByteBuf;Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpMessage;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    return-void

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 210
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0, p2, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidMessage(Lio/netty/buffer/ByteBuf;Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpMessage;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-void

    .line 385
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_16
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method protected decodeLast(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 389
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2, p3}, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeLast(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 391
    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetRequested:Z

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V

    .line 397
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    if-eqz v0, :cond_7

    .line 398
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpUtil;->isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    .line 399
    .local v0, "chunked":Z
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    sget-object v2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 401
    sget-object v1, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V

    .line 403
    return-void

    .line 406
    :cond_1
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    sget-object v2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_HEADER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    if-ne v1, v2, :cond_2

    .line 409
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    new-instance v2, Lio/netty/handler/codec/PrematureChannelClosureException;

    const-string v3, "Connection closed before received headers"

    invoke-direct {v2, v3}, Lio/netty/handler/codec/PrematureChannelClosureException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidMessage(Lio/netty/buffer/ByteBuf;Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpMessage;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V

    .line 412
    return-void

    .line 417
    :cond_2
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isDecodingRequest()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_3

    goto :goto_1

    .line 424
    :cond_3
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .local v1, "prematureClosure":Z
    :goto_0
    goto :goto_2

    .line 419
    .end local v1    # "prematureClosure":Z
    :cond_5
    :goto_1
    const/4 v1, 0x1

    .line 427
    .restart local v1    # "prematureClosure":Z
    :goto_2
    if-nez v1, :cond_6

    .line 428
    sget-object v2, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_6
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V

    .line 432
    .end local v0    # "chunked":Z
    .end local v1    # "prematureClosure":Z
    :cond_7
    return-void
.end method

.method protected handleTransferEncodingChunkedWithContentLength(Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 2
    .param p1, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 648
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 649
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    .line 650
    return-void
.end method

.method protected isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 7
    .param p1, "msg"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 451
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 452
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    .line 453
    .local v0, "res":Lio/netty/handler/codec/http/HttpResponse;
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v2

    .line 460
    .local v2, "code":I
    const/16 v3, 0x64

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_2

    .line 462
    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_ACCEPT:Lio/netty/util/AsciiString;

    invoke-virtual {v3, v5}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 463
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderValues;->WEBSOCKET:Lio/netty/util/AsciiString;

    invoke-virtual {v3, v5, v6, v4}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v4

    .line 462
    :cond_1
    return v1

    .line 466
    :cond_2
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 468
    :sswitch_0
    return v4

    .line 471
    .end local v0    # "res":Lio/netty/handler/codec/http/HttpResponse;
    .end local v2    # "code":I
    :cond_3
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xcc -> :sswitch_0
        0x130 -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract isDecodingRequest()Z
.end method

.method protected isSwitchingToNonHttp1Protocol(Lio/netty/handler/codec/http/HttpResponse;)Z
    .locals 3
    .param p1, "msg"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 479
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v0

    sget-object v1, Lio/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 480
    return v2

    .line 482
    :cond_0
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "newProtocol":Ljava/lang/String;
    if-eqz v0, :cond_2

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_0:Lio/netty/handler/codec/http/HttpVersion;

    .line 484
    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpVersion;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    .line 485
    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpVersion;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 483
    :goto_1
    return v2
.end method

.method public reset()V
    .locals 1

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetRequested:Z

    .line 494
    return-void
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 436
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpExpectationFailedEvent;

    if-eqz v0, :cond_0

    .line 437
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$1;->$SwitchMap$io$netty$handler$codec$http$HttpObjectDecoder$State:[I

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 441
    :pswitch_1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->reset()V

    .line 447
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/ByteToMessageDecoder;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 448
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
