.class public Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;
.super Ljava/lang/Object;
.source "SubscriptionConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/subscription/SubscriptionConfig$DefaultFeederFilter;,
        Lcom/sleepycat/je/rep/subscription/SubscriptionConfig$DefaultCallback;
    }
.end annotation


# static fields
.field public static final ANY_ADDRESS:Ljava/net/InetSocketAddress;

.field private static final DEFAULT_MIN_PROTOCOL_VERSION:I = 0x6

.field public static final QUEUE_POLL_INTERVAL_MS:J = 0x3e8L

.field public static final SERVICE_HANDSHAKE_AUTH_METHOD:Ljava/lang/String; = "SubscriptionTokenAuth"


# instance fields
.field public final BLOCKING_MODE_CHANNEL:Z

.field public final TCP_NO_DELAY:Z

.field private final authInfo:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

.field private final authenticator:Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;

.field private callBack:Lcom/sleepycat/je/rep/subscription/SubscriptionCallback;

.field private feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

.field private final feederHostPortPair:Ljava/lang/String;

.field private final groupName:Ljava/lang/String;

.field private groupUUID:Ljava/util/UUID;

.field private inputMessageQueueSize:I

.field private minProtocolVersion:I

.field private nodeType:Lcom/sleepycat/je/rep/NodeType;

.field private outputMessageQueueSize:I

.field private partGenDBName:Ljava/lang/String;

.field private props:Ljava/util/Properties;

.field private streamMode:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

.field private final subHome:Ljava/lang/String;

.field private final subHostPortPair:Ljava/lang/String;

.field private final subNodeName:Ljava/lang/String;

.field private final validateParams:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/net/InetAddress;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    sput-object v0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->ANY_ADDRESS:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "subNodeName"    # Ljava/lang/String;
    .param p2, "subHome"    # Ljava/lang/String;
    .param p3, "subHostPortPair"    # Ljava/lang/String;
    .param p4, "feederHostPortPair"    # Ljava/lang/String;
    .param p5, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 184
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V
    .locals 8
    .param p1, "subNodeName"    # Ljava/lang/String;
    .param p2, "subHome"    # Ljava/lang/String;
    .param p3, "subHostPortPair"    # Ljava/lang/String;
    .param p4, "feederHostPortPair"    # Ljava/lang/String;
    .param p5, "groupName"    # Ljava/lang/String;
    .param p6, "groupUUID"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 204
    sget-object v7, Lcom/sleepycat/je/rep/NodeType;->SECONDARY:Lcom/sleepycat/je/rep/NodeType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lcom/sleepycat/je/rep/NodeType;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lcom/sleepycat/je/rep/NodeType;)V
    .locals 9
    .param p1, "subNodeName"    # Ljava/lang/String;
    .param p2, "subHome"    # Ljava/lang/String;
    .param p3, "subHostPortPair"    # Ljava/lang/String;
    .param p4, "feederHostPortPair"    # Ljava/lang/String;
    .param p5, "groupName"    # Ljava/lang/String;
    .param p6, "groupUUID"    # Ljava/util/UUID;
    .param p7, "nodeType"    # Lcom/sleepycat/je/rep/NodeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 227
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lcom/sleepycat/je/rep/NodeType;Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;)V

    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lcom/sleepycat/je/rep/NodeType;Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;)V
    .locals 10
    .param p1, "subNodeName"    # Ljava/lang/String;
    .param p2, "subHome"    # Ljava/lang/String;
    .param p3, "subHostPortPair"    # Ljava/lang/String;
    .param p4, "feederHostPortPair"    # Ljava/lang/String;
    .param p5, "groupName"    # Ljava/lang/String;
    .param p6, "groupUUID"    # Ljava/util/UUID;
    .param p7, "nodeType"    # Lcom/sleepycat/je/rep/NodeType;
    .param p8, "authenticator"    # Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 253
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lcom/sleepycat/je/rep/NodeType;Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;Ljava/util/Properties;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lcom/sleepycat/je/rep/NodeType;Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;Ljava/util/Properties;)V
    .locals 1
    .param p1, "subNodeName"    # Ljava/lang/String;
    .param p2, "subHome"    # Ljava/lang/String;
    .param p3, "subHostPortPair"    # Ljava/lang/String;
    .param p4, "feederHostPortPair"    # Ljava/lang/String;
    .param p5, "groupName"    # Ljava/lang/String;
    .param p6, "groupUUID"    # Ljava/util/UUID;
    .param p7, "nodeType"    # Lcom/sleepycat/je/rep/NodeType;
    .param p8, "authenticator"    # Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;
    .param p9, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->TCP_NO_DELAY:Z

    .line 83
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->BLOCKING_MODE_CHANNEL:Z

    .line 85
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->validateParams:Z

    .line 150
    sget-object v0, Lcom/sleepycat/je/rep/NodeType;->SECONDARY:Lcom/sleepycat/je/rep/NodeType;

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    .line 156
    const/4 v0, 0x6

    iput v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->minProtocolVersion:I

    .line 282
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->subNodeName:Ljava/lang/String;

    .line 283
    iput-object p2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->subHome:Ljava/lang/String;

    .line 284
    iput-object p3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->subHostPortPair:Ljava/lang/String;

    .line 287
    iput-object p4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->feederHostPortPair:Ljava/lang/String;

    .line 290
    iput-object p5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->groupName:Ljava/lang/String;

    .line 291
    iput-object p6, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->groupUUID:Ljava/util/UUID;

    .line 292
    iput-object p7, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    .line 293
    iput-object p8, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->authenticator:Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;

    .line 294
    iput-object p9, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    .line 296
    sget-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->DEFAULT:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->streamMode:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    .line 299
    invoke-direct {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getDefaultMsgQueueSize()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->inputMessageQueueSize:I

    .line 300
    invoke-direct {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getDefaultMsgQueueSize()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->outputMessageQueueSize:I

    .line 303
    new-instance v0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig$DefaultCallback;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig$DefaultCallback;-><init>(Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->callBack:Lcom/sleepycat/je/rep/subscription/SubscriptionCallback;

    .line 304
    new-instance v0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig$DefaultFeederFilter;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig$DefaultFeederFilter;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 306
    invoke-direct {p0, p8}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->createClientAuthMethod(Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;)Lcom/sleepycat/je/rep/subscription/ClientAuthMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->authInfo:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->partGenDBName:Ljava/lang/String;

    .line 308
    invoke-direct {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->verifyParameters()V

    .line 309
    return-void
.end method

.method private createClientAuthMethod(Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;)Lcom/sleepycat/je/rep/subscription/ClientAuthMethod;
    .locals 1
    .param p1, "authHandler"    # Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;

    .line 668
    if-nez p1, :cond_0

    .line 669
    const/4 v0, 0x0

    return-object v0

    .line 672
    :cond_0
    new-instance v0, Lcom/sleepycat/je/rep/subscription/ClientAuthMethod;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/rep/subscription/ClientAuthMethod;-><init>(Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;)V

    return-object v0
.end method

.method private getDefaultMsgQueueSize()I
    .locals 3

    .line 764
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_MESSAGE_QUEUE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 765
    .local v0, "param":Lcom/sleepycat/je/config/IntConfigParam;
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    invoke-virtual {v0}, Lcom/sleepycat/je/config/IntConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    invoke-static {v1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    return v1

    .line 768
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/config/IntConfigParam;->getDefault()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private setProps(Ljava/util/Properties;)V
    .locals 0
    .param p1, "p"    # Ljava/util/Properties;

    .line 634
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    .line 635
    return-void
.end method

.method private verifyParameters()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 700
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubscriberHome()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "subscription home directory"

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->feederHostPortPair:Ljava/lang/String;

    const-string v1, "feeder host port pair"

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "feeder host name"

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "feeder host port"

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->subHostPortPair:Ljava/lang/String;

    const-string/jumbo v1, "subscriber host port pair"

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubNodeName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "subscriber node name"

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubNodeHostPort()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "subscriber node host port"

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "replication group"

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->isExternal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->isSecondary()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 723
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'node type\' param must be either SECONDARY or EXTERNAL, found node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;
    .locals 2

    .line 608
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 609
    .local v0, "ret":Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->setProps(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    return-object v0

    .line 611
    .end local v0    # "ret":Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;
    :catch_0
    move-exception v0

    .line 612
    .local v0, "willNeverOccur":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->clone()Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    move-result-object v0

    return-object v0
.end method

.method public createEnvConfig()Lcom/sleepycat/je/EnvironmentConfig;
    .locals 3

    .line 318
    new-instance v0, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 319
    .local v0, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setReadOnly(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 320
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setTransactional(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 321
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RECOVERY:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 322
    invoke-virtual {v1}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v1

    .line 321
    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 323
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_SETUP_LOGGER:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 324
    invoke-virtual {v1}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v1

    .line 323
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 326
    return-object v0
.end method

.method createReplicationConfig()Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 7

    .line 336
    new-instance v0, Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 337
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getGroupName()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubNodeName()Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getSubNodeHostPort()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/ReplicationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .local v0, "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SUBSCRIBER_USE:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v1}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/ReplicationConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 344
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Properties;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    invoke-static {v1}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->create(Ljava/util/Properties;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v1

    .local v1, "rwc":Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    goto :goto_1

    .line 346
    .end local v1    # "rwc":Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v1

    .line 351
    .restart local v1    # "rwc":Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    :goto_1
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setRepNetConfig(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 353
    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_MESSAGE_QUEUE_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v2}, Lcom/sleepycat/je/config/IntConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-direct {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getDefaultMsgQueueSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/rep/ReplicationConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 356
    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 357
    invoke-virtual {v2}, Lcom/sleepycat/je/config/DurationConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 358
    invoke-virtual {p0, v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getChannelTimeout(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/rep/ReplicationConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 361
    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->PRE_HEARTBEAT_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 362
    invoke-virtual {v2}, Lcom/sleepycat/je/config/DurationConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 363
    invoke-virtual {p0, v5}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getPreHeartbeatTimeout(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/rep/ReplicationConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 366
    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->REPSTREAM_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 367
    invoke-virtual {v2}, Lcom/sleepycat/je/config/DurationConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 368
    invoke-virtual {p0, v5}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getStreamOpenTimeout(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 366
    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/rep/ReplicationConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 371
    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->HEARTBEAT_INTERVAL:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v2}, Lcom/sleepycat/je/config/IntConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getHeartbeatIntervalMs()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 371
    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/rep/ReplicationConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 374
    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_RECEIVE_BUFFER_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 375
    invoke-virtual {v2}, Lcom/sleepycat/je/config/IntConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getReceiveBufferSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/rep/ReplicationConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 379
    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/rep/ReplicationConfig;->setNodeType(Lcom/sleepycat/je/rep/NodeType;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 381
    return-object v0
.end method

.method getAuthInfo()[Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
    .locals 3

    .line 677
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->authInfo:Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    if-nez v0, :cond_0

    .line 678
    const/4 v0, 0x0

    return-object v0

    .line 680
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public getAuthenticator()Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->authenticator:Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;

    return-object v0
.end method

.method public getCallBack()Lcom/sleepycat/je/rep/subscription/SubscriptionCallback;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->callBack:Lcom/sleepycat/je/rep/subscription/SubscriptionCallback;

    return-object v0
.end method

.method public getChannelTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 5
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 448
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 449
    .local v0, "param":Lcom/sleepycat/je/config/DurationConfigParam;
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    invoke-virtual {v0}, Lcom/sleepycat/je/config/DurationConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-static {v1, v2, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    return-wide v1

    .line 454
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/config/DurationConfigParam;->getDefault()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/utilint/PropUtil;->parseDuration(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    .line 455
    .local v1, "ms":J
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    return-wide v3
.end method

.method public getFeederFilter()Lcom/sleepycat/je/rep/stream/FeederFilter;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    return-object v0
.end method

.method public getFeederHost()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->feederHostPortPair:Ljava/lang/String;

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/HostPortPair;->getHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeederHostAddr()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->feederHostPortPair:Ljava/lang/String;

    .line 414
    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/HostPortPair;->getHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getFeederPort()I
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->feederHostPortPair:Ljava/lang/String;

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/HostPortPair;->getPort(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupUUID()Ljava/util/UUID;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->groupUUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getHeartbeatIntervalMs()I
    .locals 3

    .line 494
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->HEARTBEAT_INTERVAL:Lcom/sleepycat/je/config/IntConfigParam;

    .line 495
    .local v0, "param":Lcom/sleepycat/je/config/IntConfigParam;
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    invoke-virtual {v0}, Lcom/sleepycat/je/config/IntConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    invoke-static {v1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    return v1

    .line 498
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/config/IntConfigParam;->getDefault()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 521
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHostAddr()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public getInputMessageQueueSize()I
    .locals 1

    .line 512
    iget v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->inputMessageQueueSize:I

    return v0
.end method

.method public getMaxConnectRetries()I
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SUBSCRIPTION_MAX_CONNECT_RETRIES:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    return v0
.end method

.method public getMinProtocolVersion()I
    .locals 1

    .line 603
    iget v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->minProtocolVersion:I

    return v0
.end method

.method public getNodeType()Lcom/sleepycat/je/rep/NodeType;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    return-object v0
.end method

.method public getOutputMessageQueueSize()I
    .locals 1

    .line 516
    iget v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->outputMessageQueueSize:I

    return v0
.end method

.method public getPartGenDBName()Ljava/lang/String;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->partGenDBName:Ljava/lang/String;

    return-object v0
.end method

.method public getPollIntervalMs()J
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SUBSCRIPTION_POLL_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPollTimeoutMs()J
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SUBSCRIPTION_POLL_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreHeartbeatTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 5
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 474
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->PRE_HEARTBEAT_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 475
    .local v0, "param":Lcom/sleepycat/je/config/DurationConfigParam;
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    invoke-virtual {v0}, Lcom/sleepycat/je/config/DurationConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    invoke-static {v1, v0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    return-wide v1

    .line 478
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/config/DurationConfigParam;->getDefault()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/utilint/PropUtil;->parseDuration(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    .line 479
    .local v1, "ms":J
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    return-wide v3
.end method

.method public getReceiveBufferSize()I
    .locals 3

    .line 503
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_RECEIVE_BUFFER_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 504
    .local v0, "param":Lcom/sleepycat/je/config/IntConfigParam;
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    invoke-virtual {v0}, Lcom/sleepycat/je/config/IntConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    invoke-static {v1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    return v1

    .line 507
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/config/IntConfigParam;->getDefault()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getSleepBeforeRetryMs()J
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->SUBSCRIPTION_SLEEP_BEFORE_RETRY:Lcom/sleepycat/je/config/DurationConfigParam;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 441
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 440
    return-wide v0
.end method

.method public getStreamMode()Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->streamMode:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    return-object v0
.end method

.method public getStreamOpenTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 5
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 484
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPSTREAM_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 485
    .local v0, "param":Lcom/sleepycat/je/config/DurationConfigParam;
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    invoke-virtual {v0}, Lcom/sleepycat/je/config/DurationConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    invoke-static {v1, v0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    return-wide v1

    .line 488
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/config/DurationConfigParam;->getDefault()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/utilint/PropUtil;->parseDuration(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    .line 489
    .local v1, "ms":J
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    return-wide v3
.end method

.method public getSubNodeHostPort()Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->subHostPortPair:Ljava/lang/String;

    return-object v0
.end method

.method public getSubNodeName()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->subNodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberHome()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->subHome:Ljava/lang/String;

    return-object v0
.end method

.method public setCallback(Lcom/sleepycat/je/rep/subscription/SubscriptionCallback;)V
    .locals 2
    .param p1, "cbk"    # Lcom/sleepycat/je/rep/subscription/SubscriptionCallback;

    .line 554
    if-eqz p1, :cond_0

    .line 558
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->callBack:Lcom/sleepycat/je/rep/subscription/SubscriptionCallback;

    .line 559
    return-void

    .line 555
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subscription callback cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChannelTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    const/4 v5, 0x1

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->setDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;JLjava/util/concurrent/TimeUnit;Z)V

    .line 565
    return-void
.end method

.method public setFeederFilter(Lcom/sleepycat/je/rep/stream/FeederFilter;)V
    .locals 2
    .param p1, "filter"    # Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 623
    if-eqz p1, :cond_0

    .line 626
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 627
    return-void

    .line 624
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Feeder filter cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGroupUUID(Ljava/util/UUID;)V
    .locals 0
    .param p1, "gID"    # Ljava/util/UUID;

    .line 550
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->groupUUID:Ljava/util/UUID;

    .line 551
    return-void
.end method

.method public setHeartbeatInterval(I)V
    .locals 3
    .param p1, "ms"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->HEARTBEAT_INTERVAL:Lcom/sleepycat/je/config/IntConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;IZ)V

    .line 577
    return-void
.end method

.method public setInputMessageQueueSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 591
    iput p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->inputMessageQueueSize:I

    .line 592
    return-void
.end method

.method public setMinProtocolVersion(I)V
    .locals 2
    .param p1, "ver"    # I

    .line 540
    const/4 v0, 0x6

    if-lt p1, v0, :cond_0

    .line 546
    iput p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->minProtocolVersion:I

    .line 547
    return-void

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimal HA protocol version cannot be lower than 6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutputMessageQueueSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 595
    iput p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->outputMessageQueueSize:I

    .line 596
    return-void
.end method

.method public setPartGenDBName(Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;

    .line 536
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->partGenDBName:Ljava/lang/String;

    .line 537
    return-void
.end method

.method public setPreHeartbeatTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->PRE_HEARTBEAT_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    const/4 v5, 0x1

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->setDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;JLjava/util/concurrent/TimeUnit;Z)V

    .line 571
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 3
    .param p1, "val"    # I

    .line 586
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPLICA_RECEIVE_BUFFER_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->setIntVal(Ljava/util/Properties;Lcom/sleepycat/je/config/IntConfigParam;IZ)V

    .line 588
    return-void
.end method

.method public setStreamMode(Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;)V
    .locals 0
    .param p1, "type"    # Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    .line 630
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->streamMode:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    .line 631
    return-void
.end method

.method public setStreamOpenTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->REPSTREAM_OPEN_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    const/4 v5, 0x1

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/dbi/DbConfigManager;->setDurationVal(Ljava/util/Properties;Lcom/sleepycat/je/config/DurationConfigParam;JLjava/util/concurrent/TimeUnit;Z)V

    .line 583
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 641
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "subscription configuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const-string/jumbo v1, "subscription name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->subNodeName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string v1, "home directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->subHome:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const-string v1, "home host and port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->subHostPortPair:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    const-string v1, "feeder host and port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->feederHostPortPair:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 647
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    :try_start_0
    const-string v1, "feeder address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 651
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHostAddr()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    goto :goto_0

    .line 652
    :catch_0
    move-exception v1

    .line 653
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v3, "feeder address: unknown host "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->feederHostPortPair:Ljava/lang/String;

    .line 654
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_0
    const-string v1, "feeder filter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const-string/jumbo v1, "rep group: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    const-string/jumbo v1, "rep group id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->groupUUID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const-string/jumbo v1, "stream mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->streamMode:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
