.class public Lcom/sleepycat/je/rep/InsufficientLogException;
.super Lcom/sleepycat/je/rep/RestartRequiredException;
.source "InsufficientLogException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;
    }
.end annotation


# static fields
.field private static final ENV_DIR:Ljava/lang/String; = "ENV_DIR"

.field private static final GROUP_NAME:Ljava/lang/String; = "GROUP_NAME"

.field private static final HOSTNAME:Ljava/lang/String; = "HOSTNAME"

.field private static final NODE_NAME:Ljava/lang/String; = "NODE_NAME"

.field private static final PORT:Ljava/lang/String; = "PORT"

.field private static final P_HOSTNAME:Ljava/lang/String; = "P_HOSTNAME"

.field private static final P_NODENAME:Ljava/lang/String; = "P_NODENAME"

.field private static final P_NODETYPE:Ljava/lang/String; = "P_NODETYPE"

.field private static final P_NUMPROVIDERS:Ljava/lang/String; = "P_NUMPROVIDERS"

.field private static final P_PORT:Ljava/lang/String; = "P_PORT"

.field private static final REFRESH_VLSN:Ljava/lang/String; = "REFRESH_VLSN"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final logProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/ReplicationNode;",
            ">;"
        }
    .end annotation
.end field

.field private openedByILE:Z

.field private final transient props:Ljava/util/Properties;

.field private final refreshVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private transient repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field private final transient repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 1
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p2, "refreshVLSN"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 188
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->INSUFFICIENT_LOG:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/RestartRequiredException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;)V

    .line 189
    iput-object p1, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 190
    iput-object p2, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->refreshVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 195
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->logProviders:Ljava/util/Set;

    .line 196
    const-string v0, "NO_GROUP"

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/InsufficientLogException;->initProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    .line 197
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 198
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Ljava/util/Set;)V
    .locals 2
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/impl/node/RepNode;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/ReplicationNode;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p2, "logProviders":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/ReplicationNode;>;"
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->INSUFFICIENT_LOG:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/rep/RestartRequiredException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;)V

    .line 142
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 143
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->refreshVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 144
    iput-object p2, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->logProviders:Ljava/util/Set;

    .line 145
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/InsufficientLogException;->initProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    .line 146
    iget-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 125
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_STATE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/sleepycat/je/rep/RestartRequiredException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    .line 126
    iput-object v1, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 127
    iput-object v1, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->refreshVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 128
    iput-object v1, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->logProviders:Ljava/util/Set;

    .line 129
    iput-object v1, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    .line 130
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 131
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/InsufficientLogException;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/rep/InsufficientLogException;

    .line 325
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/RestartRequiredException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/RestartRequiredException;)V

    .line 326
    iget-object v0, p2, Lcom/sleepycat/je/rep/InsufficientLogException;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iput-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 327
    iget-boolean v0, p2, Lcom/sleepycat/je/rep/InsufficientLogException;->openedByILE:Z

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->openedByILE:Z

    .line 328
    iget-object v0, p2, Lcom/sleepycat/je/rep/InsufficientLogException;->refreshVLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->refreshVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 329
    iget-object v0, p2, Lcom/sleepycat/je/rep/InsufficientLogException;->logProviders:Ljava/util/Set;

    iput-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->logProviders:Ljava/util/Set;

    .line 330
    iget-object v0, p2, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    iput-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    .line 331
    iget-object v0, p2, Lcom/sleepycat/je/rep/InsufficientLogException;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    iput-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 332
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;Ljava/lang/String;Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)V
    .locals 16
    .param p1, "restoreProperties"    # Ljava/util/Properties;
    .param p2, "helperHosts"    # Ljava/lang/String;
    .param p3, "repNetConfig"    # Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 233
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->INSUFFICIENT_LOG:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const/4 v1, 0x0

    invoke-direct {v6, v1, v0}, Lcom/sleepycat/je/rep/RestartRequiredException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;)V

    .line 240
    const-string v0, "REFRESH_VLSN"

    invoke-virtual {v7, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 241
    .local v9, "vlsnVal":Ljava/lang/String;
    new-instance v0, Lcom/sleepycat/je/utilint/VLSN;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    iput-object v0, v6, Lcom/sleepycat/je/rep/InsufficientLogException;->refreshVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 242
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v6, Lcom/sleepycat/je/rep/InsufficientLogException;->logProviders:Ljava/util/Set;

    .line 244
    if-eqz v8, :cond_1

    .line 245
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v11, :cond_1

    aget-object v13, v10, v12

    .line 246
    .local v13, "hostPortPair":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 247
    .local v14, "hpp":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 248
    new-instance v15, Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;

    sget-object v0, Lcom/sleepycat/je/rep/NodeType;->ELECTABLE:Lcom/sleepycat/je/rep/NodeType;

    .line 250
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->name()Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-static {v14}, Lcom/sleepycat/je/rep/utilint/HostPortPair;->getHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 252
    invoke-static {v14}, Lcom/sleepycat/je/rep/utilint/HostPortPair;->getPort(Ljava/lang/String;)I

    move-result v5

    const-string v2, "NoName"

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;-><init>(Lcom/sleepycat/je/rep/InsufficientLogException;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    .local v0, "source":Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;
    iget-object v1, v6, Lcom/sleepycat/je/rep/InsufficientLogException;->logProviders:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v0    # "source":Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;
    .end local v13    # "hostPortPair":Ljava/lang/String;
    .end local v14    # "hpp":Ljava/lang/String;
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 257
    :cond_1
    iput-object v7, v6, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    .line 258
    move-object/from16 v0, p3

    iput-object v0, v6, Lcom/sleepycat/je/rep/InsufficientLogException;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 259
    return-void
.end method

.method private initProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 156
    .local v0, "p":Ljava/util/Properties;
    const-string v1, "GROUP_NAME"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NODE_NAME"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHostName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HOSTNAME"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PORT"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getEnvironmentHome()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ENV_DIR"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->refreshVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "REFRESH_VLSN"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    iget-object v1, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->logProviders:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "P_NUMPROVIDERS"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "i":I
    iget-object v2, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->logProviders:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/ReplicationNode;

    .line 171
    .local v3, "rn":Lcom/sleepycat/je/rep/ReplicationNode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "P_NODENAME"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/sleepycat/je/rep/ReplicationNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "P_HOSTNAME"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/sleepycat/je/rep/ReplicationNode;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "P_PORT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/sleepycat/je/rep/ReplicationNode;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "P_NODETYPE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/sleepycat/je/rep/ReplicationNode;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/NodeType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    nop

    .end local v3    # "rn":Lcom/sleepycat/je/rep/ReplicationNode;
    add-int/lit8 v1, v1, 0x1

    .line 176
    goto :goto_0

    .line 177
    :cond_0
    return-object v0
.end method

.method private initRepImpl()V
    .locals 14

    .line 267
    iget-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    .line 268
    const-string v1, "P_NUMPROVIDERS"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 269
    .local v0, "numLogProviders":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 270
    iget-object v2, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "P_NODENAME"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "P_NODETYPE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "nodeType":Ljava/lang/String;
    iget-object v4, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "P_HOSTNAME"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 273
    .local v10, "hostname":Ljava/lang/String;
    iget-object v4, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "P_PORT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 274
    .local v11, "port":I
    iget-object v12, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->logProviders:Ljava/util/Set;

    new-instance v13, Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;

    move-object v4, v13

    move-object v5, p0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v10

    move v9, v11

    invoke-direct/range {v4 .. v9}, Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;-><init>(Lcom/sleepycat/je/rep/InsufficientLogException;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nodeType":Ljava/lang/String;
    .end local v10    # "hostname":Ljava/lang/String;
    .end local v11    # "port":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 282
    .local v1, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setReadOnly(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 283
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RECOVERY:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v3}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v1, v3, v4}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 285
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setTransactional(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 287
    iget-object v3, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    const-string v4, "HOSTNAME"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "hostname":Ljava/lang/String;
    iget-object v4, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    const-string v5, "PORT"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 289
    .local v4, "portVal":I
    new-instance v5, Lcom/sleepycat/je/rep/ReplicationConfig;

    iget-object v6, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    .line 290
    const-string v7, "GROUP_NAME"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    .line 291
    const-string v8, "NODE_NAME"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 292
    invoke-static {v3, v4}, Lcom/sleepycat/je/rep/utilint/HostPortPair;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/sleepycat/je/rep/ReplicationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .local v5, "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    sget-object v6, Lcom/sleepycat/je/rep/impl/RepParams;->NETWORKBACKUP_USE:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v6}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v5, v6, v7}, Lcom/sleepycat/je/rep/ReplicationConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 295
    iget-object v6, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/ReplicationConfig;->setRepNetConfig(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 297
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    const-string v8, "ENV_DIR"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v6, "envDir":Ljava/io/File;
    nop

    .line 299
    invoke-static {v6, v5, v1}, Lcom/sleepycat/je/rep/RepInternal;->createInternalEnvHandle(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    move-result-object v7

    .line 302
    .local v7, "restoreEnv":Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    invoke-static {v7}, Lcom/sleepycat/je/rep/RepInternal;->getRepImpl(Lcom/sleepycat/je/rep/ReplicatedEnvironment;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v8

    iput-object v8, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 304
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->getChannelType()Ljava/lang/String;

    move-result-object v8

    .line 305
    .local v8, "nrChannelType":Ljava/lang/String;
    iget-object v9, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repNetConfig:Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    invoke-virtual {v9}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->getChannelType()Ljava/lang/String;

    move-result-object v9

    .line 306
    .local v9, "preNRChannelType":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 316
    iput-boolean v2, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->openedByILE:Z

    .line 317
    return-void

    .line 311
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Network Restore channel state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pre network restore state:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getLogProviders()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/ReplicationNode;",
            ">;"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->logProviders:Ljava/util/Set;

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    return-object v0
.end method

.method public getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    if-nez v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/sleepycat/je/rep/InsufficientLogException;->initRepImpl()V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    return-object v0
.end method

.method releaseRepImpl()V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    if-nez v0, :cond_0

    .line 444
    return-void

    .line 448
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->openedByILE:Z

    if-eqz v2, :cond_1

    .line 449
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :cond_1
    iput-object v1, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 453
    nop

    .line 454
    return-void

    .line 452
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/sleepycat/je/rep/RestartRequiredException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string/jumbo v1, "refreshVLSN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->refreshVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    const-string v1, " logProviders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->logProviders:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 373
    const-string v1, " repImpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    const-string v1, " props="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/InsufficientLogException;->props:Ljava/util/Properties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 340
    new-instance v0, Lcom/sleepycat/je/rep/InsufficientLogException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/rep/InsufficientLogException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/InsufficientLogException;)V

    return-object v0
.end method
