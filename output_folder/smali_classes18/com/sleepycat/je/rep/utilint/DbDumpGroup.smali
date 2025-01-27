.class public Lcom/sleepycat/je/rep/utilint/DbDumpGroup;
.super Ljava/lang/Object;
.source "DbDumpGroup.java"


# instance fields
.field private dumpCount:Z

.field private envHome:Ljava/io/File;

.field private final out:Ljava/io/PrintStream;


# direct methods
.method private constructor <init>(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->envHome:Ljava/io/File;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->dumpCount:Z

    .line 46
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->out:Ljava/io/PrintStream;

    .line 47
    return-void
.end method

.method private dumpCount()V
    .locals 13

    .line 80
    new-instance v0, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 81
    .local v0, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setReadOnly(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 82
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setAllowCreate(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 83
    new-instance v3, Lcom/sleepycat/je/Environment;

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->envHome:Ljava/io/File;

    invoke-direct {v3, v4, v0}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;)V

    .line 85
    .local v3, "env":Lcom/sleepycat/je/Environment;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 86
    .local v4, "databaseNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lcom/sleepycat/je/Environment;->getDatabaseNames()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 89
    .local v6, "dbName":Ljava/lang/String;
    new-instance v7, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v7}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 90
    .local v7, "dbCfg":Lcom/sleepycat/je/DatabaseConfig;
    invoke-virtual {v7, v2}, Lcom/sleepycat/je/DatabaseConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 91
    invoke-virtual {v7, v1}, Lcom/sleepycat/je/DatabaseConfig;->setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 92
    invoke-static {v7, v1}, Lcom/sleepycat/je/DbInternal;->setUseExistingConfig(Lcom/sleepycat/je/DatabaseConfig;Z)V

    .line 94
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v6, v7}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v8

    .line 95
    .local v8, "db":Lcom/sleepycat/je/Database;
    iget-object v9, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Database: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lcom/sleepycat/je/Database;->count()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v8}, Lcom/sleepycat/je/Database;->close()V

    .line 97
    .end local v6    # "dbName":Ljava/lang/String;
    .end local v7    # "dbCfg":Lcom/sleepycat/je/DatabaseConfig;
    .end local v8    # "db":Lcom/sleepycat/je/Database;
    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v3}, Lcom/sleepycat/je/Environment;->close()V

    .line 100
    return-void
.end method

.method private dumpGroup()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->envHome:Ljava/io/File;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->getGroup(Ljava/io/File;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    .line 107
    .local v0, "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;-><init>(Ljava/io/PrintStream;)V

    .line 51
    .local v0, "dumper":Lcom/sleepycat/je/rep/utilint/DbDumpGroup;
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->parseArgs([Ljava/lang/String;)V

    .line 53
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 56
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 58
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private printUsage(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->out:Ljava/io/PrintStream;

    const-string v1, "       -h <dir>   # environment home directory"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->out:Ljava/io/PrintStream;

    const-string v1, "       -dumpCount # dump all databases\' count in\n                    this Environment"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 160
    return-void
.end method


# virtual methods
.method public parseArgs([Ljava/lang/String;)V
    .locals 5
    .param p1, "argv"    # [Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "argc":I
    array-length v1, p1

    .line 120
    .local v1, "nArgs":I
    if-nez v1, :cond_0

    .line 121
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->printUsage(Ljava/lang/String;)V

    .line 122
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 125
    :cond_0
    :goto_0
    if-ge v0, v1, :cond_4

    .line 126
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "argc":I
    .local v2, "argc":I
    aget-object v0, p1, v0

    .line 127
    .local v0, "thisArg":Ljava/lang/String;
    const-string v3, "-h"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    if-ge v2, v1, :cond_1

    .line 129
    new-instance v3, Ljava/io/File;

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "argc":I
    .local v4, "argc":I
    aget-object v2, p1, v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->envHome:Ljava/io/File;

    move v0, v4

    goto :goto_2

    .line 131
    .end local v4    # "argc":I
    .restart local v2    # "argc":I
    :cond_1
    const-string v3, "-h requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_2
    const-string v3, "-dumpCount"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->dumpCount:Z

    goto :goto_1

    .line 136
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid argument"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->printUsage(Ljava/lang/String;)V

    .line 138
    .end local v0    # "thisArg":Ljava/lang/String;
    :goto_1
    move v0, v2

    .end local v2    # "argc":I
    .local v0, "argc":I
    :goto_2
    goto :goto_0

    .line 140
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->envHome:Ljava/io/File;

    if-nez v2, :cond_5

    .line 141
    const-string v2, "-h is a required argument"

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->printUsage(Ljava/lang/String;)V

    .line 143
    :cond_5
    return-void
.end method

.method public run()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->out:Ljava/io/PrintStream;

    const-string v1, "For internal use only. Consider using the public utility com.sleepycat.je.rep.DbGroupAdmin when displaying group information."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Environment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->envHome:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->dumpCount:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->dumpCount()V

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/DbDumpGroup;->dumpGroup()V

    .line 70
    return-void
.end method
