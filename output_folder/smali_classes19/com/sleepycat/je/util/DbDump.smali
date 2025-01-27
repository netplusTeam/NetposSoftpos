.class public Lcom/sleepycat/je/util/DbDump;
.super Ljava/lang/Object;
.source "DbDump.java"


# static fields
.field private static final VERSION:I = 0x3

.field private static final usageString:Ljava/lang/String;


# instance fields
.field protected dbName:Ljava/lang/String;

.field protected doAggressiveScavengerRun:Z

.field protected doScavengerRun:Z

.field private dupSort:Z

.field protected env:Lcom/sleepycat/je/Environment;

.field protected envHome:Ljava/io/File;

.field protected formatUsingPrintable:Z

.field protected outputDirectory:Ljava/lang/String;

.field protected outputFile:Ljava/io/PrintStream;

.field private outputFileName:Ljava/lang/String;

.field protected verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/util/DbDump;

    .line 98
    invoke-static {v1}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  -h <dir> # environment home directory\n  [-f <fileName>]     # output file, for non -rR dumps\n  [-l]                # list databases in the environment\n  [-p]                # output printable characters\n  [-r]                # salvage mode\n  [-R]                # aggressive salvage mode\n  [-d] <directory>    # directory for *.dump files (salvage mode)\n  [-s <databaseName>] # database to dump\n  [-v]                # verbose in salvage mode\n  [-V]                # print JE version number\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/util/DbDump;->usageString:Ljava/lang/String;

    .line 97
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/util/DbDump;->envHome:Ljava/io/File;

    .line 87
    iput-object v0, p0, Lcom/sleepycat/je/util/DbDump;->dbName:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/sleepycat/je/util/DbDump;->outputFileName:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/sleepycat/je/util/DbDump;->outputDirectory:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/sleepycat/je/util/DbDump;->outputFile:Ljava/io/PrintStream;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbDump;->doScavengerRun:Z

    .line 94
    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbDump;->doAggressiveScavengerRun:Z

    .line 95
    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbDump;->verbose:Z

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Environment;Ljava/lang/String;Ljava/io/PrintStream;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "outputFile"    # Ljava/io/PrintStream;
    .param p4, "outputDirectory"    # Ljava/lang/String;
    .param p5, "formatUsingPrintable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/util/DbDump;->envHome:Ljava/io/File;

    .line 87
    iput-object v0, p0, Lcom/sleepycat/je/util/DbDump;->dbName:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/sleepycat/je/util/DbDump;->outputFileName:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/sleepycat/je/util/DbDump;->outputDirectory:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/sleepycat/je/util/DbDump;->outputFile:Ljava/io/PrintStream;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbDump;->doScavengerRun:Z

    .line 94
    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbDump;->doAggressiveScavengerRun:Z

    .line 95
    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbDump;->verbose:Z

    .line 122
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sleepycat/je/util/DbDump;->init(Lcom/sleepycat/je/Environment;Ljava/lang/String;Ljava/io/PrintStream;Z)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Environment;Ljava/lang/String;Ljava/io/PrintStream;Z)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "outputFile"    # Ljava/io/PrintStream;
    .param p4, "formatUsingPrintable"    # Z

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/util/DbDump;->envHome:Ljava/io/File;

    .line 87
    iput-object v0, p0, Lcom/sleepycat/je/util/DbDump;->dbName:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/sleepycat/je/util/DbDump;->outputFileName:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/sleepycat/je/util/DbDump;->outputDirectory:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/sleepycat/je/util/DbDump;->outputFile:Ljava/io/PrintStream;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbDump;->doScavengerRun:Z

    .line 94
    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbDump;->doAggressiveScavengerRun:Z

    .line 95
    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbDump;->verbose:Z

    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/util/DbDump;->init(Lcom/sleepycat/je/Environment;Ljava/lang/String;Ljava/io/PrintStream;Z)V

    .line 139
    return-void
.end method

.method private init(Lcom/sleepycat/je/Environment;Ljava/lang/String;Ljava/io/PrintStream;Z)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "outputFile"    # Ljava/io/PrintStream;
    .param p4, "formatUsingPrintable"    # Z

    .line 145
    invoke-virtual {p1}, Lcom/sleepycat/je/Environment;->getHome()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/util/DbDump;->envHome:Ljava/io/File;

    .line 146
    iput-object p1, p0, Lcom/sleepycat/je/util/DbDump;->env:Lcom/sleepycat/je/Environment;

    .line 147
    iput-object p2, p0, Lcom/sleepycat/je/util/DbDump;->dbName:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lcom/sleepycat/je/util/DbDump;->outputFile:Ljava/io/PrintStream;

    .line 149
    iput-boolean p4, p0, Lcom/sleepycat/je/util/DbDump;->formatUsingPrintable:Z

    .line 150
    return-void
.end method

.method private listDbs()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;
        }
    .end annotation

    .line 292
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/util/DbDump;->openEnv(Z)V

    .line 294
    iget-object v0, p0, Lcom/sleepycat/je/util/DbDump;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v0}, Lcom/sleepycat/je/Environment;->getDatabaseNames()Ljava/util/List;

    move-result-object v0

    .line 295
    .local v0, "dbNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 296
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 298
    .local v2, "name":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 300
    :cond_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 259
    new-instance v0, Lcom/sleepycat/je/util/DbDump;

    invoke-direct {v0}, Lcom/sleepycat/je/util/DbDump;-><init>()V

    .line 260
    .local v0, "dumper":Lcom/sleepycat/je/util/DbDump;
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/util/DbDump;->parseArgs([Ljava/lang/String;)Z

    move-result v1

    .line 261
    .local v1, "listDbs":Z
    iget-boolean v2, v0, Lcom/sleepycat/je/util/DbDump;->doScavengerRun:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/util/DbDump;->openEnv(Z)V

    .line 263
    new-instance v2, Lcom/sleepycat/je/util/DbScavenger;

    iget-object v5, v0, Lcom/sleepycat/je/util/DbDump;->env:Lcom/sleepycat/je/Environment;

    iget-object v6, v0, Lcom/sleepycat/je/util/DbDump;->outputDirectory:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/sleepycat/je/util/DbDump;->formatUsingPrintable:Z

    iget-boolean v8, v0, Lcom/sleepycat/je/util/DbDump;->doAggressiveScavengerRun:Z

    iget-boolean v9, v0, Lcom/sleepycat/je/util/DbDump;->verbose:Z

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sleepycat/je/util/DbScavenger;-><init>(Lcom/sleepycat/je/Environment;Ljava/lang/String;ZZZ)V

    move-object v0, v2

    .line 268
    move-object v2, v0

    check-cast v2, Lcom/sleepycat/je/util/DbScavenger;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sleepycat/je/util/DbScavenger;->setDumpCorruptedBounds(Z)V

    .line 271
    :cond_0
    if-eqz v1, :cond_1

    .line 272
    invoke-direct {v0}, Lcom/sleepycat/je/util/DbDump;->listDbs()V

    .line 273
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 277
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbDump;->dump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget-object v2, v0, Lcom/sleepycat/je/util/DbDump;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v2}, Lcom/sleepycat/je/Environment;->close()V

    .line 282
    iget-object v2, v0, Lcom/sleepycat/je/util/DbDump;->outputFile:Ljava/io/PrintStream;

    if-eqz v2, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v2, v3, :cond_2

    .line 284
    :goto_0
    iget-object v2, v0, Lcom/sleepycat/je/util/DbDump;->outputFile:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V

    goto :goto_1

    .line 278
    :catchall_0
    move-exception v2

    .line 279
    .local v2, "T":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 281
    .end local v2    # "T":Ljava/lang/Throwable;
    iget-object v2, v0, Lcom/sleepycat/je/util/DbDump;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v2}, Lcom/sleepycat/je/Environment;->close()V

    .line 282
    iget-object v2, v0, Lcom/sleepycat/je/util/DbDump;->outputFile:Ljava/io/PrintStream;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/sleepycat/je/util/DbDump;->outputFile:Ljava/io/PrintStream;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v2, v3, :cond_2

    .line 284
    goto :goto_0

    .line 287
    :cond_2
    :goto_1
    return-void

    .line 281
    :catchall_1
    move-exception v2

    iget-object v3, v0, Lcom/sleepycat/je/util/DbDump;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v3}, Lcom/sleepycat/je/Environment;->close()V

    .line 282
    iget-object v3, v0, Lcom/sleepycat/je/util/DbDump;->outputFile:Ljava/io/PrintStream;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/sleepycat/je/util/DbDump;->outputFile:Ljava/io/PrintStream;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v3, v4, :cond_3

    .line 284
    iget-object v3, v0, Lcom/sleepycat/je/util/DbDump;->outputFile:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    :cond_3
    throw v2
.end method


# virtual methods
.method public dump()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;,
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/util/DbDump;->openEnv(Z)V

    .line 418
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v2, p0, Lcom/sleepycat/je/util/DbDump;->env:Lcom/sleepycat/je/Environment;

    invoke-static {v2}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DbDump.dump of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/sleepycat/je/util/DbDump;->dbName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " starting"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 421
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 422
    .local v1, "foundKey":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 424
    .local v2, "foundData":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v3, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v3}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 425
    .local v3, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    invoke-virtual {v3, v0}, Lcom/sleepycat/je/DatabaseConfig;->setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 426
    invoke-static {v3, v0}, Lcom/sleepycat/je/DbInternal;->setUseExistingConfig(Lcom/sleepycat/je/DatabaseConfig;Z)V

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/util/DbDump;->env:Lcom/sleepycat/je/Environment;

    iget-object v5, p0, Lcom/sleepycat/je/util/DbDump;->dbName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5, v3}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseExistsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .local v0, "db":Lcom/sleepycat/je/Database;
    nop

    .line 434
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->getConfig()Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/DatabaseConfig;->getSortedDuplicates()Z

    move-result v5

    iput-boolean v5, p0, Lcom/sleepycat/je/util/DbDump;->dupSort:Z

    .line 436
    iget-object v7, p0, Lcom/sleepycat/je/util/DbDump;->outputFile:Ljava/io/PrintStream;

    iget-boolean v8, p0, Lcom/sleepycat/je/util/DbDump;->formatUsingPrintable:Z

    invoke-virtual {p0, v7, v5, v8}, Lcom/sleepycat/je/util/DbDump;->printHeader(Ljava/io/PrintStream;ZZ)V

    .line 438
    invoke-virtual {v0, v6, v6}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v5

    .line 439
    .local v5, "cursor":Lcom/sleepycat/je/Cursor;
    :goto_0
    sget-object v6, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v5, v1, v2, v6}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v6

    sget-object v7, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v6, v7, :cond_0

    .line 441
    iget-object v6, p0, Lcom/sleepycat/je/util/DbDump;->outputFile:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v7

    iget-boolean v8, p0, Lcom/sleepycat/je/util/DbDump;->formatUsingPrintable:Z

    invoke-virtual {p0, v6, v7, v8}, Lcom/sleepycat/je/util/DbDump;->dumpOne(Ljava/io/PrintStream;[BZ)V

    .line 442
    iget-object v6, p0, Lcom/sleepycat/je/util/DbDump;->outputFile:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v7

    iget-boolean v8, p0, Lcom/sleepycat/je/util/DbDump;->formatUsingPrintable:Z

    invoke-virtual {p0, v6, v7, v8}, Lcom/sleepycat/je/util/DbDump;->dumpOne(Ljava/io/PrintStream;[BZ)V

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {v5}, Lcom/sleepycat/je/Cursor;->close()V

    .line 445
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->close()V

    .line 446
    iget-object v6, p0, Lcom/sleepycat/je/util/DbDump;->outputFile:Ljava/io/PrintStream;

    const-string v7, "DATA=END"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 448
    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v7, p0, Lcom/sleepycat/je/util/DbDump;->env:Lcom/sleepycat/je/Environment;

    invoke-static {v7}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/sleepycat/je/util/DbDump;->dbName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " ending"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 450
    return-void

    .line 430
    .end local v0    # "db":Lcom/sleepycat/je/Database;
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Lcom/sleepycat/je/DatabaseExistsException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4
.end method

.method protected dumpOne(Ljava/io/PrintStream;[BZ)V
    .locals 2
    .param p1, "o"    # Ljava/io/PrintStream;
    .param p2, "ba"    # [B
    .param p3, "formatUsingPrintable"    # Z

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    invoke-static {v0, p2, p3}, Lcom/sleepycat/je/utilint/CmdUtil;->formatEntry(Ljava/lang/StringBuilder;[BZ)V

    .line 471
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method protected openEnv(Z)V
    .locals 4
    .param p1, "doRecovery"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/sleepycat/je/util/DbDump;->env:Lcom/sleepycat/je/Environment;

    if-nez v0, :cond_1

    .line 388
    new-instance v0, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 389
    .local v0, "envConfiguration":Lcom/sleepycat/je/EnvironmentConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setReadOnly(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 391
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RECOVERY:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 392
    invoke-virtual {v1}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    if-eqz p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    const-string v3, "false"

    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 395
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_COMPARATORS_REQUIRED:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 396
    invoke-virtual {v1}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 398
    new-instance v1, Lcom/sleepycat/je/Environment;

    iget-object v2, p0, Lcom/sleepycat/je/util/DbDump;->envHome:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;)V

    iput-object v1, p0, Lcom/sleepycat/je/util/DbDump;->env:Lcom/sleepycat/je/Environment;

    .line 400
    .end local v0    # "envConfiguration":Lcom/sleepycat/je/EnvironmentConfig;
    :cond_1
    return-void
.end method

.method protected parseArgs([Ljava/lang/String;)Z
    .locals 6
    .param p1, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "argc":I
    array-length v1, p1

    .line 313
    .local v1, "nArgs":I
    const/4 v2, 0x0

    .line 314
    .local v2, "listDbs":Z
    :goto_0
    if-ge v0, v1, :cond_e

    .line 315
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "argc":I
    .local v3, "argc":I
    aget-object v0, p1, v0

    .line 316
    .local v0, "thisArg":Ljava/lang/String;
    const-string v4, "-p"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 317
    iput-boolean v5, p0, Lcom/sleepycat/je/util/DbDump;->formatUsingPrintable:Z

    goto/16 :goto_1

    .line 318
    :cond_0
    const-string v4, "-V"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v5, Lcom/sleepycat/je/JEVersion;->CURRENT_VERSION:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 320
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 321
    :cond_1
    const-string v4, "-l"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 322
    const/4 v2, 0x1

    move v0, v3

    goto/16 :goto_2

    .line 323
    :cond_2
    const-string v4, "-r"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 324
    iput-boolean v5, p0, Lcom/sleepycat/je/util/DbDump;->doScavengerRun:Z

    goto/16 :goto_1

    .line 325
    :cond_3
    const-string v4, "-R"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 326
    iput-boolean v5, p0, Lcom/sleepycat/je/util/DbDump;->doScavengerRun:Z

    .line 327
    iput-boolean v5, p0, Lcom/sleepycat/je/util/DbDump;->doAggressiveScavengerRun:Z

    goto/16 :goto_1

    .line 328
    :cond_4
    const-string v4, "-f"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 329
    if-ge v3, v1, :cond_5

    .line 330
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "argc":I
    .local v4, "argc":I
    aget-object v3, p1, v3

    iput-object v3, p0, Lcom/sleepycat/je/util/DbDump;->outputFileName:Ljava/lang/String;

    move v0, v4

    goto/16 :goto_2

    .line 332
    .end local v4    # "argc":I
    .restart local v3    # "argc":I
    :cond_5
    const-string v4, "-f requires an argument"

    invoke-virtual {p0, v4}, Lcom/sleepycat/je/util/DbDump;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 334
    :cond_6
    const-string v4, "-h"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 335
    if-ge v3, v1, :cond_7

    .line 336
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "argc":I
    .restart local v4    # "argc":I
    aget-object v3, p1, v3

    .line 337
    .local v3, "envDir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/sleepycat/je/util/DbDump;->envHome:Ljava/io/File;

    .line 338
    .end local v3    # "envDir":Ljava/lang/String;
    move v0, v4

    goto :goto_2

    .line 339
    .end local v4    # "argc":I
    .local v3, "argc":I
    :cond_7
    const-string v4, "-h requires an argument"

    invoke-virtual {p0, v4}, Lcom/sleepycat/je/util/DbDump;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 341
    :cond_8
    const-string v4, "-d"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 342
    if-ge v3, v1, :cond_9

    .line 343
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "argc":I
    .restart local v4    # "argc":I
    aget-object v3, p1, v3

    iput-object v3, p0, Lcom/sleepycat/je/util/DbDump;->outputDirectory:Ljava/lang/String;

    move v0, v4

    goto :goto_2

    .line 345
    .end local v4    # "argc":I
    .restart local v3    # "argc":I
    :cond_9
    const-string v4, "-d requires an argument"

    invoke-virtual {p0, v4}, Lcom/sleepycat/je/util/DbDump;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 347
    :cond_a
    const-string v4, "-s"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 348
    if-ge v3, v1, :cond_b

    .line 349
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "argc":I
    .restart local v4    # "argc":I
    aget-object v3, p1, v3

    iput-object v3, p0, Lcom/sleepycat/je/util/DbDump;->dbName:Ljava/lang/String;

    move v0, v4

    goto :goto_2

    .line 351
    .end local v4    # "argc":I
    .restart local v3    # "argc":I
    :cond_b
    const-string v4, "-s requires an argument"

    invoke-virtual {p0, v4}, Lcom/sleepycat/je/util/DbDump;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 353
    :cond_c
    const-string v4, "-v"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 354
    iput-boolean v5, p0, Lcom/sleepycat/je/util/DbDump;->verbose:Z

    goto :goto_1

    .line 356
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a valid option."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sleepycat/je/util/DbDump;->printUsage(Ljava/lang/String;)V

    .line 358
    .end local v0    # "thisArg":Ljava/lang/String;
    :goto_1
    move v0, v3

    .end local v3    # "argc":I
    .local v0, "argc":I
    :goto_2
    goto/16 :goto_0

    .line 360
    :cond_e
    iget-object v3, p0, Lcom/sleepycat/je/util/DbDump;->envHome:Ljava/io/File;

    if-nez v3, :cond_f

    .line 361
    const-string v3, "-h is a required argument"

    invoke-virtual {p0, v3}, Lcom/sleepycat/je/util/DbDump;->printUsage(Ljava/lang/String;)V

    .line 364
    :cond_f
    if-nez v2, :cond_10

    iget-boolean v3, p0, Lcom/sleepycat/je/util/DbDump;->doScavengerRun:Z

    if-nez v3, :cond_10

    .line 366
    iget-object v3, p0, Lcom/sleepycat/je/util/DbDump;->dbName:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 367
    const-string v3, "Must supply a database name if -l not supplied."

    invoke-virtual {p0, v3}, Lcom/sleepycat/je/util/DbDump;->printUsage(Ljava/lang/String;)V

    .line 371
    :cond_10
    iget-object v3, p0, Lcom/sleepycat/je/util/DbDump;->outputFileName:Ljava/lang/String;

    if-nez v3, :cond_11

    .line 372
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v3, p0, Lcom/sleepycat/je/util/DbDump;->outputFile:Ljava/io/PrintStream;

    goto :goto_3

    .line 374
    :cond_11
    new-instance v3, Ljava/io/PrintStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/sleepycat/je/util/DbDump;->outputFileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/sleepycat/je/util/DbDump;->outputFile:Ljava/io/PrintStream;

    .line 377
    :goto_3
    return v2
.end method

.method protected printHeader(Ljava/io/PrintStream;ZZ)V
    .locals 2
    .param p1, "o"    # Ljava/io/PrintStream;
    .param p2, "dupSort"    # Z
    .param p3, "formatUsingPrintable"    # Z

    .line 455
    const-string v0, "VERSION=3"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 456
    if-eqz p3, :cond_0

    .line 457
    const-string v0, "format=print"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_0
    const-string v0, "format=bytevalue"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 461
    :goto_0
    const-string v0, "type=btree"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dupsort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 463
    const-string v0, "HEADER=END"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method protected printUsage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 303
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v1, Lcom/sleepycat/je/util/DbDump;->usageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 306
    return-void
.end method
