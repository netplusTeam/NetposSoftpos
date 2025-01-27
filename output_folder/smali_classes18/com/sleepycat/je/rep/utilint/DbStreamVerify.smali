.class public Lcom/sleepycat/je/rep/utilint/DbStreamVerify;
.super Ljava/lang/Object;
.source "DbStreamVerify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/utilint/DbStreamVerify$RepGroupReader;,
        Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VLSNIndexReader;,
        Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;,
        Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;
    }
.end annotation


# static fields
.field private static final USAGE:Ljava/lang/String;


# instance fields
.field private endLsn:J

.field private envHome:Ljava/io/File;

.field private final out:Ljava/io/PrintStream;

.field private repGroupDump:Z

.field private showInvisible:Z

.field private startLsn:J

.field private verbose:Z

.field private verifyStream:Z

.field private vlsnDump:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;

    .line 57
    invoke-static {v1}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n -h <dir>      # environment home directory\n -s <hex>      # start file\n -e <hex>      # end file\n -verifyStream # check that replication stream is ascending\n -dumpVLSN     # scan log file for log entries that make up the VLSN index, don\'t run verify.\n -dumpRepGroup # scan log file for log entries that make up the rep group db, don\'t run verify.\n -i            # show invisible. If true, print invisible entries when running verify mode.\n -v            # verbose\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->USAGE:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->envHome:Ljava/io/File;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->showInvisible:Z

    .line 87
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->verbose:Z

    .line 88
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->vlsnDump:Z

    .line 89
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->repGroupDump:Z

    .line 90
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->verifyStream:Z

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->startLsn:J

    .line 92
    iput-wide v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->endLsn:J

    .line 97
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->out:Ljava/io/PrintStream;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/utilint/DbStreamVerify;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/utilint/DbStreamVerify;

    .line 54
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->showInvisible:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/utilint/DbStreamVerify;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/utilint/DbStreamVerify;

    .line 54
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->verbose:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/utilint/DbStreamVerify;)Ljava/io/PrintStream;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/utilint/DbStreamVerify;

    .line 54
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;-><init>(Ljava/io/PrintStream;)V

    .line 74
    .local v0, "verify":Lcom/sleepycat/je/rep/utilint/DbStreamVerify;
    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->parseArgs([Ljava/lang/String;)V

    .line 77
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->run()V

    .line 78
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 81
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 83
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 6
    .param p1, "argv"    # [Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "argc":I
    array-length v1, p1

    .line 113
    .local v1, "nArgs":I
    if-nez v1, :cond_0

    .line 114
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->printUsage(Ljava/lang/String;)V

    .line 115
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 118
    :cond_0
    :goto_0
    if-ge v0, v1, :cond_a

    .line 119
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "argc":I
    .local v2, "argc":I
    aget-object v0, p1, v0

    .line 120
    .local v0, "thisArg":Ljava/lang/String;
    const-string v3, "-i"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 121
    iput-boolean v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->showInvisible:Z

    goto/16 :goto_1

    .line 122
    :cond_1
    const-string v3, "-v"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    iput-boolean v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->verbose:Z

    goto/16 :goto_1

    .line 124
    :cond_2
    const-string v3, "-verifyStream"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 125
    iput-boolean v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->verifyStream:Z

    goto/16 :goto_1

    .line 126
    :cond_3
    const-string v3, "-dumpVLSN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 127
    iput-boolean v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->vlsnDump:Z

    goto/16 :goto_1

    .line 128
    :cond_4
    const-string v3, "-dumpRepGroup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 129
    iput-boolean v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->repGroupDump:Z

    goto :goto_1

    .line 130
    :cond_5
    const-string v3, "-s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 131
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .local v3, "argc":I
    invoke-static {p1, v2}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/utilint/CmdUtil;->readLsn(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->startLsn:J

    move v0, v3

    goto :goto_2

    .line 132
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_6
    const-string v3, "-e"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 133
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argc":I
    .restart local v3    # "argc":I
    invoke-static {p1, v2}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/utilint/CmdUtil;->readLsn(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->endLsn:J

    move v0, v3

    goto :goto_2

    .line 134
    .end local v3    # "argc":I
    .restart local v2    # "argc":I
    :cond_7
    const-string v3, "-h"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 135
    if-ge v2, v1, :cond_8

    .line 136
    new-instance v3, Ljava/io/File;

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "argc":I
    .local v4, "argc":I
    aget-object v2, p1, v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->envHome:Ljava/io/File;

    move v0, v4

    goto :goto_2

    .line 138
    .end local v4    # "argc":I
    .restart local v2    # "argc":I
    :cond_8
    const-string v3, "-h requires an argument"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid argument"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->printUsage(Ljava/lang/String;)V

    .line 143
    .end local v0    # "thisArg":Ljava/lang/String;
    :goto_1
    move v0, v2

    .end local v2    # "argc":I
    .local v0, "argc":I
    :goto_2
    goto/16 :goto_0

    .line 145
    :cond_a
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->envHome:Ljava/io/File;

    if-nez v2, :cond_b

    .line 146
    const-string v2, "-h is a required argument"

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->printUsage(Ljava/lang/String;)V

    .line 149
    :cond_b
    iget-boolean v2, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->vlsnDump:Z

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->repGroupDump:Z

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->verifyStream:Z

    if-nez v2, :cond_c

    .line 150
    const-string v2, "Must specify -dumpVLSN, -dumpRepGroup or -verifyStream"

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->printUsage(Ljava/lang/String;)V

    .line 153
    :cond_c
    return-void
.end method

.method private printUsage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->out:Ljava/io/PrintStream;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->USAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 106
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 156
    new-instance v0, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 157
    .local v0, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setReadOnly(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 158
    new-instance v2, Lcom/sleepycat/je/Environment;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->envHome:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;)V

    .line 159
    .local v2, "env":Lcom/sleepycat/je/Environment;
    invoke-static {v2}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v12

    .line 163
    .local v12, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_start_0
    iget-boolean v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->vlsnDump:Z

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->out:Ljava/io/PrintStream;

    const-string v4, "Dump VLSNIndex LNs"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    new-instance v3, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VLSNIndexReader;

    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->out:Ljava/io/PrintStream;

    iget-wide v8, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->startLsn:J

    iget-wide v10, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->endLsn:J

    move-object v4, v3

    move-object v5, p0

    move-object v6, v2

    invoke-direct/range {v4 .. v11}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VLSNIndexReader;-><init>(Lcom/sleepycat/je/rep/utilint/DbStreamVerify;Lcom/sleepycat/je/Environment;Ljava/io/PrintStream;JJ)V

    .local v3, "reader":Lcom/sleepycat/je/log/FileReader;
    goto :goto_0

    .line 166
    .end local v3    # "reader":Lcom/sleepycat/je/log/FileReader;
    :cond_0
    iget-boolean v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->repGroupDump:Z

    if-eqz v3, :cond_1

    .line 167
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->out:Ljava/io/PrintStream;

    const-string v4, "Dump RepGroup LNs"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    new-instance v3, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$RepGroupReader;

    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->out:Ljava/io/PrintStream;

    iget-wide v8, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->startLsn:J

    iget-wide v10, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->endLsn:J

    move-object v4, v3

    move-object v5, p0

    move-object v6, v2

    invoke-direct/range {v4 .. v11}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$RepGroupReader;-><init>(Lcom/sleepycat/je/rep/utilint/DbStreamVerify;Lcom/sleepycat/je/Environment;Ljava/io/PrintStream;JJ)V

    .restart local v3    # "reader":Lcom/sleepycat/je/log/FileReader;
    goto :goto_0

    .line 169
    .end local v3    # "reader":Lcom/sleepycat/je/log/FileReader;
    :cond_1
    iget-boolean v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->verifyStream:Z

    if-eqz v3, :cond_4

    .line 170
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->out:Ljava/io/PrintStream;

    const-string v4, "Replication stream: check that vlsns ascend"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    new-instance v11, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->out:Ljava/io/PrintStream;

    iget-wide v7, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->startLsn:J

    iget-wide v9, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->endLsn:J

    move-object v3, v11

    move-object v4, p0

    move-object v5, v12

    invoke-direct/range {v3 .. v10}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;-><init>(Lcom/sleepycat/je/rep/utilint/DbStreamVerify;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/io/PrintStream;JJ)V

    move-object v3, v11

    .line 177
    .restart local v3    # "reader":Lcom/sleepycat/je/log/FileReader;
    :goto_0
    invoke-virtual {v3}, Lcom/sleepycat/je/log/FileReader;->readNextEntry()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 180
    :cond_2
    iget-boolean v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->vlsnDump:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->repGroupDump:Z

    if-nez v4, :cond_3

    .line 181
    move-object v4, v3

    check-cast v4, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->displayLast()V

    .line 182
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->out:Ljava/io/PrintStream;

    iget-boolean v5, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->verbose:Z

    invoke-static {v2, v4, v5}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->verifyDb(Lcom/sleepycat/je/Environment;Ljava/io/PrintStream;Z)V

    .line 185
    :cond_3
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    .end local v3    # "reader":Lcom/sleepycat/je/log/FileReader;
    :try_start_1
    invoke-virtual {v2}, Lcom/sleepycat/je/Environment;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_2

    .line 173
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->out:Ljava/io/PrintStream;

    const-string v4, "No action specified."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    :try_start_3
    invoke-virtual {v2}, Lcom/sleepycat/je/Environment;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    goto :goto_1

    .line 192
    :catchall_0
    move-exception v3

    .line 193
    .local v3, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 194
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 174
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 186
    :catchall_1
    move-exception v3

    .line 187
    .restart local v3    # "e":Ljava/lang/Throwable;
    :try_start_4
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 188
    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 191
    .end local v3    # "e":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v2}, Lcom/sleepycat/je/Environment;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 195
    :goto_2
    goto :goto_3

    .line 192
    :catchall_2
    move-exception v3

    .line 193
    .restart local v3    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 194
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 196
    .end local v3    # "e":Ljava/lang/Throwable;
    nop

    .line 197
    :goto_3
    return-void

    .line 190
    :catchall_3
    move-exception v3

    .line 191
    :try_start_6
    invoke-virtual {v2}, Lcom/sleepycat/je/Environment;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 195
    goto :goto_4

    .line 192
    :catchall_4
    move-exception v4

    .line 193
    .local v4, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 194
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 195
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_4
    throw v3
.end method
