.class public Lcom/sleepycat/je/util/DbLoad;
.super Ljava/lang/Object;
.source "DbLoad.java"


# static fields
.field private static final DEBUG:Z = false

.field private static backSlashValue:B

.field private static final usageString:Ljava/lang/String;


# instance fields
.field private commandLine:Z

.field private dbName:Ljava/lang/String;

.field private dupSort:Z

.field protected env:Lcom/sleepycat/je/Environment;

.field private formatUsingPrintable:Z

.field private ignoreUnknownConfig:Z

.field private noOverwrite:Z

.field private progressInterval:J

.field private reader:Ljava/io/BufferedReader;

.field private textFileMode:Z

.field private totalLoadBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/util/DbLoad;

    .line 98
    invoke-static {v1}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n       -h <dir>             # environment home directory\n       [-f <fileName>]      # input file\n       [-n]                 # no overwrite mode\n       [-T]                 # input file is in text mode\n       [-I]                 # ignore unknown parameters\n       [-c name=value]      # config values\n       [-s <databaseName> ] # database to load\n       [-v]                 # show progress\n       [-V]                 # print JE version number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/util/DbLoad;->usageString:Ljava/lang/String;

    .line 600
    const/16 v0, 0x5c

    sput-byte v0, Lcom/sleepycat/je/util/DbLoad;->backSlashValue:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    return-void
.end method

.method private loadConfigLine(Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    .line 444
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 445
    .local v0, "equalsIdx":I
    if-ltz v0, :cond_f

    .line 450
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "keyword":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, "value":Ljava/lang/String;
    const-string v4, "version"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 457
    const-string v1, "3"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 458
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 461
    :cond_1
    const-string v4, "format"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 462
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 463
    const-string v4, "print"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 464
    iput-boolean v5, p0, Lcom/sleepycat/je/util/DbLoad;->formatUsingPrintable:Z

    goto/16 :goto_2

    .line 465
    :cond_2
    const-string v4, "bytevalue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 466
    iput-boolean v1, p0, Lcom/sleepycat/je/util/DbLoad;->formatUsingPrintable:Z

    goto/16 :goto_2

    .line 468
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is an unknown value for the format keyword"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    :cond_4
    const-string v4, "dupsort"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 475
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 476
    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 477
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 479
    :cond_5
    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 480
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_0

    .line 483
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is an unknown value for the dupsort keyword"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 481
    :cond_7
    :goto_0
    iput-boolean v1, p0, Lcom/sleepycat/je/util/DbLoad;->dupSort:Z

    goto :goto_2

    .line 478
    :cond_8
    :goto_1
    iput-boolean v5, p0, Lcom/sleepycat/je/util/DbLoad;->dupSort:Z

    goto :goto_2

    .line 489
    :cond_9
    const-string v1, "type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 490
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 491
    const-string v1, "btree"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2

    .line 492
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a supported database type."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    :cond_b
    const-string v1, "database"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 499
    iget-object v1, p0, Lcom/sleepycat/je/util/DbLoad;->dbName:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 500
    iput-object v3, p0, Lcom/sleepycat/je/util/DbLoad;->dbName:Ljava/lang/String;

    goto :goto_2

    .line 505
    :cond_c
    iget-boolean v1, p0, Lcom/sleepycat/je/util/DbLoad;->ignoreUnknownConfig:Z

    if-eqz v1, :cond_e

    .line 509
    :cond_d
    :goto_2
    return-void

    .line 506
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is not understood."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid header parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadData(Lcom/sleepycat/je/Database;)V
    .locals 22
    .param p1, "db"    # Lcom/sleepycat/je/Database;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/sleepycat/je/util/DbLoad;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 529
    .local v2, "keyLine":Ljava/lang/String;
    const/4 v3, 0x0

    .line 530
    .local v3, "dataLine":Ljava/lang/String;
    const/4 v4, 0x0

    .line 531
    .local v4, "count":I
    const-wide/16 v5, 0x0

    .line 532
    .local v5, "totalBytesRead":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 533
    .local v7, "lastTime":J
    const-wide/16 v9, 0x0

    .line 535
    .local v9, "bytesReadThisInterval":J
    :goto_0
    if-eqz v2, :cond_6

    .line 536
    const-string v11, "DATA=END"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 537
    iget-object v11, v0, Lcom/sleepycat/je/util/DbLoad;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 538
    if-eqz v3, :cond_5

    .line 543
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    int-to-long v11, v11

    add-long/2addr v9, v11

    .line 544
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/sleepycat/je/util/DbLoad;->loadLine(Ljava/lang/String;)[B

    move-result-object v11

    .line 545
    .local v11, "keyBytes":[B
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/sleepycat/je/util/DbLoad;->loadLine(Ljava/lang/String;)[B

    move-result-object v12

    .line 547
    .local v12, "dataBytes":[B
    new-instance v13, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v13, v11}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 548
    .local v13, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v14, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v14, v12}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 550
    .local v14, "data":Lcom/sleepycat/je/DatabaseEntry;
    iget-boolean v15, v0, Lcom/sleepycat/je/util/DbLoad;->noOverwrite:Z

    move-object/from16 v16, v3

    .end local v3    # "dataLine":Ljava/lang/String;
    .local v16, "dataLine":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v15, :cond_2

    .line 551
    invoke-virtual {v1, v3, v13, v14}, Lcom/sleepycat/je/Database;->putNoOverwrite(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    sget-object v15, Lcom/sleepycat/je/OperationStatus;->KEYEXIST:Lcom/sleepycat/je/OperationStatus;

    if-ne v3, v15, :cond_1

    .line 554
    iget-boolean v3, v0, Lcom/sleepycat/je/util/DbLoad;->commandLine:Z

    if-eqz v3, :cond_0

    .line 555
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v11

    .end local v11    # "keyBytes":[B
    .local v17, "keyBytes":[B
    const-string v11, "Key exists: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 554
    .end local v17    # "keyBytes":[B
    .restart local v11    # "keyBytes":[B
    :cond_0
    move-object/from16 v17, v11

    .end local v11    # "keyBytes":[B
    .restart local v17    # "keyBytes":[B
    goto :goto_1

    .line 551
    .end local v17    # "keyBytes":[B
    .restart local v11    # "keyBytes":[B
    :cond_1
    move-object/from16 v17, v11

    .end local v11    # "keyBytes":[B
    .restart local v17    # "keyBytes":[B
    goto :goto_1

    .line 559
    .end local v17    # "keyBytes":[B
    .restart local v11    # "keyBytes":[B
    :cond_2
    move-object/from16 v17, v11

    .end local v11    # "keyBytes":[B
    .restart local v17    # "keyBytes":[B
    invoke-virtual {v1, v3, v13, v14}, Lcom/sleepycat/je/Database;->put(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    .line 562
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 563
    move-object v3, v12

    .end local v12    # "dataBytes":[B
    .local v3, "dataBytes":[B
    iget-wide v11, v0, Lcom/sleepycat/je/util/DbLoad;->progressInterval:J

    const-wide/16 v18, 0x0

    cmp-long v15, v11, v18

    if-lez v15, :cond_3

    cmp-long v15, v9, v11

    if-lez v15, :cond_3

    .line 565
    add-long/2addr v5, v9

    .line 566
    sub-long/2addr v9, v11

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 568
    .local v11, "now":J
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    .end local v3    # "dataBytes":[B
    .local v18, "dataBytes":[B
    const-string v3, "loaded "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " records  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v19, v4

    .end local v4    # "count":I
    .local v19, "count":I
    sub-long v3, v11, v7

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ms - % completed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v3, 0x64

    mul-long/2addr v3, v5

    move-wide/from16 v20, v5

    .end local v5    # "totalBytesRead":J
    .local v20, "totalBytesRead":J
    iget-wide v5, v0, Lcom/sleepycat/je/util/DbLoad;->totalLoadBytes:J

    div-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 571
    move-wide v3, v11

    move-wide v7, v3

    move-wide/from16 v5, v20

    .end local v7    # "lastTime":J
    .local v3, "lastTime":J
    goto :goto_2

    .line 563
    .end local v11    # "now":J
    .end local v18    # "dataBytes":[B
    .end local v19    # "count":I
    .end local v20    # "totalBytesRead":J
    .local v3, "dataBytes":[B
    .restart local v4    # "count":I
    .restart local v5    # "totalBytesRead":J
    .restart local v7    # "lastTime":J
    :cond_3
    move-object/from16 v18, v3

    move/from16 v19, v4

    .line 574
    .end local v3    # "dataBytes":[B
    .end local v4    # "count":I
    .restart local v18    # "dataBytes":[B
    .restart local v19    # "count":I
    :goto_2
    iget-object v1, v0, Lcom/sleepycat/je/util/DbLoad;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 575
    if-eqz v2, :cond_4

    .line 578
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v3, v1

    add-long/2addr v9, v3

    .line 579
    .end local v13    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v14    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v17    # "keyBytes":[B
    .end local v18    # "dataBytes":[B
    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move/from16 v4, v19

    goto/16 :goto_0

    .line 576
    .restart local v13    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v14    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v17    # "keyBytes":[B
    .restart local v18    # "dataBytes":[B
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "No \"DATA=END\""

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    .end local v13    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v14    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v16    # "dataLine":Ljava/lang/String;
    .end local v17    # "keyBytes":[B
    .end local v18    # "dataBytes":[B
    .end local v19    # "count":I
    .local v3, "dataLine":Ljava/lang/String;
    .restart local v4    # "count":I
    :cond_5
    move-object/from16 v16, v3

    .end local v3    # "dataLine":Ljava/lang/String;
    .restart local v16    # "dataLine":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No data to match key "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 580
    .end local v16    # "dataLine":Ljava/lang/String;
    .restart local v3    # "dataLine":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private loadHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/sleepycat/je/util/DbLoad;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 519
    const-string v1, "HEADER=END"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    invoke-direct {p0, v0}, Lcom/sleepycat/je/util/DbLoad;->loadConfigLine(Ljava/lang/String;)V

    .line 521
    iget-object v1, p0, Lcom/sleepycat/je/util/DbLoad;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 523
    :cond_0
    return-void
.end method

.method private loadLine(Ljava/lang/String;)[B
    .locals 7
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 585
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbLoad;->formatUsingPrintable:Z

    if-eqz v0, :cond_0

    .line 586
    invoke-direct {p0, p1}, Lcom/sleepycat/je/util/DbLoad;->readPrintableLine(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 588
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 589
    .local v0, "nBytes":I
    new-array v1, v0, [B

    .line 590
    .local v1, "ret":[B
    const/4 v2, 0x0

    .line 591
    .local v2, "charIdx":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 592
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 593
    .local v4, "b2":I
    shl-int/lit8 v4, v4, 0x4

    .line 594
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    .line 595
    int-to-byte v5, v4

    aput-byte v5, v1, v3

    .line 591
    .end local v4    # "b2":I
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 597
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    invoke-static {p0}, Lcom/sleepycat/je/util/DbLoad;->parseArgs([Ljava/lang/String;)Lcom/sleepycat/je/util/DbLoad;

    move-result-object v0

    .line 182
    .local v0, "loader":Lcom/sleepycat/je/util/DbLoad;
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbLoad;->load()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    goto :goto_0

    .line 183
    :catchall_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, v0, Lcom/sleepycat/je/util/DbLoad;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1}, Lcom/sleepycat/je/Environment;->close()V

    .line 188
    return-void
.end method

.method private static parseArgs([Ljava/lang/String;)Lcom/sleepycat/je/util/DbLoad;
    .locals 19
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 200
    .local v0, "noOverwrite":Z
    const/4 v2, 0x0

    .line 201
    .local v2, "textFileMode":Z
    const/4 v3, 0x0

    .line 202
    .local v3, "ignoreUnknownConfig":Z
    const/4 v4, 0x0

    .line 204
    .local v4, "showProgressInterval":Z
    const/4 v5, 0x0

    .line 205
    .local v5, "argc":I
    array-length v6, v1

    .line 206
    .local v6, "nArgs":I
    const/4 v7, 0x0

    .line 207
    .local v7, "inputFileName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 208
    .local v8, "envHome":Ljava/io/File;
    const/4 v9, 0x0

    .line 209
    .local v9, "dbName":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 210
    .local v10, "progressInterval":J
    new-instance v12, Lcom/sleepycat/je/util/DbLoad;

    invoke-direct {v12}, Lcom/sleepycat/je/util/DbLoad;-><init>()V

    .line 211
    .local v12, "ret":Lcom/sleepycat/je/util/DbLoad;
    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/sleepycat/je/util/DbLoad;->setCommandLine(Z)V

    move/from16 v18, v2

    move v2, v0

    move v0, v5

    move v5, v4

    move v4, v3

    move/from16 v3, v18

    .line 213
    .local v0, "argc":I
    .local v2, "noOverwrite":Z
    .local v3, "textFileMode":Z
    .local v4, "ignoreUnknownConfig":Z
    .local v5, "showProgressInterval":Z
    :goto_0
    if-ge v0, v6, :cond_d

    .line 214
    add-int/lit8 v14, v0, 0x1

    .end local v0    # "argc":I
    .local v14, "argc":I
    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 215
    .local v15, "thisArg":Ljava/lang/String;
    const-string v0, "-n"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x1

    move v2, v0

    move v0, v14

    .end local v2    # "noOverwrite":Z
    .local v0, "noOverwrite":Z
    goto/16 :goto_3

    .line 217
    .end local v0    # "noOverwrite":Z
    .restart local v2    # "noOverwrite":Z
    :cond_0
    const-string v0, "-T"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    const/4 v0, 0x1

    move v3, v0

    move v0, v14

    .end local v3    # "textFileMode":Z
    .local v0, "textFileMode":Z
    goto/16 :goto_3

    .line 219
    .end local v0    # "textFileMode":Z
    .restart local v3    # "textFileMode":Z
    :cond_1
    const-string v0, "-I"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    const/4 v0, 0x1

    move v4, v0

    move v0, v14

    .end local v4    # "ignoreUnknownConfig":Z
    .local v0, "ignoreUnknownConfig":Z
    goto/16 :goto_3

    .line 221
    .end local v0    # "ignoreUnknownConfig":Z
    .restart local v4    # "ignoreUnknownConfig":Z
    :cond_2
    const-string v0, "-V"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v13, Lcom/sleepycat/je/JEVersion;->CURRENT_VERSION:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 223
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_2

    .line 224
    :cond_3
    const-string v0, "-f"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 225
    if-ge v14, v6, :cond_4

    .line 226
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "argc":I
    .local v0, "argc":I
    aget-object v7, v1, v14

    goto/16 :goto_3

    .line 228
    .end local v0    # "argc":I
    .restart local v14    # "argc":I
    :cond_4
    const-string v0, "-f requires an argument"

    invoke-static {v0}, Lcom/sleepycat/je/util/DbLoad;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 230
    :cond_5
    const-string v0, "-h"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 231
    if-ge v14, v6, :cond_6

    .line 232
    new-instance v0, Ljava/io/File;

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "argc":I
    .local v13, "argc":I
    aget-object v14, v1, v14

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    move v0, v13

    .end local v8    # "envHome":Ljava/io/File;
    .local v0, "envHome":Ljava/io/File;
    goto :goto_3

    .line 234
    .end local v0    # "envHome":Ljava/io/File;
    .end local v13    # "argc":I
    .restart local v8    # "envHome":Ljava/io/File;
    .restart local v14    # "argc":I
    :cond_6
    const-string v0, "-h requires an argument"

    invoke-static {v0}, Lcom/sleepycat/je/util/DbLoad;->printUsage(Ljava/lang/String;)V

    goto :goto_2

    .line 236
    :cond_7
    const-string v0, "-s"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 237
    if-ge v14, v6, :cond_8

    .line 238
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "argc":I
    .local v0, "argc":I
    aget-object v9, v1, v14

    goto :goto_3

    .line 240
    .end local v0    # "argc":I
    .restart local v14    # "argc":I
    :cond_8
    const-string v0, "-s requires an argument"

    invoke-static {v0}, Lcom/sleepycat/je/util/DbLoad;->printUsage(Ljava/lang/String;)V

    goto :goto_2

    .line 242
    :cond_9
    const-string v0, "-c"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 243
    if-ge v14, v6, :cond_a

    .line 245
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "argc":I
    .restart local v13    # "argc":I
    :try_start_0
    aget-object v0, v1, v14

    invoke-direct {v12, v0}, Lcom/sleepycat/je/util/DbLoad;->loadConfigLine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-c: "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/util/DbLoad;->printUsage(Ljava/lang/String;)V

    .line 248
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    nop

    .line 255
    .end local v15    # "thisArg":Ljava/lang/String;
    move v0, v13

    goto :goto_3

    .line 250
    .end local v13    # "argc":I
    .restart local v14    # "argc":I
    .restart local v15    # "thisArg":Ljava/lang/String;
    :cond_a
    const-string v0, "-c requires an argument"

    invoke-static {v0}, Lcom/sleepycat/je/util/DbLoad;->printUsage(Ljava/lang/String;)V

    goto :goto_2

    .line 252
    :cond_b
    const-string v0, "-v"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 253
    const/4 v0, 0x1

    move v5, v0

    move v0, v14

    .end local v5    # "showProgressInterval":Z
    .local v0, "showProgressInterval":Z
    goto :goto_3

    .line 255
    .end local v0    # "showProgressInterval":Z
    .end local v15    # "thisArg":Ljava/lang/String;
    .restart local v5    # "showProgressInterval":Z
    :cond_c
    :goto_2
    move v0, v14

    .end local v14    # "argc":I
    .local v0, "argc":I
    :goto_3
    const/4 v13, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 257
    :cond_d
    if-nez v8, :cond_e

    .line 258
    const-string v1, "-h is a required argument"

    invoke-static {v1}, Lcom/sleepycat/je/util/DbLoad;->printUsage(Ljava/lang/String;)V

    .line 261
    :cond_e
    const-wide/16 v13, 0x0

    .line 263
    .local v13, "totalLoadBytes":J
    if-nez v7, :cond_f

    .line 264
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 265
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v5, :cond_10

    .line 271
    const-string v15, "-v requires -f"

    invoke-static {v15}, Lcom/sleepycat/je/util/DbLoad;->printUsage(Ljava/lang/String;)V

    goto :goto_4

    .line 274
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 275
    .restart local v1    # "is":Ljava/io/InputStream;
    if-eqz v5, :cond_10

    .line 276
    move-object v15, v1

    check-cast v15, Ljava/io/FileInputStream;

    invoke-virtual {v15}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v13

    .line 278
    const-wide/16 v16, 0x14

    div-long v10, v13, v16

    .line 281
    :cond_10
    :goto_4
    new-instance v15, Ljava/io/BufferedReader;

    move/from16 v16, v0

    .end local v0    # "argc":I
    .local v16, "argc":I
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v15

    .line 283
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v15, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v15}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 284
    .local v15, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    move-object/from16 v17, v1

    const/4 v1, 0x1

    .end local v1    # "is":Ljava/io/InputStream;
    .local v17, "is":Ljava/io/InputStream;
    invoke-virtual {v15, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setAllowCreate(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 285
    new-instance v1, Lcom/sleepycat/je/Environment;

    invoke-direct {v1, v8, v15}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;)V

    .line 286
    .local v1, "env":Lcom/sleepycat/je/Environment;
    invoke-virtual {v12, v1}, Lcom/sleepycat/je/util/DbLoad;->setEnv(Lcom/sleepycat/je/Environment;)V

    .line 287
    invoke-virtual {v12, v9}, Lcom/sleepycat/je/util/DbLoad;->setDbName(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v12, v0}, Lcom/sleepycat/je/util/DbLoad;->setInputReader(Ljava/io/BufferedReader;)V

    .line 289
    invoke-virtual {v12, v2}, Lcom/sleepycat/je/util/DbLoad;->setNoOverwrite(Z)V

    .line 290
    invoke-virtual {v12, v3}, Lcom/sleepycat/je/util/DbLoad;->setTextFileMode(Z)V

    .line 291
    invoke-virtual {v12, v4}, Lcom/sleepycat/je/util/DbLoad;->setIgnoreUnknownConfig(Z)V

    .line 292
    invoke-virtual {v12, v10, v11}, Lcom/sleepycat/je/util/DbLoad;->setProgressInterval(J)V

    .line 293
    invoke-virtual {v12, v13, v14}, Lcom/sleepycat/je/util/DbLoad;->setTotalLoadBytes(J)V

    .line 294
    return-object v12
.end method

.method private static printUsage(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 191
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v1, Lcom/sleepycat/je/util/DbLoad;->usageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 194
    return-void
.end method

.method private readPrintableLine(Ljava/lang/String;)[B
    .locals 10
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 607
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 608
    .local v0, "maxNBytes":I
    new-array v1, v0, [B

    .line 609
    .local v1, "ba":[B
    const/4 v2, 0x0

    .line 611
    .local v2, "actualNBytes":I
    const/4 v3, 0x0

    .local v3, "charIdx":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 612
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 613
    .local v4, "c":C
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_3

    .line 614
    add-int/lit8 v3, v3, 0x1

    const-string v6, "Corrupted file"

    if-ge v3, v0, :cond_2

    .line 615
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 616
    .local v7, "c1":C
    if-ne v7, v5, :cond_0

    .line 617
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "actualNBytes":I
    .local v5, "actualNBytes":I
    sget-byte v6, Lcom/sleepycat/je/util/DbLoad;->backSlashValue:B

    aput-byte v6, v1, v2

    goto :goto_1

    .line 619
    .end local v5    # "actualNBytes":I
    .restart local v2    # "actualNBytes":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v0, :cond_1

    .line 620
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 621
    .local v5, "c2":C
    const/16 v6, 0x10

    invoke-static {v7, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    .line 622
    .local v8, "b":I
    shl-int/lit8 v8, v8, 0x4

    .line 623
    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/2addr v8, v6

    .line 624
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "actualNBytes":I
    .local v6, "actualNBytes":I
    int-to-byte v9, v8

    aput-byte v9, v1, v2

    .line 625
    .end local v5    # "c2":C
    .end local v8    # "b":I
    move v5, v6

    .line 630
    .end local v6    # "actualNBytes":I
    .end local v7    # "c1":C
    .local v5, "actualNBytes":I
    :goto_1
    move v2, v5

    goto :goto_2

    .line 626
    .end local v5    # "actualNBytes":I
    .restart local v2    # "actualNBytes":I
    .restart local v7    # "c1":C
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 631
    .end local v7    # "c1":C
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 634
    :cond_3
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "actualNBytes":I
    .restart local v5    # "actualNBytes":I
    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    move v2, v5

    .line 611
    .end local v4    # "c":C
    .end local v5    # "actualNBytes":I
    .restart local v2    # "actualNBytes":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 638
    .end local v3    # "charIdx":I
    :cond_4
    if-ne v0, v2, :cond_5

    .line 639
    return-object v1

    .line 641
    :cond_5
    new-array v3, v2, [B

    .line 642
    .local v3, "ret":[B
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 643
    return-object v3
.end method

.method private setCommandLine(Z)V
    .locals 0
    .param p1, "commandLine"    # Z

    .line 313
    iput-boolean p1, p0, Lcom/sleepycat/je/util/DbLoad;->commandLine:Z

    .line 314
    return-void
.end method


# virtual methods
.method public load()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 397
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v1, p0, Lcom/sleepycat/je/util/DbLoad;->env:Lcom/sleepycat/je/Environment;

    invoke-static {v1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DbLoad.load of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sleepycat/je/util/DbLoad;->dbName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " starting"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 400
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbLoad;->progressInterval:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 401
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 404
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbLoad;->textFileMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 405
    iput-boolean v1, p0, Lcom/sleepycat/je/util/DbLoad;->formatUsingPrintable:Z

    goto :goto_0

    .line 407
    :cond_1
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbLoad;->loadHeader()V

    .line 410
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/util/DbLoad;->dbName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 415
    new-instance v0, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 416
    .local v0, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    iget-boolean v2, p0, Lcom/sleepycat/je/util/DbLoad;->dupSort:Z

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/DatabaseConfig;->setSortedDuplicates(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 417
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 420
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/util/DbLoad;->env:Lcom/sleepycat/je/Environment;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sleepycat/je/util/DbLoad;->dbName:Ljava/lang/String;

    invoke-virtual {v2, v6, v7, v0}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v2
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseExistsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .local v2, "db":Lcom/sleepycat/je/Database;
    nop

    .line 429
    invoke-direct {p0, v2}, Lcom/sleepycat/je/util/DbLoad;->loadData(Lcom/sleepycat/je/Database;)V

    .line 431
    invoke-virtual {v2}, Lcom/sleepycat/je/Database;->close()V

    .line 433
    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v7, p0, Lcom/sleepycat/je/util/DbLoad;->env:Lcom/sleepycat/je/Environment;

    invoke-static {v7}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/sleepycat/je/util/DbLoad;->dbName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " ending."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 436
    iget-wide v6, p0, Lcom/sleepycat/je/util/DbLoad;->progressInterval:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_2

    .line 437
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 440
    :cond_2
    return v1

    .line 424
    .end local v2    # "db":Lcom/sleepycat/je/Database;
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Lcom/sleepycat/je/DatabaseExistsException;
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 421
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseExistsException;
    :catch_1
    move-exception v1

    .line 423
    .local v1, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 411
    .end local v0    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a database name if -l not supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDbName(Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;

    .line 331
    iput-object p1, p0, Lcom/sleepycat/je/util/DbLoad;->dbName:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setEnv(Lcom/sleepycat/je/Environment;)V
    .locals 0
    .param p1, "env"    # Lcom/sleepycat/je/Environment;

    .line 322
    iput-object p1, p0, Lcom/sleepycat/je/util/DbLoad;->env:Lcom/sleepycat/je/Environment;

    .line 323
    return-void
.end method

.method public setIgnoreUnknownConfig(Z)V
    .locals 0
    .param p1, "ignoreUnknownConfigMode"    # Z

    .line 370
    iput-boolean p1, p0, Lcom/sleepycat/je/util/DbLoad;->ignoreUnknownConfig:Z

    .line 371
    return-void
.end method

.method public setInputReader(Ljava/io/BufferedReader;)V
    .locals 0
    .param p1, "reader"    # Ljava/io/BufferedReader;

    .line 340
    iput-object p1, p0, Lcom/sleepycat/je/util/DbLoad;->reader:Ljava/io/BufferedReader;

    .line 341
    return-void
.end method

.method public setNoOverwrite(Z)V
    .locals 0
    .param p1, "noOverwrite"    # Z

    .line 349
    iput-boolean p1, p0, Lcom/sleepycat/je/util/DbLoad;->noOverwrite:Z

    .line 350
    return-void
.end method

.method public setProgressInterval(J)V
    .locals 0
    .param p1, "progressInterval"    # J

    .line 381
    iput-wide p1, p0, Lcom/sleepycat/je/util/DbLoad;->progressInterval:J

    .line 382
    return-void
.end method

.method public setTextFileMode(Z)V
    .locals 0
    .param p1, "textFileMode"    # Z

    .line 358
    iput-boolean p1, p0, Lcom/sleepycat/je/util/DbLoad;->textFileMode:Z

    .line 359
    return-void
.end method

.method public setTotalLoadBytes(J)V
    .locals 0
    .param p1, "totalLoadBytes"    # J

    .line 391
    iput-wide p1, p0, Lcom/sleepycat/je/util/DbLoad;->totalLoadBytes:J

    .line 392
    return-void
.end method
