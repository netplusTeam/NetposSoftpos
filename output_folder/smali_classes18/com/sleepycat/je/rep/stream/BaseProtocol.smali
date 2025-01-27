.class public abstract Lcom/sleepycat/je/rep/stream/BaseProtocol;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
.source "BaseProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;,
        Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;,
        Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;,
        Lcom/sleepycat/je/rep/stream/BaseProtocol$GroupAck;,
        Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownResponse;,
        Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;,
        Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;,
        Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreRequest;,
        Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;,
        Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryNotFound;,
        Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;,
        Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;,
        Lcom/sleepycat/je/rep/stream/BaseProtocol$Ack;,
        Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;,
        Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;,
        Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;,
        Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;,
        Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;
    }
.end annotation


# static fields
.field public static final ACK:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final ALT_MATCHPOINT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final COMMIT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final ENTRY:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final ENTRY_NOTFOUND:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final ENTRY_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final GROUP_ACK:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final HEARTBEAT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final HEARTBEAT_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field protected static final MAX_MESSAGE_OP_CODE_IN_SUBCLASS:S = 0x7ffs

.field public static final MAX_VERSION:I = 0x9

.field protected static final MIN_MESSAGE_OP_CODE_IN_SUBCLASS:S = 0x400s

.field static final MIN_VERSION:I = 0x3

.field public static final RESTORE_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final RESTORE_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final SHUTDOWN_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final SHUTDOWN_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final START_STREAM:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field static final VERSION_3:I = 0x3

.field public static final VERSION_3_JE_VERSION:Lcom/sleepycat/je/JEVersion;

.field static final VERSION_4:I = 0x4

.field public static final VERSION_4_JE_VERSION:Lcom/sleepycat/je/JEVersion;

.field public static final VERSION_5:I = 0x5

.field public static final VERSION_5_JE_VERSION:Lcom/sleepycat/je/JEVersion;

.field public static final VERSION_6:I = 0x6

.field public static final VERSION_6_JE_VERSION:Lcom/sleepycat/je/JEVersion;

.field public static final VERSION_7:I = 0x7

.field public static final VERSION_7_JE_VERSION:Lcom/sleepycat/je/JEVersion;

.field public static final VERSION_8:I = 0x8

.field public static final VERSION_8_JE_VERSION:Lcom/sleepycat/je/JEVersion;

.field public static final VERSION_9:I = 0x9

.field public static final VERSION_9_JE_VERSION:Lcom/sleepycat/je/JEVersion;


# instance fields
.field private fixLogVersion12Entries:Z

.field protected final nAckMessages:Lcom/sleepycat/je/utilint/LongStat;

.field protected final nGroupAckMessages:Lcom/sleepycat/je/utilint/LongStat;

.field protected final nGroupedAcks:Lcom/sleepycat/je/utilint/LongStat;

.field protected final nMaxGroupedAcks:Lcom/sleepycat/je/utilint/LongMaxStat;

.field protected final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field protected streamLogVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    new-instance v0, Lcom/sleepycat/je/JEVersion;

    const-string v1, "18.3.4"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->VERSION_9_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    .line 89
    new-instance v0, Lcom/sleepycat/je/JEVersion;

    const-string v1, "18.3.1"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->VERSION_8_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    .line 96
    new-instance v0, Lcom/sleepycat/je/JEVersion;

    const-string v1, "7.5.6"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->VERSION_7_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    .line 103
    new-instance v0, Lcom/sleepycat/je/JEVersion;

    const-string v1, "6.4.10"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->VERSION_6_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    .line 108
    new-instance v0, Lcom/sleepycat/je/JEVersion;

    const-string v1, "6.0.1"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->VERSION_5_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    .line 117
    new-instance v0, Lcom/sleepycat/je/JEVersion;

    const-string v1, "5.0.58"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->VERSION_4_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    .line 122
    new-instance v0, Lcom/sleepycat/je/JEVersion;

    const-string v1, "4.0.50"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->VERSION_3_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    .line 141
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;

    const/16 v2, 0x65

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->ENTRY:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 144
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;

    const/16 v2, 0x66

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->START_STREAM:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 147
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;

    const/16 v2, 0x67

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->HEARTBEAT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 150
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;

    const/16 v2, 0x68

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->HEARTBEAT_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 153
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;

    const/16 v2, 0x69

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->COMMIT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 156
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$Ack;

    const/16 v2, 0x6a

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->ACK:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 159
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;

    const/16 v2, 0x6b

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->ENTRY_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 162
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryNotFound;

    const/16 v2, 0x6c

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->ENTRY_NOTFOUND:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 165
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;

    const/16 v2, 0x6d

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->ALT_MATCHPOINT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 168
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreRequest;

    const/16 v2, 0x6e

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->RESTORE_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 171
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;

    const/16 v2, 0x6f

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->RESTORE_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 174
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;

    const/16 v2, 0x70

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->SHUTDOWN_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 177
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownResponse;

    const/16 v2, 0x71

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->SHUTDOWN_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 180
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$GroupAck;

    const/16 v2, 0x72

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->GROUP_ACK:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;III[Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;)V
    .locals 8
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p2, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p3, "protocolVersion"    # I
    .param p4, "maxProtocolVersion"    # I
    .param p5, "streamLogVersion"    # I
    .param p6, "protocolOps"    # [Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 288
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/rep/stream/BaseProtocol;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;III[Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;Z)V

    .line 290
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;III[Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;Z)V
    .locals 3
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p2, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p3, "protocolVersion"    # I
    .param p4, "maxProtocolVersion"    # I
    .param p5, "streamLogVersion"    # I
    .param p6, "protocolOps"    # [Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .param p7, "checkValidity"    # Z

    .line 246
    invoke-direct {p0, p2, p4, p3, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;IILcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->fixLogVersion12Entries:Z

    .line 247
    iput p5, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->streamLogVersion:I

    .line 248
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 250
    new-instance v0, Lcom/sleepycat/je/utilint/LongStat;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_ACK_MESSAGES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->nAckMessages:Lcom/sleepycat/je/utilint/LongStat;

    .line 251
    new-instance v0, Lcom/sleepycat/je/utilint/LongStat;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_GROUP_ACK_MESSAGES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->nGroupAckMessages:Lcom/sleepycat/je/utilint/LongStat;

    .line 252
    new-instance v0, Lcom/sleepycat/je/utilint/LongStat;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_GROUPED_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->nGroupedAcks:Lcom/sleepycat/je/utilint/LongStat;

    .line 253
    new-instance v0, Lcom/sleepycat/je/utilint/LongMaxZeroStat;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MAX_GROUPED_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongMaxZeroStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->nMaxGroupedAcks:Lcom/sleepycat/je/utilint/LongMaxStat;

    .line 254
    invoke-direct {p0, p6, p7}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->initializeMessageOps([Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;Z)V

    .line 255
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/stream/BaseProtocol;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 56
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/stream/BaseProtocol;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 56
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/stream/BaseProtocol;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 56
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/rep/stream/BaseProtocol;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 56
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$400(B)Z
    .locals 1
    .param p0, "x0"    # B

    .line 56
    invoke-static {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->getByteNeedsAck(B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(B)Lcom/sleepycat/je/Durability$SyncPolicy;
    .locals 1
    .param p0, "x0"    # B

    .line 56
    invoke-static {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->getByteReplicaSyncPolicy(B)Lcom/sleepycat/je/Durability$SyncPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;[J)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # [J

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->putLongArray(Ljava/nio/ByteBuffer;[J)V

    return-void
.end method

.method static synthetic access$700(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)[J
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;

    .line 56
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->readLongArray(Ljava/nio/ByteBuffer;)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sleepycat/je/rep/stream/BaseProtocol;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 56
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method private static getByteNeedsAck(B)Z
    .locals 2
    .param p0, "needsAckByte"    # B

    .line 1290
    packed-switch p0, :pswitch_data_0

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid bool ordinal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 1294
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1292
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getByteReplicaSyncPolicy(B)Lcom/sleepycat/je/Durability$SyncPolicy;
    .locals 5
    .param p0, "syncPolicyByte"    # B

    .line 1312
    invoke-static {}, Lcom/sleepycat/je/Durability$SyncPolicy;->values()[Lcom/sleepycat/je/Durability$SyncPolicy;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1313
    .local v3, "p":Lcom/sleepycat/je/Durability$SyncPolicy;
    invoke-virtual {v3}, Lcom/sleepycat/je/Durability$SyncPolicy;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 1314
    return-object v3

    .line 1312
    .end local v3    # "p":Lcom/sleepycat/je/Durability$SyncPolicy;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1317
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid sync policy ordinal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method private initializeMessageOps([Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;Z)V
    .locals 4
    .param p1, "protocolOps"    # [Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .param p2, "checkValidity"    # Z

    .line 1270
    if-eqz p2, :cond_1

    .line 1272
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1273
    .local v2, "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->getOpId()S

    move-result v3

    invoke-static {v3}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->isValidMsgOpCode(S)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1272
    .end local v2    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1274
    .restart local v2    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Op id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1275
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->getOpId()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is out of allowed range inclusively ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7ff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 1282
    .end local v2    # "op":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->initializeMessageOps([Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;)V

    .line 1283
    return-void
.end method

.method private static isValidMsgOpCode(S)Z
    .locals 1
    .param p0, "opId"    # S

    .line 1304
    const/16 v0, 0x7ff

    if-gt p0, v0, :cond_0

    const/16 v0, 0x400

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private putLongArray(Ljava/nio/ByteBuffer;[J)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "la"    # [J

    .line 1323
    array-length v0, p2

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 1325
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p2, v1

    .line 1326
    .local v2, "l":J
    invoke-static {p1, v2, v3}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    .line 1325
    .end local v2    # "l":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1328
    :cond_0
    return-void
.end method

.method private readLongArray(Ljava/nio/ByteBuffer;)[J
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1332
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    new-array v0, v0, [J

    .line 1334
    .local v0, "la":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1335
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1338
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getFixLogVersion12Entries()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->fixLogVersion12Entries:Z

    return v0
.end method

.method public getStreamLogVersion()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->streamLogVersion:I

    return v0
.end method

.method public setFixLogVersion12Entries(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 322
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->fixLogVersion12Entries:Z

    .line 323
    return-void
.end method

.method public setStreamLogVersion(I)V
    .locals 0
    .param p1, "streamLogVersion"    # I

    .line 306
    iput p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->streamLogVersion:I

    .line 307
    return-void
.end method

.method protected writeOutputWireRecord(Lcom/sleepycat/je/rep/stream/OutputWireRecord;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "record"    # Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .param p2, "messageBuffer"    # Ljava/nio/ByteBuffer;

    .line 1254
    iget v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->streamLogVersion:I

    .line 1255
    invoke-virtual {p1, p2, v0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->writeToWire(Ljava/nio/ByteBuffer;I)Z

    move-result v0

    .line 1256
    .local v0, "changedFormat":Z
    if-eqz v0, :cond_0

    .line 1257
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->nEntriesWrittenOldVersion:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 1259
    :cond_0
    return-void
.end method
