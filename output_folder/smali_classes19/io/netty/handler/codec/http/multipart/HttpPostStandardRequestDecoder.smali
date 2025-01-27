.class public Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;
.super Ljava/lang/Object;
.source "HttpPostStandardRequestDecoder.java"

# interfaces
.implements Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;


# instance fields
.field private final bodyListHttpData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation
.end field

.field private bodyListHttpDataRank:I

.field private final bodyMapHttpData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final charset:Ljava/nio/charset/Charset;

.field private currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

.field private currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field private destroyed:Z

.field private discardThreshold:I

.field private final factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

.field private isLastChunk:Z

.field private final request:Lio/netty/handler/codec/http/HttpRequest;

.field private undecodedChunk:Lio/netty/buffer/ByteBuf;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 3
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 115
    new-instance v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;

    const-wide/16 v1, 0x4000

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;-><init>(J)V

    sget-object v1, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1, v1}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;-><init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 1
    .param p1, "factory"    # Lio/netty/handler/codec/http/multipart/HttpDataFactory;
    .param p2, "request"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 131
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;-><init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "factory"    # Lio/netty/handler/codec/http/multipart/HttpDataFactory;
    .param p2, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpData:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lio/netty/handler/codec/http/multipart/CaseIgnoringComparator;->INSTANCE:Lio/netty/handler/codec/http/multipart/CaseIgnoringComparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    .line 93
    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->NOTSTARTED:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 102
    const/high16 v0, 0xa00000

    iput v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->discardThreshold:I

    .line 149
    const-string v0, "request"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    .line 150
    const-string v0, "charset"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    .line 151
    const-string v0, "factory"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    .line 153
    :try_start_0
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v0, :cond_0

    .line 156
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpContent;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->offer(Lio/netty/handler/codec/http/HttpContent;)Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;

    goto :goto_0

    .line 158
    :cond_0
    invoke-static {}, Lio/netty/buffer/Unpooled;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    .line 159
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->parseBody()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :goto_0
    goto :goto_1

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->destroy()V

    .line 163
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 165
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private checkDestroyed()V
    .locals 3

    .line 168
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->destroyed:Z

    if-nez v0, :cond_0

    .line 172
    return-void

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was destroyed already"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 638
    :try_start_0
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad string: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parseBody()V
    .locals 2

    .line 360
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->parseBodyAttributes()V

    .line 367
    return-void

    .line 361
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_2

    .line 362
    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 364
    :cond_2
    return-void
.end method

.method private parseBodyAttributes()V
    .locals 10

    .line 506
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->parseBodyAttributesStandard()V

    .line 508
    return-void

    .line 510
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 511
    .local v0, "sao":Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    .line 512
    .local v1, "firstpos":I
    move v2, v1

    .line 515
    .local v2, "currentpos":I
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v4, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->NOTSTARTED:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v3, v4, :cond_1

    .line 516
    sget-object v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 518
    :cond_1
    const/4 v3, 0x1

    .line 520
    .local v3, "contRead":Z
    :goto_0
    :try_start_0
    iget v4, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v5, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    const/4 v6, 0x0

    if-ge v4, v5, :cond_8

    .line 521
    iget-object v4, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v5, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v7, v5, 0x1

    iput v7, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    .line 522
    .local v4, "read":C
    add-int/lit8 v2, v2, 0x1

    .line 523
    sget-object v5, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$1;->$SwitchMap$io$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus:[I

    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-virtual {v7}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->ordinal()I

    move-result v7

    aget v5, v5, v7

    const/16 v7, 0x26

    packed-switch v5, :pswitch_data_0

    .line 586
    invoke-virtual {v0, v6}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    goto/16 :goto_2

    .line 546
    :pswitch_0
    if-ne v4, v7, :cond_2

    .line 547
    sget-object v5, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 548
    add-int/lit8 v5, v2, -0x1

    .line 549
    .local v5, "ampersandpos":I
    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v7, v5, v1

    invoke-virtual {v6, v1, v7}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    invoke-direct {p0, v6}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->setFinalBuffer(Lio/netty/buffer/ByteBuf;)V

    .line 550
    move v1, v2

    .line 551
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 552
    .end local v5    # "ampersandpos":I
    :cond_2
    const/16 v5, 0xd

    const/16 v7, 0xa

    if-ne v4, v5, :cond_5

    .line 553
    iget v5, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v8, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v5, v8, :cond_4

    .line 554
    iget-object v5, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v8, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    int-to-char v4, v5

    .line 555
    add-int/lit8 v2, v2, 0x1

    .line 556
    if-ne v4, v7, :cond_3

    .line 557
    sget-object v5, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 558
    add-int/lit8 v5, v2, -0x2

    .line 559
    .restart local v5    # "ampersandpos":I
    invoke-virtual {v0, v6}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 560
    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v8, v5, v1

    invoke-virtual {v7, v1, v8}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    invoke-direct {p0, v7}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->setFinalBuffer(Lio/netty/buffer/ByteBuf;)V

    .line 561
    move v1, v2

    .line 562
    const/4 v3, 0x0

    .line 563
    goto/16 :goto_3

    .line 566
    .end local v5    # "ampersandpos":I
    :cond_3
    invoke-virtual {v0, v6}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 567
    new-instance v5, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v6, "Bad end of line"

    invoke-direct {v5, v6}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sao":Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;
    .end local v1    # "firstpos":I
    .end local v2    # "currentpos":I
    .end local v3    # "contRead":Z
    throw v5

    .line 570
    .restart local v0    # "sao":Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;
    .restart local v1    # "firstpos":I
    .restart local v2    # "currentpos":I
    .restart local v3    # "contRead":Z
    :cond_4
    iget v5, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-lez v5, :cond_7

    .line 571
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    .line 574
    :cond_5
    if-ne v4, v7, :cond_7

    .line 575
    sget-object v5, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 576
    add-int/lit8 v5, v2, -0x1

    .line 577
    .restart local v5    # "ampersandpos":I
    invoke-virtual {v0, v6}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 578
    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v8, v5, v1

    invoke-virtual {v7, v1, v8}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    invoke-direct {p0, v7}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->setFinalBuffer(Lio/netty/buffer/ByteBuf;)V

    .line 579
    move v1, v2

    .line 580
    const/4 v3, 0x0

    .line 581
    goto :goto_3

    .line 525
    .end local v5    # "ampersandpos":I
    :pswitch_1
    const/16 v5, 0x3d

    if-ne v4, v5, :cond_6

    .line 526
    sget-object v5, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 527
    add-int/lit8 v5, v2, -0x1

    .line 528
    .local v5, "equalpos":I
    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v7, v5, v1

    iget-object v8, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v1, v7, v8}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v6, v7}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 530
    .local v6, "key":Ljava/lang/String;
    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v8, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v7, v8, v6}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v7

    iput-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    .line 531
    move v1, v2

    .line 532
    .end local v6    # "key":Ljava/lang/String;
    goto :goto_1

    .end local v5    # "equalpos":I
    :cond_6
    if-ne v4, v7, :cond_7

    .line 533
    sget-object v5, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 534
    add-int/lit8 v5, v2, -0x1

    .line 535
    .local v5, "ampersandpos":I
    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v7, v5, v1

    iget-object v8, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    .line 536
    invoke-virtual {v6, v1, v7, v8}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    .line 535
    invoke-static {v6, v7}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 537
    .restart local v6    # "key":Ljava/lang/String;
    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v8, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v7, v8, v6}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v7

    iput-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    .line 538
    const-string v8, ""

    invoke-interface {v7, v8}, Lio/netty/handler/codec/http/multipart/Attribute;->setValue(Ljava/lang/String;)V

    .line 539
    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {p0, v7}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->addHttpData(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    .line 540
    const/4 v7, 0x0

    iput-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    .line 541
    move v1, v2

    .line 542
    const/4 v3, 0x1

    .line 590
    .end local v4    # "read":C
    .end local v5    # "ampersandpos":I
    .end local v6    # "key":Ljava/lang/String;
    :cond_7
    :goto_1
    goto/16 :goto_0

    .line 587
    .restart local v4    # "read":C
    :goto_2
    const/4 v3, 0x0

    .line 591
    .end local v4    # "read":C
    :cond_8
    :goto_3
    iget-boolean v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->isLastChunk:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    if-eqz v4, :cond_b

    .line 593
    move v5, v2

    .line 594
    .restart local v5    # "ampersandpos":I
    if-le v5, v1, :cond_9

    .line 595
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v6, v5, v1

    invoke-virtual {v4, v1, v6}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-direct {p0, v4}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->setFinalBuffer(Lio/netty/buffer/ByteBuf;)V

    goto :goto_4

    .line 596
    :cond_9
    invoke-interface {v4}, Lio/netty/handler/codec/http/multipart/Attribute;->isCompleted()Z

    move-result v4

    if-nez v4, :cond_a

    .line 597
    sget-object v4, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, v4}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->setFinalBuffer(Lio/netty/buffer/ByteBuf;)V

    .line 599
    :cond_a
    :goto_4
    move v1, v2

    .line 600
    sget-object v4, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    goto :goto_5

    .line 601
    .end local v5    # "ampersandpos":I
    :cond_b
    if-eqz v3, :cond_c

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v5, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v4, v5, :cond_c

    .line 603
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v7, v2, v1

    invoke-virtual {v5, v1, v7}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Lio/netty/handler/codec/http/multipart/Attribute;->addContent(Lio/netty/buffer/ByteBuf;Z)V

    .line 605
    move v1, v2

    .line 607
    :cond_c
    :goto_5
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catch Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    nop

    .line 621
    return-void

    .line 616
    :catch_0
    move-exception v4

    .line 618
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v5, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 619
    new-instance v5, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v5, v4}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 612
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    .line 614
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v5, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 615
    new-instance v5, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v5, v4}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 608
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 610
    .local v4, "e":Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v5, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 611
    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseBodyAttributesStandard()V
    .locals 8

    .line 394
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 395
    .local v0, "firstpos":I
    move v1, v0

    .line 398
    .local v1, "currentpos":I
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->NOTSTARTED:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v2, v3, :cond_0

    .line 399
    sget-object v2, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 401
    :cond_0
    const/4 v2, 0x1

    .line 403
    .local v2, "contRead":Z
    :goto_0
    :try_start_0
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    .line 404
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v3

    int-to-char v3, v3

    .line 405
    .local v3, "read":C
    add-int/lit8 v1, v1, 0x1

    .line 406
    sget-object v4, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$1;->$SwitchMap$io$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus:[I

    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-virtual {v5}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0x26

    packed-switch v4, :pswitch_data_0

    .line 462
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 429
    :pswitch_0
    if-ne v3, v5, :cond_1

    .line 430
    sget-object v4, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 431
    add-int/lit8 v4, v1, -0x1

    .line 432
    .local v4, "ampersandpos":I
    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v6, v4, v0

    invoke-virtual {v5, v0, v6}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    invoke-direct {p0, v5}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->setFinalBuffer(Lio/netty/buffer/ByteBuf;)V

    .line 433
    move v0, v1

    .line 434
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 435
    .end local v4    # "ampersandpos":I
    :cond_1
    const/16 v4, 0xd

    const/16 v5, 0xa

    if-ne v3, v4, :cond_4

    .line 436
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 437
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v4

    int-to-char v3, v4

    .line 438
    add-int/lit8 v1, v1, 0x1

    .line 439
    if-ne v3, v5, :cond_2

    .line 440
    sget-object v4, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 441
    add-int/lit8 v4, v1, -0x2

    .line 442
    .restart local v4    # "ampersandpos":I
    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v6, v4, v0

    invoke-virtual {v5, v0, v6}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    invoke-direct {p0, v5}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->setFinalBuffer(Lio/netty/buffer/ByteBuf;)V

    .line 443
    move v0, v1

    .line 444
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 447
    .end local v4    # "ampersandpos":I
    :cond_2
    new-instance v4, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v5, "Bad end of line"

    invoke-direct {v4, v5}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    .end local v0    # "firstpos":I
    .end local v1    # "currentpos":I
    .end local v2    # "contRead":Z
    throw v4

    .line 450
    .restart local v0    # "firstpos":I
    .restart local v1    # "currentpos":I
    .restart local v2    # "contRead":Z
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 452
    :cond_4
    if-ne v3, v5, :cond_6

    .line 453
    sget-object v4, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 454
    add-int/lit8 v4, v1, -0x1

    .line 455
    .restart local v4    # "ampersandpos":I
    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v6, v4, v0

    invoke-virtual {v5, v0, v6}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    invoke-direct {p0, v5}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->setFinalBuffer(Lio/netty/buffer/ByteBuf;)V

    .line 456
    move v0, v1

    .line 457
    const/4 v2, 0x0

    goto :goto_1

    .line 408
    .end local v4    # "ampersandpos":I
    :pswitch_1
    const/16 v4, 0x3d

    if-ne v3, v4, :cond_5

    .line 409
    sget-object v4, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 410
    add-int/lit8 v4, v1, -0x1

    .line 411
    .local v4, "equalpos":I
    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v6, v4, v0

    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v0, v6, v7}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 413
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v6, v7, v5}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v6

    iput-object v6, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    .line 414
    move v0, v1

    .line 415
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_1

    .end local v4    # "equalpos":I
    :cond_5
    if-ne v3, v5, :cond_6

    .line 416
    sget-object v4, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 417
    add-int/lit8 v4, v1, -0x1

    .line 418
    .local v4, "ampersandpos":I
    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v6, v4, v0

    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    .line 419
    invoke-virtual {v5, v0, v6, v7}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    .line 418
    invoke-static {v5, v6}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 420
    .restart local v5    # "key":Ljava/lang/String;
    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v6, v7, v5}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v6

    iput-object v6, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    .line 421
    const-string v7, ""

    invoke-interface {v6, v7}, Lio/netty/handler/codec/http/multipart/Attribute;->setValue(Ljava/lang/String;)V

    .line 422
    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {p0, v6}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->addHttpData(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    .line 423
    const/4 v6, 0x0

    iput-object v6, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    .line 424
    move v0, v1

    .line 425
    const/4 v2, 0x1

    .line 464
    .end local v3    # "read":C
    .end local v4    # "ampersandpos":I
    .end local v5    # "key":Ljava/lang/String;
    :cond_6
    :goto_1
    goto/16 :goto_0

    .line 465
    :cond_7
    iget-boolean v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->isLastChunk:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    if-eqz v3, :cond_a

    .line 467
    move v4, v1

    .line 468
    .restart local v4    # "ampersandpos":I
    if-le v4, v0, :cond_8

    .line 469
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v5, v4, v0

    invoke-virtual {v3, v0, v5}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->setFinalBuffer(Lio/netty/buffer/ByteBuf;)V

    goto :goto_2

    .line 470
    :cond_8
    invoke-interface {v3}, Lio/netty/handler/codec/http/multipart/Attribute;->isCompleted()Z

    move-result v3

    if-nez v3, :cond_9

    .line 471
    sget-object v3, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, v3}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->setFinalBuffer(Lio/netty/buffer/ByteBuf;)V

    .line 473
    :cond_9
    :goto_2
    move v0, v1

    .line 474
    sget-object v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    goto :goto_3

    .line 475
    .end local v4    # "ampersandpos":I
    :cond_a
    if-eqz v2, :cond_b

    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v4, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v3, v4, :cond_b

    .line 477
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    sub-int v5, v1, v0

    invoke-virtual {v4, v0, v5}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lio/netty/handler/codec/http/multipart/Attribute;->addContent(Lio/netty/buffer/ByteBuf;Z)V

    .line 479
    move v0, v1

    .line 481
    :cond_b
    :goto_3
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catch Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    nop

    .line 495
    return-void

    .line 490
    :catch_0
    move-exception v3

    .line 492
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 493
    new-instance v4, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v4, v3}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 486
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 488
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 489
    new-instance v4, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v4, v3}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 482
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 484
    .local v3, "e":Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 485
    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setFinalBuffer(Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lio/netty/handler/codec/http/multipart/Attribute;->addContent(Lio/netty/buffer/ByteBuf;Z)V

    .line 625
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->getByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1, v0}, Lio/netty/handler/codec/http/multipart/Attribute;->setValue(Ljava/lang/String;)V

    .line 627
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->addHttpData(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    .line 628
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    .line 629
    return-void
.end method


# virtual methods
.method protected addHttpData(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .locals 3
    .param p1, "data"    # Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 373
    if-nez p1, :cond_0

    .line 374
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 377
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/InterfaceHttpData;>;"
    if-nez v0, :cond_1

    .line 378
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 379
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    return-void
.end method

.method public cleanFiles()V
    .locals 2

    .line 666
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    .line 668
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->cleanRequestHttpData(Lio/netty/handler/codec/http/HttpRequest;)V

    .line 669
    return-void
.end method

.method public currentPartialHttpData()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 349
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 651
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->cleanFiles()V

    .line 653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->destroyed:Z

    .line 655
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    .line 656
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 657
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    .line 659
    :cond_0
    return-void
.end method

.method public getBodyHttpData(Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 258
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    .line 260
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 264
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/InterfaceHttpData;>;"
    if-eqz v0, :cond_0

    .line 265
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    return-object v1

    .line 267
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 261
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/InterfaceHttpData;>;"
    :cond_1
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0
.end method

.method public getBodyHttpDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    .line 217
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpData:Ljava/util/List;

    return-object v0

    .line 218
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0
.end method

.method public getBodyHttpDatas(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    .line 238
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 239
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0
.end method

.method public getDiscardThreshold()I
    .locals 1

    .line 200
    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->discardThreshold:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 314
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    .line 316
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v1, :cond_1

    .line 318
    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpDataRank:I

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$EndOfDataDecoderException;

    invoke-direct {v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$EndOfDataDecoderException;-><init>()V

    throw v0

    .line 322
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpDataRank:I

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isMultipart()Z
    .locals 1

    .line 181
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 3

    .line 339
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    .line 341
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpData:Ljava/util/List;

    iget v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpDataRank:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->bodyListHttpDataRank:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    return-object v0

    .line 344
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public offer(Lio/netty/handler/codec/http/HttpContent;)Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;
    .locals 3
    .param p1, "content"    # Lio/netty/handler/codec/http/HttpContent;

    .line 281
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    .line 286
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 287
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    if-nez v1, :cond_0

    .line 288
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {v1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 292
    :goto_0
    instance-of v1, p1, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v1, :cond_1

    .line 293
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->isLastChunk:Z

    .line 295
    :cond_1
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->parseBody()V

    .line 296
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    iget v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->discardThreshold:I

    if-le v1, v2, :cond_2

    .line 297
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->discardReadBytes()Lio/netty/buffer/ByteBuf;

    .line 299
    :cond_2
    return-object p0
.end method

.method public bridge synthetic offer(Lio/netty/handler/codec/http/HttpContent;)Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->offer(Lio/netty/handler/codec/http/HttpContent;)Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;

    move-result-object p1

    return-object p1
.end method

.method public removeHttpDataFromClean(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .locals 2
    .param p1, "data"    # Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 676
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->checkDestroyed()V

    .line 678
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v1, p1}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->removeHttpDataFromClean(Lio/netty/handler/codec/http/HttpRequest;Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    .line 679
    return-void
.end method

.method public setDiscardThreshold(I)V
    .locals 1
    .param p1, "discardThreshold"    # I

    .line 192
    const-string v0, "discardThreshold"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;->discardThreshold:I

    .line 193
    return-void
.end method
