.class public Lcom/sleepycat/je/rep/util/DbResetRepGroup;
.super Ljava/lang/Object;
.source "DbResetRepGroup.java"


# static fields
.field private static final usageString:Ljava/lang/String; = "usage: java -cp je.jar com.sleepycat.je.rep.util.DbResetRepGroup\n -h <dir>                              # environment home directory\n -groupName <group name>               # replication group name\n -nodeName <node name>                 # replicated node name\n -nodeHostPort <host name:port number> # host name or IP address\n                                          and port number to use\n                                          for this node\n"


# instance fields
.field private envHome:Ljava/io/File;

.field private groupName:Ljava/lang/String;

.field private nodeHostPort:Ljava/lang/String;

.field private nodeName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "nodeName"    # Ljava/lang/String;
    .param p4, "nodeHostPort"    # Ljava/lang/String;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->envHome:Ljava/io/File;

    .line 231
    iput-object p2, p0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->groupName:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->nodeName:Ljava/lang/String;

    .line 233
    iput-object p4, p0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->nodeHostPort:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/util/DbResetRepGroup;-><init>()V

    .line 147
    .local v0, "converter":Lcom/sleepycat/je/rep/util/DbResetRepGroup;
    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->parseArgs([Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->reset()V

    .line 149
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "argc":I
    array-length v1, p1

    .line 161
    .local v1, "nArgs":I
    :goto_0
    if-ge v0, v1, :cond_8

    .line 162
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "argc":I
    .local v2, "argc":I
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "thisArg":Ljava/lang/String;
    const-string v3, "-h"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    if-ge v2, v1, :cond_0

    .line 165
    new-instance v3, Ljava/io/File;

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "argc":I
    .local v4, "argc":I
    aget-object v2, p1, v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->envHome:Ljava/io/File;

    move v0, v4

    goto :goto_3

    .line 167
    .end local v4    # "argc":I
    .restart local v2    # "argc":I
    :cond_0
    const-string v3, "-h requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->printUsage(Ljava/lang/String;)V

    goto :goto_2

    .line 169
    :cond_1
    const-string v3, "-groupName"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 170
    if-ge v2, v1, :cond_2

    .line 171
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .local v3, "argc":I
    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->groupName:Ljava/lang/String;

    move v0, v3

    goto :goto_3

    .line 173
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_2
    const-string v3, "-groupName requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->printUsage(Ljava/lang/String;)V

    goto :goto_2

    .line 175
    :cond_3
    const-string v3, "-nodeName"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 176
    if-ge v2, v1, :cond_4

    .line 177
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .restart local v3    # "argc":I
    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->nodeName:Ljava/lang/String;

    move v0, v3

    goto :goto_3

    .line 179
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_4
    const-string v3, "-nodeName requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->printUsage(Ljava/lang/String;)V

    goto :goto_2

    .line 181
    :cond_5
    const-string v3, "-nodeHostPort"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 182
    if-ge v2, v1, :cond_6

    .line 183
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .restart local v3    # "argc":I
    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->nodeHostPort:Ljava/lang/String;

    .line 185
    :try_start_0
    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

    iget-object v4, p0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->nodeHostPort:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/sleepycat/je/config/ConfigParam;->validateValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 186
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 188
    const-string v4, "-nodeHostPort is illegal!"

    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->printUsage(Ljava/lang/String;)V

    .line 189
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    nop

    .line 194
    .end local v0    # "thisArg":Ljava/lang/String;
    move v0, v3

    goto :goto_3

    .line 191
    .end local v3    # "argc":I
    .restart local v0    # "thisArg":Ljava/lang/String;
    .local v2, "argc":I
    :cond_6
    const-string v3, "-nodeHostPort requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->printUsage(Ljava/lang/String;)V

    .line 194
    .end local v0    # "thisArg":Ljava/lang/String;
    :cond_7
    :goto_2
    move v0, v2

    .end local v2    # "argc":I
    .local v0, "argc":I
    :goto_3
    goto/16 :goto_0

    .line 196
    :cond_8
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->envHome:Ljava/io/File;

    if-nez v2, :cond_9

    .line 197
    const-string v2, "-h is a required argument."

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->printUsage(Ljava/lang/String;)V

    .line 200
    :cond_9
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->groupName:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 201
    const-string v2, "-groupName is a required argument."

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->printUsage(Ljava/lang/String;)V

    .line 204
    :cond_a
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->nodeName:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 205
    const-string v2, "-nodeName is a required argument."

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->printUsage(Ljava/lang/String;)V

    .line 208
    :cond_b
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->nodeHostPort:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 209
    const-string v2, "-nodeHostPort is a required argument."

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->printUsage(Ljava/lang/String;)V

    .line 211
    :cond_c
    return-void
.end method

.method private printUsage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 152
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "usage: java -cp je.jar com.sleepycat.je.rep.util.DbResetRepGroup\n -h <dir>                              # environment home directory\n -groupName <group name>               # replication group name\n -nodeName <node name>                 # replicated node name\n -nodeHostPort <host name:port number> # host name or IP address\n                                          and port number to use\n                                          for this node\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 155
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 6

    .line 244
    new-instance v0, Lcom/sleepycat/je/Durability;

    sget-object v1, Lcom/sleepycat/je/Durability$SyncPolicy;->SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v2, Lcom/sleepycat/je/Durability$SyncPolicy;->SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->NONE:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/Durability;-><init>(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)V

    .line 249
    .local v0, "durability":Lcom/sleepycat/je/Durability;
    new-instance v1, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 250
    .local v1, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setAllowCreate(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 251
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setTransactional(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 252
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/EnvironmentConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 254
    new-instance v2, Lcom/sleepycat/je/rep/ReplicationConfig;

    iget-object v3, p0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->groupName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->nodeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->nodeHostPort:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/sleepycat/je/rep/ReplicationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v2, "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodeHostPort()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/ReplicationConfig;->setHelperHosts(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    .line 259
    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->RESET_REP_GROUP:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v3}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/rep/ReplicationConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 262
    new-instance v3, Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    iget-object v4, p0, Lcom/sleepycat/je/rep/util/DbResetRepGroup;->envHome:Ljava/io/File;

    invoke-direct {v3, v4, v2, v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;-><init>(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;)V

    .line 265
    .local v3, "repEnv":Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->close()V

    .line 266
    return-void
.end method
