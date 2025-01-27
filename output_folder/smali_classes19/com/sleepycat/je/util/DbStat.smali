.class public Lcom/sleepycat/je/util/DbStat;
.super Lcom/sleepycat/je/util/DbVerify;
.source "DbStat.java"


# instance fields
.field private progressInterval:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbVerify;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/util/DbStat;->progressInterval:I

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Environment;Ljava/lang/String;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "dbName"    # Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/util/DbVerify;-><init>(Lcom/sleepycat/je/Environment;Ljava/lang/String;Z)V

    .line 38
    iput v0, p0, Lcom/sleepycat/je/util/DbStat;->progressInterval:I

    .line 66
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/sleepycat/je/util/DbStat;

    invoke-direct {v0}, Lcom/sleepycat/je/util/DbStat;-><init>()V

    .line 44
    .local v0, "stat":Lcom/sleepycat/je/util/DbStat;
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/util/DbStat;->parseArgs([Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x1

    .line 48
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbStat;->openEnv()V

    .line 49
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/util/DbStat;->stats(Ljava/io/PrintStream;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const/4 v1, 0x0

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbStat;->closeEnv()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v2

    .line 54
    .local v2, "T":Ljava/lang/Throwable;
    const/4 v1, 0x1

    .line 55
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 58
    .end local v2    # "T":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 59
    return-void
.end method


# virtual methods
.method parseArgs([Ljava/lang/String;)V
    .locals 5
    .param p1, "argv"    # [Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "argc":I
    array-length v1, p1

    .line 73
    .local v1, "nArgs":I
    :goto_0
    if-ge v0, v1, :cond_8

    .line 74
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "argc":I
    .local v2, "argc":I
    aget-object v0, p1, v0

    .line 75
    .local v0, "thisArg":Ljava/lang/String;
    const-string v3, "-V"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v4, Lcom/sleepycat/je/JEVersion;->CURRENT_VERSION:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 77
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 78
    :cond_0
    const-string v3, "-h"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    if-ge v2, v1, :cond_1

    .line 80
    new-instance v3, Ljava/io/File;

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "argc":I
    .local v4, "argc":I
    aget-object v2, p1, v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sleepycat/je/util/DbStat;->envHome:Ljava/io/File;

    move v0, v4

    goto :goto_2

    .line 82
    .end local v4    # "argc":I
    .restart local v2    # "argc":I
    :cond_1
    const-string v3, "-h requires an argument"

    invoke-virtual {p0, v3}, Lcom/sleepycat/je/util/DbStat;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 84
    :cond_2
    const-string v3, "-s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 85
    if-ge v2, v1, :cond_3

    .line 86
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .local v3, "argc":I
    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/sleepycat/je/util/DbStat;->dbName:Ljava/lang/String;

    move v0, v3

    goto :goto_2

    .line 88
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_3
    const-string v3, "-s requires an argument"

    invoke-virtual {p0, v3}, Lcom/sleepycat/je/util/DbStat;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_4
    const-string v3, "-v"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 91
    if-ge v2, v1, :cond_6

    .line 92
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .restart local v3    # "argc":I
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/util/DbStat;->progressInterval:I

    .line 93
    if-gtz v2, :cond_5

    .line 94
    const-string v2, "-v requires a positive argument"

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/util/DbStat;->printUsage(Ljava/lang/String;)V

    .line 100
    .end local v0    # "thisArg":Ljava/lang/String;
    :cond_5
    move v0, v3

    goto :goto_2

    .line 97
    .end local v3    # "argc":I
    .restart local v0    # "thisArg":Ljava/lang/String;
    .restart local v2    # "argc":I
    :cond_6
    const-string v3, "-v requires an argument"

    invoke-virtual {p0, v3}, Lcom/sleepycat/je/util/DbStat;->printUsage(Ljava/lang/String;)V

    .line 100
    .end local v0    # "thisArg":Ljava/lang/String;
    :cond_7
    :goto_1
    move v0, v2

    .end local v2    # "argc":I
    .local v0, "argc":I
    :goto_2
    goto :goto_0

    .line 102
    :cond_8
    iget-object v2, p0, Lcom/sleepycat/je/util/DbStat;->envHome:Ljava/io/File;

    if-nez v2, :cond_9

    .line 103
    const-string v2, "-h is a required argument"

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/util/DbStat;->printUsage(Ljava/lang/String;)V

    .line 106
    :cond_9
    iget-object v2, p0, Lcom/sleepycat/je/util/DbStat;->dbName:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 107
    const-string v2, "-s is a required argument"

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/util/DbStat;->printUsage(Ljava/lang/String;)V

    .line 109
    :cond_a
    return-void
.end method

.method public stats(Ljava/io/PrintStream;)Z
    .locals 7
    .param p1, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/sleepycat/je/StatsConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/StatsConfig;-><init>()V

    .line 115
    .local v0, "statsConfig":Lcom/sleepycat/je/StatsConfig;
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/StatsConfig;->setShowProgressStream(Ljava/io/PrintStream;)Lcom/sleepycat/je/StatsConfig;

    .line 116
    iget v1, p0, Lcom/sleepycat/je/util/DbStat;->progressInterval:I

    if-lez v1, :cond_0

    .line 117
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/StatsConfig;->setShowProgressInterval(I)Lcom/sleepycat/je/StatsConfig;

    .line 121
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/util/DbStat;->env:Lcom/sleepycat/je/Environment;

    invoke-static {v2}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    .line 122
    .local v2, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v3

    .line 123
    .local v3, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    nop

    .line 124
    invoke-static {v2, v1}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v4
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .local v4, "locker":Lcom/sleepycat/je/txn/BasicLocker;
    :try_start_1
    iget-object v5, p0, Lcom/sleepycat/je/util/DbStat;->dbName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/txn/HandleLocker;Z)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    .local v5, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_2
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 131
    nop

    .line 133
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleting()Z

    move-result v6
    :try_end_2
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v6, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    :try_start_3
    invoke-virtual {v5, v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->stat(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/BtreeStats;

    move-result-object v6

    .line 139
    .local v6, "stats":Lcom/sleepycat/je/DatabaseStats;
    invoke-virtual {p1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    .end local v6    # "stats":Lcom/sleepycat/je/DatabaseStats;
    :try_start_4
    invoke-virtual {v3, v5}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 142
    nop

    .line 146
    .end local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v3    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v4    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .end local v5    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    nop

    .line 148
    const/4 v1, 0x1

    return v1

    .line 141
    .restart local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v3    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v4    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v5    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception v6

    invoke-virtual {v3, v5}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .end local v0    # "statsConfig":Lcom/sleepycat/je/StatsConfig;
    .end local p1    # "out":Ljava/io/PrintStream;
    throw v6

    .line 134
    .restart local v0    # "statsConfig":Lcom/sleepycat/je/StatsConfig;
    .restart local p1    # "out":Ljava/io/PrintStream;
    :cond_2
    :goto_0
    return v1

    .line 130
    .end local v5    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_1
    move-exception v5

    invoke-virtual {v4}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .end local v0    # "statsConfig":Lcom/sleepycat/je/StatsConfig;
    .end local p1    # "out":Ljava/io/PrintStream;
    throw v5
    :try_end_4
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 144
    .end local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v3    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v4    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v0    # "statsConfig":Lcom/sleepycat/je/StatsConfig;
    .restart local p1    # "out":Ljava/io/PrintStream;
    :catch_0
    move-exception v2

    .line 145
    .local v2, "DE":Lcom/sleepycat/je/DatabaseException;
    return v1
.end method
