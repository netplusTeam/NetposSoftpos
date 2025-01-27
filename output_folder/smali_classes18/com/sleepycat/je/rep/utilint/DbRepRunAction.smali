.class public Lcom/sleepycat/je/rep/utilint/DbRepRunAction;
.super Ljava/lang/Object;
.source "DbRepRunAction.java"


# static fields
.field private static final USAGE:Ljava/lang/String;


# instance fields
.field private doCheckpoint:Z

.field private envHome:Ljava/io/File;

.field private groupName:Ljava/lang/String;

.field private nodeHost:Ljava/lang/String;

.field private nodeName:Ljava/lang/String;

.field private showVLSN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;

    .line 33
    invoke-static {v1}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n       -h <dir> # environment home directory\n       -group <name> # groupName\n       -name <name> # nodeName\n       -host <host> # nodeHost\n       -showVLSN (dump vlsn index )\n       -checkpoint (forced )\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->USAGE:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "argv"    # [Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;-><init>()V

    .line 51
    .local v0, "runAction":Lcom/sleepycat/je/rep/utilint/DbRepRunAction;
    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->parseArgs([Ljava/lang/String;)V

    .line 54
    :try_start_0
    invoke-direct {v0}, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->run()V

    .line 55
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 58
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 60
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 5
    .param p1, "argv"    # [Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "argc":I
    array-length v1, p1

    .line 67
    .local v1, "nArgs":I
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 68
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->printUsage(Ljava/lang/String;)V

    .line 69
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 72
    :cond_0
    :goto_0
    if-ge v0, v1, :cond_b

    .line 73
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "argc":I
    .local v2, "argc":I
    aget-object v0, p1, v0

    .line 74
    .local v0, "thisArg":Ljava/lang/String;
    const-string v3, "-h"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    if-ge v2, v1, :cond_1

    .line 76
    new-instance v3, Ljava/io/File;

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "argc":I
    .local v4, "argc":I
    aget-object v2, p1, v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->envHome:Ljava/io/File;

    move v0, v4

    goto/16 :goto_2

    .line 78
    .end local v4    # "argc":I
    .restart local v2    # "argc":I
    :cond_1
    const-string v3, "-h requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 80
    :cond_2
    const-string v3, "-name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 81
    if-ge v2, v1, :cond_3

    .line 82
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .local v3, "argc":I
    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->nodeName:Ljava/lang/String;

    move v0, v3

    goto/16 :goto_2

    .line 84
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_3
    const-string v3, "-name requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_4
    const-string v3, "-host"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 87
    if-ge v2, v1, :cond_5

    .line 88
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .restart local v3    # "argc":I
    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->nodeHost:Ljava/lang/String;

    move v0, v3

    goto :goto_2

    .line 90
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_5
    const-string v3, "-host requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_6
    const-string v3, "-group"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 93
    if-ge v2, v1, :cond_7

    .line 94
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .restart local v3    # "argc":I
    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->groupName:Ljava/lang/String;

    move v0, v3

    goto :goto_2

    .line 96
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_7
    const-string v3, "-group requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_8
    const-string v3, "-showVLSN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    .line 99
    iput-boolean v4, p0, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->showVLSN:Z

    goto :goto_1

    .line 100
    :cond_9
    const-string v3, "-checkpoint"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 101
    iput-boolean v4, p0, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->doCheckpoint:Z

    goto :goto_1

    .line 103
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid argument"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->printUsage(Ljava/lang/String;)V

    .line 105
    .end local v0    # "thisArg":Ljava/lang/String;
    :goto_1
    move v0, v2

    .end local v2    # "argc":I
    .local v0, "argc":I
    :goto_2
    goto/16 :goto_0

    .line 106
    :cond_b
    return-void
.end method

.method private printUsage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 135
    if-eqz p1, :cond_0

    .line 136
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->USAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 140
    return-void
.end method

.method private recover()Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    .locals 3

    .line 120
    new-instance v0, Lcom/sleepycat/je/rep/ReplicationConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/ReplicationConfig;-><init>()V

    .line 121
    .local v0, "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setNodeName(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 122
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setGroupName(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 123
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->nodeHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicationConfig;->setNodeHostPort(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 125
    new-instance v1, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 126
    .local v1, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setTransactional(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 128
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->envHome:Ljava/io/File;

    invoke-static {v2, v0, v1}, Lcom/sleepycat/je/rep/RepInternal;->createDetachedEnv(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    move-result-object v2

    return-object v2
.end method

.method private run()V
    .locals 3

    .line 109
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->recover()Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    move-result-object v0

    .line 110
    .local v0, "repEnv":Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    iget-boolean v1, p0, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->showVLSN:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {v0}, Lcom/sleepycat/je/rep/RepInternal;->getNonNullRepImpl(Lcom/sleepycat/je/rep/ReplicatedEnvironment;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->dumpDb(Z)Ljava/util/Map;

    .line 113
    :cond_0
    iget-boolean v1, p0, Lcom/sleepycat/je/rep/utilint/DbRepRunAction;->doCheckpoint:Z

    if-eqz v1, :cond_1

    .line 114
    new-instance v1, Lcom/sleepycat/je/CheckpointConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/CheckpointConfig;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/CheckpointConfig;->setForce(Z)Lcom/sleepycat/je/CheckpointConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->checkpoint(Lcom/sleepycat/je/CheckpointConfig;)V

    .line 116
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->close()V

    .line 117
    return-void
.end method
