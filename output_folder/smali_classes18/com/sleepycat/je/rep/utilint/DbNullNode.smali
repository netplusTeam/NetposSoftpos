.class public Lcom/sleepycat/je/rep/utilint/DbNullNode;
.super Ljava/lang/Object;
.source "DbNullNode.java"


# static fields
.field private static final USAGE:Ljava/lang/String;

.field private static final dbConfig:Lcom/sleepycat/je/DatabaseConfig;

.field private static final txnConfig:Lcom/sleepycat/je/TransactionConfig;


# instance fields
.field private cacheMode:Lcom/sleepycat/je/CacheMode;

.field private createEnv:Z

.field private createNode:Z

.field private designatedPrimary:Z

.field private electableGroupSize:I

.field private envHome:Ljava/io/File;

.field private groupName:Ljava/lang/String;

.field public helpers:Ljava/lang/String;

.field private hostPort:Ljava/lang/String;

.field private nodeName:Ljava/lang/String;

.field private nodeType:Lcom/sleepycat/je/rep/NodeType;

.field private final pollIntervalMs:I

.field private updates:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/rep/utilint/DbNullNode;

    .line 85
    invoke-static {v1}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n       -h <env home dir>\n       -nodeName <nodeName>\n       [-groupName <groupName>]\n       [-hostPort <hostPort>]\n       [-createEnv]\n       [-createNode]\n       [-helpers <hostPort>,<hostPort> ...]\n       [-designatedPrimary] \n       [-electableGroupSize] <groupSize>\n       [-updates <updates>\n       [-nodeType ELECTABLE|SECONDARY]\n       [-cacheMode ENUM_NAME]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->USAGE:Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->dbConfig:Lcom/sleepycat/je/DatabaseConfig;

    .line 125
    sget-object v1, Lcom/sleepycat/je/TransactionConfig;->DEFAULT:Lcom/sleepycat/je/TransactionConfig;

    sput-object v1, Lcom/sleepycat/je/rep/utilint/DbNullNode;->txnConfig:Lcom/sleepycat/je/TransactionConfig;

    .line 128
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 129
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setTransactional(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 130
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setSortedDuplicates(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 131
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->createNode:Z

    .line 107
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->createEnv:Z

    .line 109
    const v1, 0xea60

    iput v1, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->pollIntervalMs:I

    .line 111
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->designatedPrimary:Z

    .line 113
    iput v0, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->electableGroupSize:I

    .line 119
    iput v0, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->updates:I

    .line 121
    sget-object v0, Lcom/sleepycat/je/rep/NodeType;->ELECTABLE:Lcom/sleepycat/je/rep/NodeType;

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    .line 122
    sget-object v0, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->cacheMode:Lcom/sleepycat/je/CacheMode;

    return-void
.end method

.method private checkParameters()V
    .locals 5

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->envHome:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Directory:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->envHome:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->envHome:Ljava/io/File;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->getGroup(Ljava/io/File;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    .line 272
    .local v0, "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    iget-boolean v1, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->createEnv:Z

    if-eqz v1, :cond_1

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Environment exists:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->envHome:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "but -createEnv was specified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getNode(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v1

    .line 277
    .local v1, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-nez v1, :cond_2

    .line 278
    iget-boolean v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->createNode:Z

    if-nez v2, :cond_6

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The node:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->nodeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a member of the group:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Use -createNode to create a new one."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 285
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->groupName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 286
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->groupName:Ljava/lang/String;

    goto :goto_0

    .line 287
    :cond_3
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-groupname:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", does not match the name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 289
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in the environment."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    .line 293
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->hostPort:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 294
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getHostPortPair()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->hostPort:Ljava/lang/String;

    goto :goto_1

    .line 295
    :cond_5
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getHostPortPair()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 296
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-hostPort:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->hostPort:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", does not match the hostPort:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 298
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getHostPortPair()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in the environment. Continuing ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sleepycat/je/EnvironmentNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v0    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_6
    :goto_1
    goto :goto_2

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "enf":Lcom/sleepycat/je/EnvironmentNotFoundException;
    iget-boolean v1, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->createEnv:Z

    if-nez v1, :cond_7

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No existing environment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->envHome:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Use -createEnv to create one"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    .line 309
    .end local v0    # "enf":Lcom/sleepycat/je/EnvironmentNotFoundException;
    :cond_7
    :goto_2
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "argv"    # [Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/sleepycat/je/rep/utilint/DbNullNode;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/utilint/DbNullNode;-><init>()V

    .line 136
    .local v0, "runAction":Lcom/sleepycat/je/rep/utilint/DbNullNode;
    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->parseArgs([Ljava/lang/String;)V

    .line 139
    :try_start_0
    invoke-direct {v0}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->run()V

    .line 140
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    goto :goto_0

    .line 141
    :catchall_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 143
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 145
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private openAndIdle()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/InsufficientLogException;
        }
    .end annotation

    .line 321
    new-instance v0, Lcom/sleepycat/je/rep/ReplicationConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/ReplicationConfig;-><init>()V

    .line 322
    .local v0, "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setNodeName(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 323
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setGroupName(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 324
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->hostPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setNodeHostPort(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 325
    iget-boolean v1, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->designatedPrimary:Z

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setDesignatedPrimary(Z)Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    .line 326
    iget v1, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->electableGroupSize:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setElectableGroupSizeOverride(I)Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    .line 327
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setNodeType(Lcom/sleepycat/je/rep/NodeType;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 329
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->helpers:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setHelperHosts(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    .line 333
    :cond_0
    new-instance v1, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 334
    .local v1, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setTransactional(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 335
    iget-boolean v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->createEnv:Z

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setAllowCreate(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 336
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->cacheMode:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setCacheMode(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 337
    new-instance v2, Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->envHome:Ljava/io/File;

    invoke-direct {v2, v3, v0, v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;-><init>(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;)V

    .line 339
    .local v2, "repEnv":Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    invoke-static {v2}, Lcom/sleepycat/je/rep/RepInternal;->getNonNullRepImpl(Lcom/sleepycat/je/rep/ReplicatedEnvironment;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    .line 341
    .local v3, "repNode":Lcom/sleepycat/je/rep/impl/node/RepNode;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handle created:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  Node idling indefinitely..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 345
    :goto_0
    :try_start_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " State:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 346
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  VLSN range:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 348
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DTVLSN:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 349
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getDTVLSN()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 350
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->dumpState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->writeUpdates(Lcom/sleepycat/je/rep/ReplicatedEnvironment;)V

    .line 352
    const-wide/32 v4, 0xea60

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v4

    .line 355
    .local v4, "e":Ljava/lang/InterruptedException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Exiting"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 357
    .end local v4    # "e":Ljava/lang/InterruptedException;
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 5
    .param p1, "argv"    # [Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "argc":I
    array-length v1, p1

    .line 152
    .local v1, "nArgs":I
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 153
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    .line 154
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 157
    :cond_0
    :goto_0
    if-ge v0, v1, :cond_16

    .line 158
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "argc":I
    .local v2, "argc":I
    aget-object v0, p1, v0

    .line 159
    .local v0, "thisArg":Ljava/lang/String;
    const-string v3, "-h"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    if-ge v2, v1, :cond_1

    .line 161
    new-instance v3, Ljava/io/File;

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "argc":I
    .local v4, "argc":I
    aget-object v2, p1, v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->envHome:Ljava/io/File;

    move v0, v4

    goto/16 :goto_2

    .line 163
    .end local v4    # "argc":I
    .restart local v2    # "argc":I
    :cond_1
    const-string v3, "-h requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 165
    :cond_2
    const-string v3, "-nodeName"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 166
    if-ge v2, v1, :cond_3

    .line 167
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .local v3, "argc":I
    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->nodeName:Ljava/lang/String;

    move v0, v3

    goto/16 :goto_2

    .line 169
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_3
    const-string v3, "-nodeName requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 171
    :cond_4
    const-string v3, "-hostPort"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 172
    if-ge v2, v1, :cond_5

    .line 173
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .restart local v3    # "argc":I
    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->hostPort:Ljava/lang/String;

    move v0, v3

    goto/16 :goto_2

    .line 175
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_5
    const-string v3, "-hostPort requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 177
    :cond_6
    const-string v3, "-groupName"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 178
    if-ge v2, v1, :cond_7

    .line 179
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .restart local v3    # "argc":I
    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->groupName:Ljava/lang/String;

    move v0, v3

    goto/16 :goto_2

    .line 181
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_7
    const-string v3, "-groupName requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 183
    :cond_8
    const-string v3, "-createNode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    .line 184
    iput-boolean v4, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->createNode:Z

    goto/16 :goto_1

    .line 185
    :cond_9
    const-string v3, "-createEnv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 186
    iput-boolean v4, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->createEnv:Z

    goto/16 :goto_1

    .line 187
    :cond_a
    const-string v3, "-helpers"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 188
    if-ge v2, v1, :cond_b

    .line 189
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .restart local v3    # "argc":I
    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->helpers:Ljava/lang/String;

    move v0, v3

    goto/16 :goto_2

    .line 191
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_b
    const-string v3, "-helpers requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    :cond_c
    const-string v3, "-designatedPrimary"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 194
    iput-boolean v4, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->designatedPrimary:Z

    goto/16 :goto_1

    .line 195
    :cond_d
    const-string v3, "-electableGroupSize"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 196
    if-ge v2, v1, :cond_e

    .line 197
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .restart local v3    # "argc":I
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->electableGroupSize:I

    move v0, v3

    goto/16 :goto_2

    .line 199
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_e
    const-string v3, "-electableGroupSize requires a group size argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 202
    :cond_f
    const-string v3, "-updates"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 203
    if-ge v2, v1, :cond_10

    .line 204
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .restart local v3    # "argc":I
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->updates:I

    move v0, v3

    goto :goto_2

    .line 206
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_10
    const-string v3, "-updates requires number of updates/periodargument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 209
    :cond_11
    const-string v3, "-nodeType"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 210
    if-ge v2, v1, :cond_12

    .line 211
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .restart local v3    # "argc":I
    aget-object v2, p1, v2

    invoke-static {v2}, Lcom/sleepycat/je/rep/NodeType;->valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/NodeType;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    move v0, v3

    goto :goto_2

    .line 213
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_12
    const-string v3, "-nodeType requires a type argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 215
    :cond_13
    const-string v3, "-cacheMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 216
    if-ge v2, v1, :cond_14

    .line 217
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .restart local v3    # "argc":I
    aget-object v2, p1, v2

    invoke-static {v2}, Lcom/sleepycat/je/CacheMode;->valueOf(Ljava/lang/String;)Lcom/sleepycat/je/CacheMode;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->cacheMode:Lcom/sleepycat/je/CacheMode;

    move v0, v3

    goto :goto_2

    .line 219
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_14
    const-string v3, "-cacheMode requires a type argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid argument"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    .line 224
    .end local v0    # "thisArg":Ljava/lang/String;
    :goto_1
    move v0, v2

    .end local v2    # "argc":I
    .local v0, "argc":I
    :goto_2
    goto/16 :goto_0

    .line 225
    :cond_16
    iget-boolean v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->createNode:Z

    if-eqz v2, :cond_18

    .line 227
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->nodeName:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->hostPort:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->groupName:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->helpers:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 231
    :cond_17
    const-string v2, "groupName, nodeName, nodeHost and helpers must all be specified when using -createNode"

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    .line 235
    :cond_18
    iget-boolean v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->createEnv:Z

    if-eqz v2, :cond_1a

    .line 236
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->groupName:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->helpers:Ljava/lang/String;

    if-nez v2, :cond_1a

    .line 237
    :cond_19
    const-string v2, "groupName and helpers must all be specified when using -createEnv"

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->printUsage(Ljava/lang/String;)V

    .line 241
    :cond_1a
    return-void
.end method

.method private printUsage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 396
    if-eqz p1, :cond_0

    .line 397
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 399
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/DbNullNode;->USAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 401
    return-void
.end method

.method private run()V
    .locals 6

    .line 247
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->checkParameters()V

    .line 248
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/DbNullNode;->openAndIdle()V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/InsufficientLogException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    nop

    .line 260
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "ile":Lcom/sleepycat/je/rep/InsufficientLogException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring environment:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->envHome:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    new-instance v1, Lcom/sleepycat/je/rep/NetworkRestore;

    invoke-direct {v1}, Lcom/sleepycat/je/rep/NetworkRestore;-><init>()V

    .line 253
    .local v1, "networkRestore":Lcom/sleepycat/je/rep/NetworkRestore;
    new-instance v2, Lcom/sleepycat/je/rep/NetworkRestoreConfig;

    invoke-direct {v2}, Lcom/sleepycat/je/rep/NetworkRestoreConfig;-><init>()V

    .line 254
    .local v2, "config":Lcom/sleepycat/je/rep/NetworkRestoreConfig;
    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/je/rep/NetworkRestore;->execute(Lcom/sleepycat/je/rep/InsufficientLogException;Lcom/sleepycat/je/rep/NetworkRestoreConfig;)V

    .line 255
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restored environment:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->envHome:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->createEnv:Z

    .line 257
    goto :goto_0
.end method

.method private writeUpdates(Lcom/sleepycat/je/rep/ReplicatedEnvironment;)V
    .locals 7
    .param p1, "repEnv"    # Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    .line 363
    iget v0, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->updates:I

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isMaster()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 367
    :cond_0
    const/4 v0, 0x0

    .line 368
    .local v0, "db":Lcom/sleepycat/je/Database;
    const/4 v1, 0x0

    .line 370
    .local v1, "txn":Lcom/sleepycat/je/Transaction;
    :try_start_0
    sget-object v2, Lcom/sleepycat/je/TransactionConfig;->DEFAULT:Lcom/sleepycat/je/TransactionConfig;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v2

    move-object v1, v2

    .line 371
    const-string v2, "DbNullDb"

    sget-object v4, Lcom/sleepycat/je/rep/utilint/DbNullNode;->dbConfig:Lcom/sleepycat/je/DatabaseConfig;

    invoke-virtual {p1, v1, v2, v4}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v2

    move-object v0, v2

    .line 372
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->commit()V

    .line 373
    const/4 v1, 0x0

    .line 374
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    const/4 v4, 0x1

    new-array v5, v4, [B

    const/4 v6, 0x0

    aput-byte v4, v5, v6

    invoke-direct {v2, v5}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 375
    .local v2, "key":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {v6, v2}, Lcom/sleepycat/bind/tuple/IntegerBinding;->intToEntry(ILcom/sleepycat/je/DatabaseEntry;)V

    .line 376
    sget-object v4, Lcom/sleepycat/je/rep/utilint/DbNullNode;->txnConfig:Lcom/sleepycat/je/TransactionConfig;

    invoke-virtual {p1, v3, v4}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v3

    move-object v1, v3

    .line 377
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->updates:I

    if-ge v3, v4, :cond_1

    .line 378
    invoke-virtual {v0, v1, v2, v2}, Lcom/sleepycat/je/Database;->put(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    .line 377
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 380
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->commit()V

    .line 381
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Wrote "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sleepycat/je/rep/utilint/DbNullNode;->updates:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " updates"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    const/4 v1, 0x0

    .line 386
    .end local v2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    if-eqz v1, :cond_2

    .line 387
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 389
    :cond_2
    if-eqz v0, :cond_4

    .line 390
    :goto_1
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->close()V

    goto :goto_2

    .line 386
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 383
    :catch_0
    move-exception v2

    .line 384
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3

    .line 387
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 389
    :cond_3
    if-eqz v0, :cond_4

    .line 390
    goto :goto_1

    .line 393
    :cond_4
    :goto_2
    return-void

    .line 386
    :goto_3
    if-eqz v1, :cond_5

    .line 387
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 389
    :cond_5
    if-eqz v0, :cond_6

    .line 390
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->close()V

    :cond_6
    throw v2

    .line 364
    .end local v0    # "db":Lcom/sleepycat/je/Database;
    .end local v1    # "txn":Lcom/sleepycat/je/Transaction;
    :cond_7
    :goto_4
    return-void
.end method
