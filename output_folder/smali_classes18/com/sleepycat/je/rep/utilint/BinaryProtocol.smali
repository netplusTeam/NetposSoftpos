.class public abstract Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
.super Ljava/lang/Object;
.source "BinaryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;,
        Lcom/sleepycat/je/rep/utilint/BinaryProtocol$IncompatibleVersion;,
        Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ServerVersion;,
        Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ClientVersion;,
        Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolVersion;,
        Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolError;,
        Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;,
        Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;,
        Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;,
        Lcom/sleepycat/je/rep/utilint/BinaryProtocol$WireFormatable;,
        Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static CACHED_BUFFER_SIZE:I = 0x0

.field protected static final MESSAGE_HEADER_SIZE:I = 0x6


# instance fields
.field public final CLIENT_VERSION:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public final INCOMPATIBLE_VERSION:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public final PROTOCOL_ERROR:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public final SERVER_VERSION:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field private final cachedReadBuffer:Ljava/nio/ByteBuffer;

.field private final cachedWriteBuffer:Ljava/nio/ByteBuffer;

.field protected final codeVersion:I

.field protected configuredVersion:I

.field protected final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field protected final formatter:Ljava/util/logging/Formatter;

.field protected final header:Ljava/nio/ByteBuffer;

.field protected final logger:Ljava/util/logging/Logger;

.field private final maxMessageSize:J

.field protected final nBytesRead:Lcom/sleepycat/je/utilint/LongStat;

.field protected final nBytesWritten:Lcom/sleepycat/je/utilint/LongStat;

.field protected final nEntriesWrittenOldVersion:Lcom/sleepycat/je/utilint/LongStat;

.field protected final nMessageBatches:Lcom/sleepycat/je/utilint/LongStat;

.field protected final nMessagesBatched:Lcom/sleepycat/je/utilint/LongStat;

.field protected final nMessagesRead:Lcom/sleepycat/je/utilint/LongStat;

.field protected final nMessagesWritten:Lcom/sleepycat/je/utilint/LongStat;

.field protected final nReadNanos:Lcom/sleepycat/je/utilint/LongStat;

.field protected final nWriteNanos:Lcom/sleepycat/je/utilint/LongStat;

.field protected final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private final ops:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;",
            ">;"
        }
    .end annotation
.end field

.field private final predefinedMessageCount:I

.field protected final stats:Lcom/sleepycat/je/utilint/StatGroup;

.field private final useStringDefaultEncoding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    nop

    .line 246
    const/16 v0, 0x4000

    sput v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->CACHED_BUFFER_SIZE:I

    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;IILcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 7
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "codeVersion"    # I
    .param p3, "configuredVersion"    # I
    .param p4, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    nop

    .line 75
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->header:Ljava/nio/ByteBuffer;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->ops:Ljava/util/Map;

    .line 101
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ClientVersion;

    const/16 v2, 0x3e9

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->CLIENT_VERSION:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 104
    new-instance v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ServerVersion;

    const/16 v3, 0x3ea

    invoke-direct {v1, v3, v2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->SERVER_VERSION:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 107
    new-instance v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v3, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$IncompatibleVersion;

    const/16 v4, 0x3eb

    invoke-direct {v2, v4, v3}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->INCOMPATIBLE_VERSION:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 110
    new-instance v3, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v4, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolError;

    const/16 v5, 0x3ec

    invoke-direct {v3, v5, v4}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->PROTOCOL_ERROR:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 252
    sget v4, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->CACHED_BUFFER_SIZE:I

    .line 253
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->cachedReadBuffer:Ljava/nio/ByteBuffer;

    .line 255
    sget v4, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->CACHED_BUFFER_SIZE:I

    .line 256
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->cachedWriteBuffer:Ljava/nio/ByteBuffer;

    .line 142
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 143
    iput p2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->codeVersion:I

    .line 144
    iput p3, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->configuredVersion:I

    .line 145
    iput-object p4, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 147
    if-eqz p4, :cond_0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->logger:Ljava/util/logging/Logger;

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerFormatterNeeded(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->logger:Ljava/util/logging/Logger;

    .line 152
    :goto_0
    new-instance v4, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    invoke-direct {v4, p1}, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v4, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->formatter:Ljava/util/logging/Formatter;

    .line 154
    new-instance v4, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v5, "BinaryProtocol"

    const-string v6, "Network traffic due to the replication stream."

    invoke-direct {v4, v5, v6}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 156
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v6, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_READ_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v4, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nReadNanos:Lcom/sleepycat/je/utilint/LongStat;

    .line 157
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v6, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_WRITE_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v4, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nWriteNanos:Lcom/sleepycat/je/utilint/LongStat;

    .line 158
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v6, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_BYTES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v4, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nBytesRead:Lcom/sleepycat/je/utilint/LongStat;

    .line 159
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v6, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v4, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nMessagesRead:Lcom/sleepycat/je/utilint/LongStat;

    .line 160
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v6, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_BYTES_WRITTEN:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v4, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nBytesWritten:Lcom/sleepycat/je/utilint/LongStat;

    .line 161
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v6, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_WRITTEN:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v4, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nMessagesWritten:Lcom/sleepycat/je/utilint/LongStat;

    .line 162
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v6, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_BATCHED:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v4, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nMessagesBatched:Lcom/sleepycat/je/utilint/LongStat;

    .line 163
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v6, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGE_BATCHES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v4, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nMessageBatches:Lcom/sleepycat/je/utilint/LongStat;

    .line 164
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v6, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_ENTRIES_WRITTEN_OLD_VERSION:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v4, v6}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nEntriesWrittenOldVersion:Lcom/sleepycat/je/utilint/LongStat;

    .line 169
    const/4 v4, 0x4

    new-array v5, v4, [Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    aput-object v3, v5, v1

    :goto_1
    if-ge v6, v4, :cond_2

    aget-object v1, v5, v6

    .line 174
    .local v1, "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->ops:Ljava/util/Map;

    invoke-static {v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->access$000(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 169
    .end local v1    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 175
    .restart local v1    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate op: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    invoke-static {v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->access$000(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;)S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 179
    .end local v1    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->ops:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->predefinedMessageCount:I

    .line 180
    if-eqz p4, :cond_4

    .line 181
    invoke-virtual {p4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    .line 182
    .local v1, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->MAX_MESSAGE_SIZE:Lcom/sleepycat/je/config/LongConfigParam;

    .line 183
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v2

    .line 184
    .local v2, "mMSz":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 185
    invoke-virtual {p4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/MemoryBudget;->getMaxMemory()J

    move-result-wide v4

    shr-long/2addr v4, v0

    goto :goto_2

    :cond_3
    move-wide v4, v2

    :goto_2
    iput-wide v4, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->maxMessageSize:J

    .line 187
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->PROTOCOL_OLD_STRING_ENCODING:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 188
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->useStringDefaultEncoding:Z

    .line 189
    .end local v1    # "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    .end local v2    # "mMSz":J
    goto :goto_3

    .line 191
    :cond_4
    const-wide/32 v1, 0x100000

    iput-wide v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->maxMessageSize:J

    .line 192
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->useStringDefaultEncoding:Z

    .line 194
    :goto_3
    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->allocateWriteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private allocateReadBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "size"    # I

    .line 265
    sget v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->CACHED_BUFFER_SIZE:I

    if-gt p1, v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->cachedReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 267
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->cachedReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 268
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->cachedReadBuffer:Ljava/nio/ByteBuffer;

    return-object v0

    .line 270
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private allocateWriteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "size"    # I

    .line 280
    sget v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->CACHED_BUFFER_SIZE:I

    if-gt p1, v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->cachedWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 282
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->cachedWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 283
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->cachedWriteBuffer:Ljava/nio/ByteBuffer;

    return-object v0

    .line 285
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private bytesToString([B)Ljava/lang/String;
    .locals 1
    .param p1, "b"    # [B

    .line 338
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->useStringDefaultEncoding:Z

    if-eqz v0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 341
    :cond_0
    invoke-static {p1}, Lcom/sleepycat/utilint/StringUtils;->fromUTF8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fillBuffer(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 441
    .local v0, "start":J
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-nez v2, :cond_2

    .line 442
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 443
    invoke-interface {p1, p2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 444
    .local v2, "numRead":I
    if-lez v2, :cond_0

    .line 448
    .end local v2    # "numRead":I
    goto :goto_0

    .line 445
    .restart local v2    # "numRead":I
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " read bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 446
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 449
    .end local v2    # "numRead":I
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nReadNanos:Lcom/sleepycat/je/utilint/LongStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 450
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 451
    return-void

    .line 441
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private flushBuffer(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "channel"    # Ljava/nio/channels/WritableByteChannel;
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_3

    .line 675
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-nez v0, :cond_0

    .line 676
    return-void

    .line 679
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 691
    .local v0, "start":J
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_2

    .line 692
    invoke-interface {p1, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 693
    .local v2, "bytes":I
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nBytesWritten:Lcom/sleepycat/je/utilint/LongStat;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 694
    if-nez v2, :cond_1

    .line 701
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 703
    .end local v2    # "bytes":I
    :cond_1
    goto :goto_0

    .line 705
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nWriteNanos:Lcom/sleepycat/je/utilint/LongStat;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 706
    return-void

    .line 673
    .end local v0    # "start":J
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private getOp(Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 5
    .param p1, "messageBuffer"    # Ljava/nio/ByteBuffer;

    .line 400
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readShort(Ljava/nio/ByteBuffer;)S

    move-result v0

    .line 401
    .local v0, "opId":S
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->ops:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 403
    .local v1, "messageOp":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    if-eqz v1, :cond_0

    .line 409
    return-object v1

    .line 404
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message op id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Known op ids:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->ops:Ljava/util/Map;

    .line 407
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 405
    invoke-static {v2, v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2
.end method

.method private stringToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 325
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->useStringDefaultEncoding:Z

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 328
    :cond_0
    invoke-static {p1}, Lcom/sleepycat/utilint/StringUtils;->toUTF8(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 7
    .param p1, "message"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .param p2, "channel"    # Ljava/nio/channels/WritableByteChannel;
    .param p3, "destinationNameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->wireFormat()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 560
    .local v0, "messageBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nMessagesWritten:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 562
    invoke-direct {p0, p2, v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->flushBuffer(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 564
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    sget-object v1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    if-ne p3, v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->formatter:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->formatter:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sent to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 572
    invoke-virtual {p3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 570
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 578
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 579
    return-void
.end method


# virtual methods
.method public bufferWrite(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;ILcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)I
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/WritableByteChannel;
    .param p2, "batchWriteBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "nMessages"    # I
    .param p4, "message"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    if-lez p3, :cond_2

    .line 613
    invoke-virtual {p4}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->wireFormat()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 615
    .local v0, "messageBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 617
    add-int/lit8 v1, p3, -0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->flushBufferedWrites(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;I)V

    .line 619
    const/4 p3, 0x1

    .line 621
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 626
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-nez v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nMessagesWritten:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 628
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->flushBuffer(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 629
    const/4 p3, 0x0

    .line 630
    return p3

    .line 626
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 634
    :cond_1
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 635
    return p3

    .line 611
    .end local v0    # "messageBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public flushBufferedWrites(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/WritableByteChannel;
    .param p2, "batchWriteBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "nMessages"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nMessagesWritten:Lcom/sleepycat/je/utilint/LongStat;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 654
    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nMessagesBatched:Lcom/sleepycat/je/utilint/LongStat;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 656
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nMessageBatches:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 659
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 660
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->flushBuffer(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 661
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 663
    return-void
.end method

.method public final getPredefinedMessageCount()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->predefinedMessageCount:I

    return v0
.end method

.method public getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 236
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    .line 238
    .local v0, "ret":Lcom/sleepycat/je/utilint/StatGroup;
    return-object v0
.end method

.method public getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 308
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 309
    .local v0, "length":I
    new-array v1, v0, [B

    .line 310
    .local v1, "b":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 311
    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->bytesToString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getVersion()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->configuredVersion:I

    return v0
.end method

.method protected initializeMessageOps([Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;)V
    .locals 5
    .param p1, "protocolOps"    # [Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 203
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 204
    .local v2, "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->ops:Ljava/util/Map;

    invoke-static {v2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->access$000(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 203
    .end local v2    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .restart local v2    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate op: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    invoke-static {v2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->access$000(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 209
    .end local v2    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    :cond_1
    return-void
.end method

.method public messageCount()I
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->ops:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public putString(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 295
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 296
    .local v0, "b":[B
    array-length v1, v0

    invoke-static {p2, v1}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 297
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 298
    return-void
.end method

.method public read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .locals 12
    .param p1, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->header:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->fillBuffer(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 469
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->header:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->getOp(Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v0

    .line 471
    .local v0, "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 474
    .local v1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;>;"
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->header:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 475
    .local v2, "messageBodySize":I
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nBytesRead:Lcom/sleepycat/je/utilint/LongStat;

    add-int/lit8 v4, v2, 0x6

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 476
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->nMessagesRead:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    const-string v3, " Body size: "

    const-string v4, "Message op: "

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-lez v2, :cond_1

    .line 478
    int-to-long v8, v2

    :try_start_1
    iget-wide v10, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->maxMessageSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    .line 487
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->allocateReadBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 488
    .local v3, "body":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1, v3}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->fillBuffer(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 489
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v6

    aput-object v3, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 489
    return-object v4

    .line 479
    .end local v3    # "body":Ljava/nio/ByteBuffer;
    :cond_0
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too large.  maxSizeAllowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->maxMessageSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nIf a larger value is needed, set the \'je.rep.maxMessageSize\' parameter."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 480
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    .end local v0    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .end local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    throw v3

    .line 492
    .restart local v0    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .restart local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    :cond_1
    if-ltz v2, :cond_2

    .line 497
    new-array v3, v7, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const/4 v4, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 497
    return-object v3

    .line 493
    :cond_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 494
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    .end local v0    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .end local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    throw v3
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 508
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;>;"
    .end local v2    # "messageBodySize":I
    .restart local v0    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .restart local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 504
    :catch_0
    move-exception v1

    .line 505
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_4
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v0    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .end local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    throw v2

    .line 502
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v0    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .restart local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    :catch_1
    move-exception v1

    .line 503
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v0    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .end local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    throw v2

    .line 500
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .restart local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    :catch_2
    move-exception v1

    .line 501
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v0    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .end local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    throw v2

    .line 498
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .restart local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    :catch_3
    move-exception v1

    .line 499
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v0    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .end local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 508
    .end local v1    # "e":Ljava/lang/InstantiationException;
    .restart local v0    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .restart local p1    # "channel":Ljava/nio/channels/ReadableByteChannel;
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    throw v1
.end method

.method public read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">(",
            "Ljava/nio/channels/ReadableByteChannel;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
        }
    .end annotation

    .line 516
    .local p2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    .line 523
    .local v0, "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    return-object v0

    .line 526
    :cond_0
    new-instance v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;

    invoke-direct {v1, v0, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/lang/Class;)V

    throw v1
.end method

.method public resetStats()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatGroup;->clear()V

    .line 243
    return-void
.end method

.method public stringSize(Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 290
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V
    .locals 1
    .param p1, "message"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .param p2, "namedChannel"    # Lcom/sleepycat/je/rep/utilint/NamedChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 537
    return-void
.end method

.method public write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V
    .locals 1
    .param p1, "message"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .param p2, "channel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    sget-object v0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 547
    return-void
.end method
