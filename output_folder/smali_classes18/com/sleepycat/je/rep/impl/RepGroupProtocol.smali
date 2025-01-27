.class public Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
.super Lcom/sleepycat/je/rep/impl/TextProtocol;
.source "RepGroupProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;,
        Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;,
        Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;,
        Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;,
        Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;,
        Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;,
        Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupRequest;,
        Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;,
        Lcom/sleepycat/je/rep/impl/RepGroupProtocol$DeleteMember;,
        Lcom/sleepycat/je/rep/impl/RepGroupProtocol$RemoveMember;,
        Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;,
        Lcom/sleepycat/je/rep/impl/RepGroupProtocol$FailReason;
    }
.end annotation


# static fields
.field public static final REP_GROUP_V2_VERSION:Ljava/lang/String; = "3"

.field public static final REP_GROUP_V3_VERSION:Ljava/lang/String; = "4"

.field public static final VERSION:Ljava/lang/String; = "4"

.field private static volatile testCurrentVersion:Ljava/lang/String;


# instance fields
.field public final DELETE_MEMBER:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final ENSURE_NODE:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final ENSURE_OK:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final GROUP_REQ:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final GROUP_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final REMOVE_MEMBER:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final RGFAIL_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final TRANSFER_MASTER:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final TRANSFER_OK:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final UPDATE_ADDRESS:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->testCurrentVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p3, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p4, "channelFactory"    # Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 85
    invoke-static {}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    .line 87
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V
    .locals 13
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p4, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p5, "channelFactory"    # Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 98
    move-object v0, p0

    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/je/rep/impl/TextProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V

    .line 56
    new-instance v1, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v2, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;

    const-string v3, "ENREQ"

    invoke-direct {v1, v3, v2}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->ENSURE_NODE:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 58
    new-instance v2, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v3, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;

    const-string v4, "ENRESP"

    invoke-direct {v2, v4, v3}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v2, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->ENSURE_OK:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 60
    new-instance v3, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v4, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$RemoveMember;

    const-string v5, "RMREQ"

    invoke-direct {v3, v5, v4}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v3, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->REMOVE_MEMBER:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 62
    new-instance v4, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v5, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupRequest;

    const-string v6, "GREQ"

    invoke-direct {v4, v6, v5}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v4, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->GROUP_REQ:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 64
    new-instance v5, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v6, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupResponse;

    const-string v7, "GRESP"

    invoke-direct {v5, v7, v6}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v5, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->GROUP_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 66
    new-instance v6, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v7, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$Fail;

    const-string v8, "GRFAIL"

    invoke-direct {v6, v8, v7}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v6, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->RGFAIL_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 68
    new-instance v7, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v8, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;

    const-string v9, "UPDADDR"

    invoke-direct {v7, v9, v8}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v7, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->UPDATE_ADDRESS:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 70
    new-instance v8, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v9, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;

    const-string v10, "TMASTER"

    invoke-direct {v8, v10, v9}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v8, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->TRANSFER_MASTER:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 72
    new-instance v9, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v10, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferOK;

    const-string v11, "TMRESP"

    invoke-direct {v9, v11, v10}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v9, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->TRANSFER_OK:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 74
    new-instance v10, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v11, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$DeleteMember;

    const-string v12, "DLREQ"

    invoke-direct {v10, v12, v11}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v10, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->DELETE_MEMBER:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 100
    const/16 v11, 0xa

    new-array v11, v11, [Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v1, 0x1

    aput-object v2, v11, v1

    const/4 v1, 0x2

    aput-object v3, v11, v1

    const/4 v1, 0x3

    aput-object v4, v11, v1

    const/4 v1, 0x4

    aput-object v5, v11, v1

    const/4 v1, 0x5

    aput-object v6, v11, v1

    const/4 v1, 0x6

    aput-object v7, v11, v1

    const/4 v1, 0x7

    aput-object v8, v11, v1

    const/16 v1, 0x8

    aput-object v9, v11, v1

    const/16 v1, 0x9

    aput-object v10, v11, v1

    invoke-virtual {p0, v11}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->initializeMessageOps([Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;)V

    .line 113
    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REP_GROUP_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->REP_GROUP_READ_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    move-object/from16 v3, p4

    invoke-virtual {p0, v3, v1, v2}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->setTimeouts(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/config/DurationConfigParam;Lcom/sleepycat/je/config/DurationConfigParam;)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->getGroupFormatVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCurrentVersion()Ljava/lang/String;
    .locals 1

    .line 120
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->testCurrentVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->testCurrentVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "4"

    :goto_0
    return-object v0
.end method

.method private static getGroupFormatVersion(Ljava/lang/String;)I
    .locals 4
    .param p0, "protocolVersion"    # Ljava/lang/String;

    .line 136
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 137
    const-string v2, "3"

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 136
    :goto_0
    return v0
.end method

.method public static setTestVersion(Ljava/lang/String;)V
    .locals 0
    .param p0, "testVersion"    # Ljava/lang/String;

    .line 128
    sput-object p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->testCurrentVersion:Ljava/lang/String;

    .line 129
    return-void
.end method
