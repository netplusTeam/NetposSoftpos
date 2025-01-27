.class public Lcom/sleepycat/je/rep/util/DbEnableReplication;
.super Ljava/lang/Object;
.source "DbEnableReplication.java"


# static fields
.field private static final usageString:Ljava/lang/String; = "usage: java -cp je.jar com.sleepycat.je.rep.util.DbEnableReplication\n -h <dir>                              # environment home directory\n -groupName <group name>               # replication group name\n -nodeName <node name>                 # replicated node name\n -nodeHostPort <host name:port number> # host name or IP address\n                                          and port number to use\n                                          for this node\n"


# instance fields
.field private envHome:Ljava/io/File;

.field private groupName:Ljava/lang/String;

.field private nodeHostPort:Ljava/lang/String;

.field private nodeName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "nodeName"    # Ljava/lang/String;
    .param p4, "nodeHostPort"    # Ljava/lang/String;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/DbEnableReplication;->envHome:Ljava/io/File;

    .line 225
    iput-object p2, p0, Lcom/sleepycat/je/rep/util/DbEnableReplication;->groupName:Ljava/lang/String;

    .line 226
    iput-object p3, p0, Lcom/sleepycat/je/rep/util/DbEnableReplication;->nodeName:Ljava/lang/String;

    .line 227
    iput-object p4, p0, Lcom/sleepycat/je/rep/util/DbEnableReplication;->nodeHostPort:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/sleepycat/je/rep/util/DbEnableReplication;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/util/DbEnableReplication;-><init>()V

    .line 138
    .local v0, "converter":Lcom/sleepycat/je/rep/util/DbEnableReplication;
    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/util/DbEnableReplication;->parseArgs([Ljava/lang/String;)V

    .line 141
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/util/DbEnableReplication;->convert()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    goto :goto_0

    .line 142
    :catchall_0
    move-exception v1

    .line 143
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "argc":I
    array-length v1, p1

    .line 157
    .local v1, "nArgs":I
    :goto_0
    if-ge v0, v1, :cond_8

    .line 158
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "argc":I
    .local v2, "argc":I
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "thisArg":Ljava/lang/String;
    const-string v3, "-h"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    if-ge v2, v1, :cond_0

    .line 161
    new-instance v3, Ljava/io/File;

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "argc":I
    .local v4, "argc":I
    aget-object v2, p1, v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/util/DbEnableReplication;->envHome:Ljava/io/File;

    move v0, v4

    goto :goto_3

    .line 163
    .end local v4    # "argc":I
    .restart local v2    # "argc":I
    :cond_0
    const-string v3, "-h requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/util/DbEnableReplication;->printUsage(Ljava/lang/String;)V

    goto :goto_2

    .line 165
    :cond_1
    const-string v3, "-groupName"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    if-ge v2, v1, :cond_2

    .line 167
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .local v3, "argc":I
    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/util/DbEnableReplication;->groupName:Ljava/lang/String;

    move v0, v3

    goto :goto_3

    .line 169
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_2
    const-string v3, "-groupName requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/util/DbEnableReplication;->printUsage(Ljava/lang/String;)V

    goto :goto_2

    .line 171
    :cond_3
    const-string v3, "-nodeName"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    if-ge v2, v1, :cond_4

    .line 173
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .restart local v3    # "argc":I
    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/util/DbEnableReplication;->nodeName:Ljava/lang/String;

    move v0, v3

    goto :goto_3

    .line 175
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_4
    const-string v3, "-nodeName requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/util/DbEnableReplication;->printUsage(Ljava/lang/String;)V

    goto :goto_2

    .line 177
    :cond_5
    const-string v3, "-nodeHostPort"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 178
    if-ge v2, v1, :cond_6

    .line 179
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .restart local v3    # "argc":I
    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/util/DbEnableReplication;->nodeHostPort:Ljava/lang/String;

    .line 181
    :try_start_0
    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

    iget-object v4, p0, Lcom/sleepycat/je/rep/util/DbEnableReplication;->nodeHostPort:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/sleepycat/je/config/ConfigParam;->validateValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 182
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 184
    const-string v4, "-nodeHostPort is illegal!"

    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/util/DbEnableReplication;->printUsage(Ljava/lang/String;)V

    .line 185
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    nop

    .line 190
    .end local v0    # "thisArg":Ljava/lang/String;
    move v0, v3

    goto :goto_3

    .line 187
    .end local v3    # "argc":I
    .restart local v0    # "thisArg":Ljava/lang/String;
    .local v2, "argc":I
    :cond_6
    const-string v3, "-nodeHostPort requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/util/DbEnableReplication;->printUsage(Ljava/lang/String;)V

    .line 190
    .end local v0    # "thisArg":Ljava/lang/String;
    :cond_7
    :goto_2
    move v0, v2

    .end local v2    # "argc":I
    .local v0, "argc":I
    :goto_3
    goto/16 :goto_0

    .line 192
    :cond_8
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/DbEnableReplication;->envHome:Ljava/io/File;

    if-nez v2, :cond_9

    .line 193
    const-string v2, "-h is a required argument."

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/util/DbEnableReplication;->printUsage(Ljava/lang/String;)V

    .line 196
    :cond_9
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/DbEnableReplication;->groupName:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 197
    const-string v2, "-groupName is a required argument."

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/util/DbEnableReplication;->printUsage(Ljava/lang/String;)V

    .line 200
    :cond_a
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/DbEnableReplication;->nodeName:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 201
    const-string v2, "-nodeName is a required argument."

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/util/DbEnableReplication;->printUsage(Ljava/lang/String;)V

    .line 204
    :cond_b
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/DbEnableReplication;->nodeHostPort:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 205
    const-string v2, "-nodeHostPort is a required argument."

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/util/DbEnableReplication;->printUsage(Ljava/lang/String;)V

    .line 207
    :cond_c
    return-void
.end method

.method private printUsage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 148
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "usage: java -cp je.jar com.sleepycat.je.rep.util.DbEnableReplication\n -h <dir>                              # environment home directory\n -groupName <group name>               # replication group name\n -nodeName <node name>                 # replicated node name\n -nodeHostPort <host name:port number> # host name or IP address\n                                          and port number to use\n                                          for this node\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 151
    return-void
.end method


# virtual methods
.method public convert()V
    .locals 7

    .line 236
    new-instance v0, Lcom/sleepycat/je/Durability;

    sget-object v1, Lcom/sleepycat/je/Durability$SyncPolicy;->WRITE_NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v2, Lcom/sleepycat/je/Durability$SyncPolicy;->WRITE_NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/Durability;-><init>(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)V

    .line 241
    .local v0, "durability":Lcom/sleepycat/je/Durability;
    new-instance v1, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 242
    .local v1, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setAllowCreate(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 243
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setTransactional(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 244
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/EnvironmentConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 246
    new-instance v3, Lcom/sleepycat/je/rep/ReplicationConfig;

    iget-object v4, p0, Lcom/sleepycat/je/rep/util/DbEnableReplication;->groupName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sleepycat/je/rep/util/DbEnableReplication;->nodeName:Ljava/lang/String;

    iget-object v6, p0, Lcom/sleepycat/je/rep/util/DbEnableReplication;->nodeHostPort:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/sleepycat/je/rep/ReplicationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .local v3, "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodeHostPort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/ReplicationConfig;->setHelperHosts(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    .line 249
    invoke-static {v3, v2}, Lcom/sleepycat/je/rep/RepInternal;->setAllowConvert(Lcom/sleepycat/je/rep/ReplicationConfig;Z)V

    .line 251
    new-instance v2, Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    iget-object v4, p0, Lcom/sleepycat/je/rep/util/DbEnableReplication;->envHome:Ljava/io/File;

    invoke-direct {v2, v4, v3, v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;-><init>(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;)V

    .line 254
    .local v2, "repEnv":Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->close()V

    .line 255
    return-void
.end method
