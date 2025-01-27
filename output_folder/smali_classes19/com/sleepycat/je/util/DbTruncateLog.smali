.class public Lcom/sleepycat/je/util/DbTruncateLog;
.super Ljava/lang/Object;
.source "DbTruncateLog.java"


# instance fields
.field private envHome:Ljava/io/File;

.field private truncateFileNum:J

.field private truncateOffset:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbTruncateLog;->truncateFileNum:J

    .line 55
    iput-wide v0, p0, Lcom/sleepycat/je/util/DbTruncateLog;->truncateOffset:J

    .line 83
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "argv"    # [Ljava/lang/String;

    .line 72
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/util/DbTruncateLog;

    invoke-direct {v0}, Lcom/sleepycat/je/util/DbTruncateLog;-><init>()V

    .line 73
    .local v0, "truncator":Lcom/sleepycat/je/util/DbTruncateLog;
    invoke-direct {v0, p0}, Lcom/sleepycat/je/util/DbTruncateLog;->parseArgs([Ljava/lang/String;)V

    .line 74
    invoke-direct {v0}, Lcom/sleepycat/je/util/DbTruncateLog;->truncateLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0    # "truncator":Lcom/sleepycat/je/util/DbTruncateLog;
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    invoke-static {}, Lcom/sleepycat/je/util/DbTruncateLog;->usage()V

    .line 78
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 7
    .param p1, "argv"    # [Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "whichArg":I
    const/4 v1, 0x0

    .line 88
    .local v1, "seenFile":Z
    const/4 v2, 0x0

    .line 90
    .local v2, "seenOffset":Z
    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v0, v3, :cond_3

    .line 91
    aget-object v3, p1, v0

    .line 93
    .local v3, "nextArg":Ljava/lang/String;
    const-string v5, "-h"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    add-int/lit8 v0, v0, 0x1

    .line 95
    new-instance v5, Ljava/io/File;

    invoke-static {p1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/sleepycat/je/util/DbTruncateLog;->envHome:Ljava/io/File;

    goto :goto_1

    .line 96
    :cond_0
    const-string v5, "-f"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    add-int/lit8 v0, v0, 0x1

    .line 98
    nop

    .line 99
    invoke-static {p1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sleepycat/je/utilint/CmdUtil;->readLongNumber(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sleepycat/je/util/DbTruncateLog;->truncateFileNum:J

    .line 100
    const/4 v1, 0x1

    goto :goto_1

    .line 101
    :cond_1
    const-string v5, "-o"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 103
    nop

    .line 104
    invoke-static {p1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sleepycat/je/utilint/CmdUtil;->readLongNumber(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sleepycat/je/util/DbTruncateLog;->truncateOffset:J

    .line 105
    const/4 v2, 0x1

    .line 110
    :goto_1
    nop

    .end local v3    # "nextArg":Ljava/lang/String;
    add-int/2addr v0, v4

    .line 111
    goto :goto_0

    .line 107
    .restart local v3    # "nextArg":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a supported option."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 113
    .end local v3    # "nextArg":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/sleepycat/je/util/DbTruncateLog;->envHome:Ljava/io/File;

    if-nez v3, :cond_4

    .line 114
    invoke-static {}, Lcom/sleepycat/je/util/DbTruncateLog;->usage()V

    .line 115
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 118
    :cond_4
    if-eqz v1, :cond_5

    if-nez v2, :cond_6

    .line 119
    :cond_5
    invoke-static {}, Lcom/sleepycat/je/util/DbTruncateLog;->usage()V

    .line 120
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 122
    :cond_6
    return-void
.end method

.method private truncateLog()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v1, p0, Lcom/sleepycat/je/util/DbTruncateLog;->envHome:Ljava/io/File;

    iget-wide v2, p0, Lcom/sleepycat/je/util/DbTruncateLog;->truncateFileNum:J

    iget-wide v4, p0, Lcom/sleepycat/je/util/DbTruncateLog;->truncateOffset:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/util/DbTruncateLog;->truncateLog(Ljava/io/File;JJ)V

    .line 128
    return-void
.end method

.method private static usage()V
    .locals 3

    .line 150
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sleepycat/je/util/DbTruncateLog;

    .line 151
    invoke-static {v2}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                 -h <environment home>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                 -f <file number, in hex>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                 -o <offset, in hex>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "JE log will be deleted starting from the position presented by the file number and offset to the end, inclusive."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    return-void
.end method


# virtual methods
.method public truncateLog(Ljava/io/File;JJ)V
    .locals 2
    .param p1, "env"    # Ljava/io/File;
    .param p2, "truncFileNum"    # J
    .param p4, "truncOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    nop

    .line 141
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->makeUtilityEnvironment(Ljava/io/File;Z)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 144
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/sleepycat/je/log/FileManager;->truncateLog(JJ)V

    .line 146
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->close()V

    .line 147
    return-void
.end method
