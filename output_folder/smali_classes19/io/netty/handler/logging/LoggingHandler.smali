.class public Lio/netty/handler/logging/LoggingHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "LoggingHandler.java"


# annotations
.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field private static final DEFAULT_LEVEL:Lio/netty/handler/logging/LogLevel;


# instance fields
.field private final byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

.field protected final internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

.field private final level:Lio/netty/handler/logging/LogLevel;

.field protected final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lio/netty/handler/logging/LogLevel;->DEBUG:Lio/netty/handler/logging/LogLevel;

    sput-object v0, Lio/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lio/netty/handler/logging/LogLevel;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    sget-object v0, Lio/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lio/netty/handler/logging/LogLevel;

    invoke-direct {p0, v0}, Lio/netty/handler/logging/LoggingHandler;-><init>(Lio/netty/handler/logging/LogLevel;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/logging/LogLevel;)V
    .locals 1
    .param p1, "level"    # Lio/netty/handler/logging/LogLevel;

    .line 67
    sget-object v0, Lio/netty/handler/logging/ByteBufFormat;->HEX_DUMP:Lio/netty/handler/logging/ByteBufFormat;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/logging/LoggingHandler;-><init>(Lio/netty/handler/logging/LogLevel;Lio/netty/handler/logging/ByteBufFormat;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/logging/LogLevel;Lio/netty/handler/logging/ByteBufFormat;)V
    .locals 1
    .param p1, "level"    # Lio/netty/handler/logging/LogLevel;
    .param p2, "byteBufFormat"    # Lio/netty/handler/logging/ByteBufFormat;

    .line 77
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 78
    const-string v0, "level"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/logging/LogLevel;

    iput-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->level:Lio/netty/handler/logging/LogLevel;

    .line 79
    const-string v0, "byteBufFormat"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/logging/ByteBufFormat;

    iput-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 81
    invoke-virtual {p1}, Lio/netty/handler/logging/LogLevel;->toInternalLevel()Lio/netty/util/internal/logging/InternalLogLevel;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 91
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lio/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lio/netty/handler/logging/LogLevel;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/Class;Lio/netty/handler/logging/LogLevel;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lio/netty/handler/logging/LogLevel;)V
    .locals 1
    .param p2, "level"    # Lio/netty/handler/logging/LogLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/netty/handler/logging/LogLevel;",
            ")V"
        }
    .end annotation

    .line 101
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lio/netty/handler/logging/ByteBufFormat;->HEX_DUMP:Lio/netty/handler/logging/ByteBufFormat;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/Class;Lio/netty/handler/logging/LogLevel;Lio/netty/handler/logging/ByteBufFormat;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lio/netty/handler/logging/LogLevel;Lio/netty/handler/logging/ByteBufFormat;)V
    .locals 1
    .param p2, "level"    # Lio/netty/handler/logging/LogLevel;
    .param p3, "byteBufFormat"    # Lio/netty/handler/logging/ByteBufFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/netty/handler/logging/LogLevel;",
            "Lio/netty/handler/logging/ByteBufFormat;",
            ")V"
        }
    .end annotation

    .line 111
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 112
    const-string v0, "clazz"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    const-string v0, "level"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/logging/LogLevel;

    iput-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->level:Lio/netty/handler/logging/LogLevel;

    .line 114
    const-string v0, "byteBufFormat"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/logging/ByteBufFormat;

    iput-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

    .line 115
    invoke-static {p1}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 116
    invoke-virtual {p2}, Lio/netty/handler/logging/LogLevel;->toInternalLevel()Lio/netty/util/internal/logging/InternalLogLevel;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 125
    sget-object v0, Lio/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lio/netty/handler/logging/LogLevel;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/String;Lio/netty/handler/logging/LogLevel;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/netty/handler/logging/LogLevel;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # Lio/netty/handler/logging/LogLevel;

    .line 135
    sget-object v0, Lio/netty/handler/logging/ByteBufFormat;->HEX_DUMP:Lio/netty/handler/logging/ByteBufFormat;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/String;Lio/netty/handler/logging/LogLevel;Lio/netty/handler/logging/ByteBufFormat;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/netty/handler/logging/LogLevel;Lio/netty/handler/logging/ByteBufFormat;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # Lio/netty/handler/logging/LogLevel;
    .param p3, "byteBufFormat"    # Lio/netty/handler/logging/ByteBufFormat;

    .line 145
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 146
    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    const-string v0, "level"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/logging/LogLevel;

    iput-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->level:Lio/netty/handler/logging/LogLevel;

    .line 149
    const-string v0, "byteBufFormat"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/logging/ByteBufFormat;

    iput-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

    .line 150
    invoke-static {p1}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 151
    invoke-virtual {p2}, Lio/netty/handler/logging/LogLevel;->toInternalLevel()Lio/netty/util/internal/logging/InternalLogLevel;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    .line 152
    return-void
.end method

.method private formatByteBuf(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "msg"    # Lio/netty/buffer/ByteBuf;

    .line 354
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "chStr":Ljava/lang/String;
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    .line 356
    .local v1, "length":I
    const/16 v2, 0x20

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v4

    .line 358
    .local v3, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": 0B"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 361
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v3

    .line 362
    .local v4, "outputLength":I
    iget-object v5, p0, Lio/netty/handler/logging/LoggingHandler;->byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

    sget-object v6, Lio/netty/handler/logging/ByteBufFormat;->HEX_DUMP:Lio/netty/handler/logging/ByteBufFormat;

    if-ne v5, v6, :cond_2

    .line 363
    div-int/lit8 v5, v1, 0x10

    rem-int/lit8 v6, v1, 0xf

    if-nez v6, :cond_1

    const/4 v3, 0x0

    :cond_1
    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x4

    .line 364
    .local v5, "rows":I
    mul-int/lit8 v3, v5, 0x50

    add-int/lit8 v3, v3, 0x2

    .line 365
    .local v3, "hexDumpLength":I
    add-int/2addr v4, v3

    .line 367
    .end local v3    # "hexDumpLength":I
    .end local v5    # "rows":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 368
    .local v3, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x42

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    iget-object v2, p0, Lio/netty/handler/logging/LoggingHandler;->byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

    sget-object v5, Lio/netty/handler/logging/ByteBufFormat;->HEX_DUMP:Lio/netty/handler/logging/ByteBufFormat;

    if-ne v2, v5, :cond_3

    .line 370
    sget-object v2, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-static {v3, p3}, Lio/netty/buffer/ByteBufUtil;->appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;)V

    .line 374
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private formatByteBufHolder(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/buffer/ByteBufHolder;)Ljava/lang/String;
    .locals 10
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "msg"    # Lio/netty/buffer/ByteBufHolder;

    .line 382
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "chStr":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "msgStr":Ljava/lang/String;
    invoke-interface {p3}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 385
    .local v2, "content":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    .line 386
    .local v3, "length":I
    const-string v4, ", "

    const/16 v5, 0x20

    const/4 v6, 0x1

    if-nez v3, :cond_0

    .line 387
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x4

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v7

    .line 388
    .local v6, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 0B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 391
    .end local v6    # "buf":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v6

    .line 392
    .local v7, "outputLength":I
    iget-object v8, p0, Lio/netty/handler/logging/LoggingHandler;->byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

    sget-object v9, Lio/netty/handler/logging/ByteBufFormat;->HEX_DUMP:Lio/netty/handler/logging/ByteBufFormat;

    if-ne v8, v9, :cond_2

    .line 393
    div-int/lit8 v8, v3, 0x10

    rem-int/lit8 v9, v3, 0xf

    if-nez v9, :cond_1

    const/4 v6, 0x0

    :cond_1
    add-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x4

    .line 394
    .local v8, "rows":I
    mul-int/lit8 v6, v8, 0x50

    add-int/lit8 v6, v6, 0x2

    .line 395
    .local v6, "hexDumpLength":I
    add-int/2addr v7, v6

    .line 397
    .end local v6    # "hexDumpLength":I
    .end local v8    # "rows":I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 398
    .local v6, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 399
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x42

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    iget-object v4, p0, Lio/netty/handler/logging/LoggingHandler;->byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

    sget-object v5, Lio/netty/handler/logging/ByteBufFormat;->HEX_DUMP:Lio/netty/handler/logging/ByteBufFormat;

    if-ne v4, v5, :cond_3

    .line 401
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-static {v6, v2}, Lio/netty/buffer/ByteBufUtil;->appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;)V

    .line 405
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatSimple(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 413
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "chStr":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "msgStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 416
    .local v2, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "BIND"

    invoke-virtual {p0, p1, v2, p2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    .line 221
    :cond_0
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 222
    return-void
.end method

.method public byteBufFormat()Lio/netty/handler/logging/ByteBufFormat;
    .locals 1

    .line 165
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->byteBufFormat:Lio/netty/handler/logging/ByteBufFormat;

    return-object v0
.end method

.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "ACTIVE"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    .line 189
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    .line 190
    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "INACTIVE"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    .line 197
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    .line 198
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "READ"

    invoke-virtual {p0, p1, v2, p2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    .line 271
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 272
    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "READ COMPLETE"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    .line 263
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 264
    return-void
.end method

.method public channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "REGISTERED"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    .line 173
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;

    .line 174
    return-void
.end method

.method public channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "UNREGISTERED"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    .line 181
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;

    .line 182
    return-void
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "WRITABILITY CHANGED"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    .line 287
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    .line 288
    return-void
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "CLOSE"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    .line 247
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 248
    return-void
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "CONNECT"

    invoke-virtual {p0, p1, v2, p2, p3}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    .line 231
    :cond_0
    invoke-interface {p1, p2, p3, p4}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 232
    return-void
.end method

.method public deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "DEREGISTER"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    .line 255
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 256
    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "DISCONNECT"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    .line 239
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 240
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "EXCEPTION"

    invoke-virtual {p0, p1, v2, p2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 206
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "FLUSH"

    invoke-virtual {p0, p1, v2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    .line 295
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 296
    return-void
.end method

.method protected format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "eventName"    # Ljava/lang/String;

    .line 304
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "chStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 306
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 307
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 308
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    return-object v1
.end method

.method protected format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 319
    instance-of v0, p3, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 320
    move-object v0, p3

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/logging/LoggingHandler;->formatByteBuf(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 321
    :cond_0
    instance-of v0, p3, Lio/netty/buffer/ByteBufHolder;

    if-eqz v0, :cond_1

    .line 322
    move-object v0, p3

    check-cast v0, Lio/netty/buffer/ByteBufHolder;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/logging/LoggingHandler;->formatByteBufHolder(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/buffer/ByteBufHolder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 324
    :cond_1
    invoke-static {p1, p2, p3}, Lio/netty/handler/logging/LoggingHandler;->formatSimple(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "firstArg"    # Ljava/lang/Object;
    .param p4, "secondArg"    # Ljava/lang/Object;

    .line 337
    if-nez p4, :cond_0

    .line 338
    invoke-static {p1, p2, p3}, Lio/netty/handler/logging/LoggingHandler;->formatSimple(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 341
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "chStr":Ljava/lang/String;
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "arg1Str":Ljava/lang/String;
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "arg2Str":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 346
    .local v3, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public level()Lio/netty/handler/logging/LogLevel;
    .locals 1

    .line 158
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->level:Lio/netty/handler/logging/LogLevel;

    return-object v0
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "USER_EVENT"

    invoke-virtual {p0, p1, v2, p2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    .line 213
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 214
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lio/netty/handler/logging/LoggingHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/logging/LoggingHandler;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "WRITE"

    invoke-virtual {p0, p1, v2, p2}, Lio/netty/handler/logging/LoggingHandler;->format(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V

    .line 279
    :cond_0
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 280
    return-void
.end method
