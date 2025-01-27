.class public Lcom/sleepycat/je/rep/stream/Protocol;
.super Lcom/sleepycat/je/rep/stream/BaseProtocol;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoReject;,
        Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;,
        Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;,
        Lcom/sleepycat/je/rep/stream/Protocol$JEVersionsReject;,
        Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;,
        Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;,
        Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;,
        Lcom/sleepycat/je/rep/stream/Protocol$DBIdResponse;,
        Lcom/sleepycat/je/rep/stream/Protocol$DBIdRequest;,
        Lcom/sleepycat/je/rep/stream/Protocol$SecurityFailureResponse;,
        Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;,
        Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;,
        Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;,
        Lcom/sleepycat/je/rep/stream/Protocol$DuplicateNodeReject;,
        Lcom/sleepycat/je/rep/stream/Protocol$FeederProtocolVersion;,
        Lcom/sleepycat/je/rep/stream/Protocol$ReplicaProtocolVersion;
    }
.end annotation


# static fields
.field private static final ALL_MESSAGE_OPS:[Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final DBID_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final DBID_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final DUP_NODE_REJECT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final FEEDER_JE_VERSIONS:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final FEEDER_PROTOCOL_VERSION:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final JE_VERSIONS_REJECT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final MEMBERSHIP_INFO:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final MEMBERSHIP_INFO_OK:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final MEMBERSHIP_INFO_REJECT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final REAUTHENTICATE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final REPLICA_JE_VERSIONS:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final REPLICA_PROTOCOL_VERSION:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final SECURITY_FAILURE_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final SNTP_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final SNTP_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;


# instance fields
.field private final clock:Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 98
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/stream/Protocol$ReplicaProtocolVersion;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->REPLICA_PROTOCOL_VERSION:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 101
    new-instance v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v3, Lcom/sleepycat/je/rep/stream/Protocol$FeederProtocolVersion;

    const/4 v4, 0x2

    invoke-direct {v1, v4, v3}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v1, Lcom/sleepycat/je/rep/stream/Protocol;->FEEDER_PROTOCOL_VERSION:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 104
    new-instance v3, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v5, Lcom/sleepycat/je/rep/stream/Protocol$DuplicateNodeReject;

    const/4 v6, 0x3

    invoke-direct {v3, v6, v5}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v3, Lcom/sleepycat/je/rep/stream/Protocol;->DUP_NODE_REJECT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 107
    new-instance v5, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v7, Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;

    const/4 v8, 0x4

    invoke-direct {v5, v8, v7}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v5, Lcom/sleepycat/je/rep/stream/Protocol;->REPLICA_JE_VERSIONS:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 110
    new-instance v7, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v9, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;

    const/4 v10, 0x5

    invoke-direct {v7, v10, v9}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v7, Lcom/sleepycat/je/rep/stream/Protocol;->FEEDER_JE_VERSIONS:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 113
    new-instance v9, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v11, Lcom/sleepycat/je/rep/stream/Protocol$JEVersionsReject;

    const/4 v12, 0x6

    invoke-direct {v9, v12, v11}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v9, Lcom/sleepycat/je/rep/stream/Protocol;->JE_VERSIONS_REJECT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 116
    new-instance v11, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v13, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;

    const/4 v14, 0x7

    invoke-direct {v11, v14, v13}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v11, Lcom/sleepycat/je/rep/stream/Protocol;->MEMBERSHIP_INFO:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 119
    new-instance v13, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v15, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;

    const/16 v14, 0x8

    invoke-direct {v13, v14, v15}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v13, Lcom/sleepycat/je/rep/stream/Protocol;->MEMBERSHIP_INFO_OK:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 122
    new-instance v15, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v14, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoReject;

    const/16 v12, 0x9

    invoke-direct {v15, v12, v14}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v15, Lcom/sleepycat/je/rep/stream/Protocol;->MEMBERSHIP_INFO_REJECT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 125
    new-instance v14, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v12, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;

    const/16 v10, 0xa

    invoke-direct {v14, v10, v12}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v14, Lcom/sleepycat/je/rep/stream/Protocol;->SNTP_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 128
    new-instance v12, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v10, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;

    const/16 v8, 0xb

    invoke-direct {v12, v8, v10}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v12, Lcom/sleepycat/je/rep/stream/Protocol;->SNTP_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 131
    new-instance v10, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v8, Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;

    const/16 v6, 0xc

    invoke-direct {v10, v6, v8}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v10, Lcom/sleepycat/je/rep/stream/Protocol;->REAUTHENTICATE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 134
    new-instance v8, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v6, Lcom/sleepycat/je/rep/stream/Protocol$DBIdRequest;

    const/16 v4, 0xd

    invoke-direct {v8, v4, v6}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v8, Lcom/sleepycat/je/rep/stream/Protocol;->DBID_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 137
    new-instance v6, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v4, Lcom/sleepycat/je/rep/stream/Protocol$DBIdResponse;

    const/16 v2, 0xe

    invoke-direct {v6, v2, v4}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v6, Lcom/sleepycat/je/rep/stream/Protocol;->DBID_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 140
    new-instance v4, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v2, Lcom/sleepycat/je/rep/stream/Protocol$SecurityFailureResponse;

    move-object/from16 v16, v6

    const/16 v6, 0xf

    invoke-direct {v4, v6, v2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v4, Lcom/sleepycat/je/rep/stream/Protocol;->SECURITY_FAILURE_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 144
    const/16 v2, 0x1d

    new-array v2, v2, [Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v17, 0x0

    aput-object v0, v2, v17

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->ENTRY:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v1, 0xb

    aput-object v0, v2, v1

    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->START_STREAM:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v1, 0xc

    aput-object v0, v2, v1

    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->HEARTBEAT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v1, 0xd

    aput-object v0, v2, v1

    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->HEARTBEAT_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v1, 0xe

    aput-object v0, v2, v1

    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->COMMIT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    aput-object v0, v2, v6

    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->ACK:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v1, 0x10

    aput-object v0, v2, v1

    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->ENTRY_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v1, 0x11

    aput-object v0, v2, v1

    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->ENTRY_NOTFOUND:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v1, 0x12

    aput-object v0, v2, v1

    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->RESTORE_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v1, 0x13

    aput-object v0, v2, v1

    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->RESTORE_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v1, 0x14

    aput-object v0, v2, v1

    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->ALT_MATCHPOINT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v1, 0x15

    aput-object v0, v2, v1

    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->SHUTDOWN_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v1, 0x16

    aput-object v0, v2, v1

    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->SHUTDOWN_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v1, 0x17

    aput-object v0, v2, v1

    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->GROUP_ACK:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v1, 0x18

    aput-object v0, v2, v1

    const/16 v0, 0x19

    aput-object v10, v2, v0

    const/16 v0, 0x1a

    aput-object v8, v2, v0

    const/16 v0, 0x1b

    aput-object v16, v2, v0

    const/16 v0, 0x1c

    aput-object v4, v2, v0

    sput-object v2, Lcom/sleepycat/je/rep/stream/Protocol;->ALL_MESSAGE_OPS:[Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;IIII)V
    .locals 8
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p2, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p3, "clock"    # Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;
    .param p4, "protocolVersion"    # I
    .param p5, "maxProtocolVersion"    # I
    .param p6, "streamLogVersion"    # I
    .param p7, "groupFormatVersion"    # I

    .line 206
    sget-object v6, Lcom/sleepycat/je/rep/stream/Protocol;->ALL_MESSAGE_OPS:[Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/rep/stream/BaseProtocol;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;III[Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;Z)V

    .line 211
    iput p4, p0, Lcom/sleepycat/je/rep/stream/Protocol;->configuredVersion:I

    .line 212
    iput-object p3, p0, Lcom/sleepycat/je/rep/stream/Protocol;->clock:Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/stream/Protocol;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/Protocol;

    .line 91
    iget v0, p0, Lcom/sleepycat/je/rep/stream/Protocol;->configuredVersion:I

    return v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/stream/Protocol;)Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/Protocol;

    .line 91
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol;->clock:Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/rep/stream/Protocol;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/Protocol;

    .line 91
    iget v0, p0, Lcom/sleepycat/je/rep/stream/Protocol;->configuredVersion:I

    return v0
.end method

.method static synthetic access$500(Lcom/sleepycat/je/rep/stream/Protocol;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/Protocol;

    .line 91
    iget v0, p0, Lcom/sleepycat/je/rep/stream/Protocol;->configuredVersion:I

    return v0
.end method

.method public static get(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;III)Lcom/sleepycat/je/rep/stream/Protocol;
    .locals 7
    .param p0, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "clock"    # Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;
    .param p3, "protocolVersion"    # I
    .param p4, "maxProtocolVersion"    # I
    .param p5, "groupFormatVersion"    # I

    .line 237
    const/16 v5, 0x11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/je/rep/stream/Protocol;->get(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;IIII)Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v0

    return-object v0
.end method

.method public static get(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;IIII)Lcom/sleepycat/je/rep/stream/Protocol;
    .locals 9
    .param p0, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "clock"    # Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;
    .param p3, "protocolVersion"    # I
    .param p4, "maxProtocolVersion"    # I
    .param p5, "streamLogVersion"    # I
    .param p6, "groupFormatVersion"    # I

    .line 275
    const/4 v0, 0x3

    .line 276
    .local v0, "minProtocolVersion":I
    const/4 v1, 0x3

    if-lt p6, v1, :cond_0

    .line 277
    const/4 v0, 0x5

    .line 280
    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, v0

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v1 .. v8}, Lcom/sleepycat/je/rep/stream/Protocol;->get(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;IIIII)Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v1

    return-object v1
.end method

.method private static get(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;IIIII)Lcom/sleepycat/je/rep/stream/Protocol;
    .locals 9
    .param p0, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "clock"    # Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;
    .param p3, "protocolVersion"    # I
    .param p4, "minProtocolVersion"    # I
    .param p5, "maxProtocolVersion"    # I
    .param p6, "streamLogVersion"    # I
    .param p7, "groupFormatVersion"    # I

    .line 319
    invoke-static {p3, p4, p5}, Lcom/sleepycat/je/rep/stream/Protocol;->isSupportedVersion(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    return-object v0

    .line 328
    :cond_0
    new-instance v0, Lcom/sleepycat/je/rep/stream/Protocol;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/je/rep/stream/Protocol;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;IIII)V

    return-object v0
.end method

.method public static get(Lcom/sleepycat/je/rep/impl/node/RepNode;II)Lcom/sleepycat/je/rep/stream/Protocol;
    .locals 6
    .param p0, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .param p1, "protocolVersion"    # I
    .param p2, "maxProtocolVersion"    # I

    .line 223
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    .line 225
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getClock()Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    move-result-object v2

    .line 228
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v5

    .line 223
    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/rep/stream/Protocol;->get(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;III)Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v0

    return-object v0
.end method

.method public static get(Lcom/sleepycat/je/rep/impl/node/RepNode;III)Lcom/sleepycat/je/rep/stream/Protocol;
    .locals 7
    .param p0, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .param p1, "protocolVersion"    # I
    .param p2, "maxProtocolVersion"    # I
    .param p3, "streamLogVersion"    # I

    .line 252
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    .line 253
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    .line 254
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getClock()Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    move-result-object v2

    .line 258
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v6

    .line 252
    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/je/rep/stream/Protocol;->get(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;IIII)Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v0

    return-object v0
.end method

.method static get(Lcom/sleepycat/je/rep/impl/node/RepNode;IIII)Lcom/sleepycat/je/rep/stream/Protocol;
    .locals 9
    .param p0, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .param p1, "protocolVersion"    # I
    .param p2, "minProtocolVersion"    # I
    .param p3, "maxProtocolVersion"    # I
    .param p4, "streamLogVersion"    # I

    .line 295
    const/4 v0, 0x3

    .line 296
    .local v0, "formatVersion":I
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v0

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    .line 301
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    .line 302
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getClock()Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    move-result-object v3

    .line 300
    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, v0

    invoke-static/range {v1 .. v8}, Lcom/sleepycat/je/rep/stream/Protocol;->get(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;IIIII)Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v1

    return-object v1
.end method

.method static getJEVersionProtocolVersion(Lcom/sleepycat/je/JEVersion;)I
    .locals 3
    .param p0, "jeVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 420
    const/16 v0, 0x9

    if-nez p0, :cond_0

    .line 421
    return v0

    .line 422
    :cond_0
    sget-object v1, Lcom/sleepycat/je/rep/stream/Protocol;->VERSION_9_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 423
    return v0

    .line 424
    :cond_1
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->VERSION_8_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 425
    const/16 v0, 0x8

    return v0

    .line 426
    :cond_2
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->VERSION_7_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 427
    const/4 v0, 0x7

    return v0

    .line 428
    :cond_3
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->VERSION_6_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 429
    const/4 v0, 0x6

    return v0

    .line 430
    :cond_4
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->VERSION_5_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 431
    const/4 v0, 0x5

    return v0

    .line 432
    :cond_5
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->VERSION_4_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result v0

    if-ltz v0, :cond_6

    .line 433
    const/4 v0, 0x4

    return v0

    .line 434
    :cond_6
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->VERSION_3_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result v0

    if-ltz v0, :cond_7

    .line 435
    const/4 v0, 0x3

    return v0

    .line 437
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JE version not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getProtocol(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;II)Lcom/sleepycat/je/rep/stream/Protocol;
    .locals 9
    .param p0, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "clock"    # Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;
    .param p3, "protocolVersion"    # I
    .param p4, "groupFormatVersion"    # I

    .line 357
    new-instance v8, Lcom/sleepycat/je/rep/stream/Protocol;

    const/16 v6, 0x11

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/rep/stream/Protocol;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;IIII)V

    return-object v8
.end method

.method static getProtocol(Lcom/sleepycat/je/rep/impl/node/RepNode;I)Lcom/sleepycat/je/rep/stream/Protocol;
    .locals 4
    .param p0, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .param p1, "protocolVersion"    # I

    .line 338
    const/4 v0, 0x3

    .line 339
    .local v0, "formatVersion":I
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v0

    .line 343
    :cond_0
    nop

    .line 344
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    .line 345
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    .line 346
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getClock()Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    move-result-object v3

    .line 344
    invoke-static {v1, v2, v3, p1, v0}, Lcom/sleepycat/je/rep/stream/Protocol;->getProtocol(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;II)Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v1

    .line 343
    return-object v1
.end method

.method static getProtocolJEVersion(I)Lcom/sleepycat/je/JEVersion;
    .locals 1
    .param p0, "protocolVersion"    # I

    .line 395
    packed-switch p0, :pswitch_data_0

    .line 411
    const/4 v0, 0x0

    return-object v0

    .line 397
    :pswitch_0
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->VERSION_9_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    return-object v0

    .line 399
    :pswitch_1
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->VERSION_8_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    return-object v0

    .line 401
    :pswitch_2
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->VERSION_7_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    return-object v0

    .line 403
    :pswitch_3
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->VERSION_6_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    return-object v0

    .line 405
    :pswitch_4
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->VERSION_5_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    return-object v0

    .line 407
    :pswitch_5
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->VERSION_4_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    return-object v0

    .line 409
    :pswitch_6
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->VERSION_3_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isSupportedVersion(III)Z
    .locals 2
    .param p0, "protocolVersion"    # I
    .param p1, "minProtocolVersion"    # I
    .param p2, "maxProtocolVersion"    # I

    .line 375
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-ne p0, v1, :cond_0

    .line 377
    return v0

    .line 384
    :cond_0
    if-gt p1, p0, :cond_1

    if-gt p0, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
