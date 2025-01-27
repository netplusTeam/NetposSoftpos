.class public Lcom/sleepycat/je/util/DbSpace;
.super Ljava/lang/Object;
.source "DbSpace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/util/DbSpace$Summary;
    }
.end annotation


# static fields
.field private static final DATE_EXAMPLE:Ljava/lang/String; = "2016-03-17T22-0800"

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HHZ"

.field private static final USAGE:Ljava/lang/String;


# instance fields
.field private details:Z

.field private doRecalcExpired:Z

.field private doRecalcUtil:Z

.field private envHome:Ljava/io/File;

.field private envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private finishLsn:J

.field private quiet:Z

.field private sorted:Z

.field private startLsn:J

.field private targetTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/util/DbSpace;

    .line 69
    invoke-static {v1}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n       -h <dir> # environment home directory\n       [-q]     # quiet, print grand totals only\n       [-u]     # sort by average utilization\n       [-d]     # dump file summary details\n       [-r]     # recalculate utilization (expensive)\n       [-R]     # recalculate expired data (expensive)\n       [-s]     # start file number or LSN, in hex\n       [-e]     # end file number or LSN, in hex\n       [-t]     # time for calculating expired data,\n                #   format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "yyyy-MM-dd\'T\'HHZ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n                #  example: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2016-03-17T22-0800"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n       [-V]     # print JE version number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/util/DbSpace;->USAGE:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/util/DbSpace;->envHome:Ljava/io/File;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbSpace;->quiet:Z

    .line 113
    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbSpace;->sorted:Z

    .line 114
    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbSpace;->details:Z

    .line 115
    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbSpace;->doRecalcUtil:Z

    .line 116
    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbSpace;->doRecalcExpired:Z

    .line 117
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbSpace;->startLsn:J

    .line 118
    iput-wide v0, p0, Lcom/sleepycat/je/util/DbSpace;->finishLsn:J

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbSpace;->targetTime:J

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Environment;ZZZ)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "quiet"    # Z
    .param p3, "details"    # Z
    .param p4, "sorted"    # Z

    .line 132
    invoke-static {p1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/sleepycat/je/util/DbSpace;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;ZZZ)V

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;ZZZ)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "quiet"    # Z
    .param p3, "details"    # Z
    .param p4, "sorted"    # Z

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/util/DbSpace;->envHome:Ljava/io/File;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbSpace;->quiet:Z

    .line 113
    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbSpace;->sorted:Z

    .line 114
    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbSpace;->details:Z

    .line 115
    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbSpace;->doRecalcUtil:Z

    .line 116
    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbSpace;->doRecalcExpired:Z

    .line 117
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbSpace;->startLsn:J

    .line 118
    iput-wide v0, p0, Lcom/sleepycat/je/util/DbSpace;->finishLsn:J

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbSpace;->targetTime:J

    .line 143
    invoke-direct {p0, p1}, Lcom/sleepycat/je/util/DbSpace;->initEnv(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 144
    iput-boolean p2, p0, Lcom/sleepycat/je/util/DbSpace;->quiet:Z

    .line 145
    iput-boolean p3, p0, Lcom/sleepycat/je/util/DbSpace;->details:Z

    .line 146
    iput-boolean p4, p0, Lcom/sleepycat/je/util/DbSpace;->sorted:Z

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/util/DbSpace;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/util/DbSpace;

    .line 63
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbSpace;->doRecalcExpired:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/util/DbSpace;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/util/DbSpace;

    .line 63
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbSpace;->doRecalcUtil:Z

    return v0
.end method

.method private initEnv(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 0
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 150
    iput-object p1, p0, Lcom/sleepycat/je/util/DbSpace;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 151
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/sleepycat/je/util/DbSpace;

    invoke-direct {v0}, Lcom/sleepycat/je/util/DbSpace;-><init>()V

    .line 87
    .local v0, "space":Lcom/sleepycat/je/util/DbSpace;
    invoke-direct {v0, p0}, Lcom/sleepycat/je/util/DbSpace;->parseArgs([Ljava/lang/String;)V

    .line 89
    new-instance v1, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 90
    .local v1, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setReadOnly(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 91
    new-instance v3, Lcom/sleepycat/je/Environment;

    iget-object v4, v0, Lcom/sleepycat/je/util/DbSpace;->envHome:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;)V

    .line 92
    .local v3, "env":Lcom/sleepycat/je/Environment;
    invoke-static {v3}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sleepycat/je/util/DbSpace;->initEnv(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 95
    :try_start_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/util/DbSpace;->print(Ljava/io/PrintStream;)V

    .line 96
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    :try_start_1
    invoke-virtual {v3}, Lcom/sleepycat/je/Environment;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :goto_0
    goto :goto_1

    .line 103
    :catchall_0
    move-exception v4

    .line 104
    .local v4, "e":Ljava/lang/Throwable;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 105
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 107
    .end local v4    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 97
    :catchall_1
    move-exception v4

    .line 98
    .restart local v4    # "e":Ljava/lang/Throwable;
    :try_start_2
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 99
    invoke-static {v2}, Ljava/lang/System;->exit(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102
    .end local v4    # "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v3}, Lcom/sleepycat/je/Environment;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 108
    :goto_1
    return-void

    .line 101
    :catchall_2
    move-exception v4

    .line 102
    :try_start_4
    invoke-virtual {v3}, Lcom/sleepycat/je/Environment;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 106
    goto :goto_2

    .line 103
    :catchall_3
    move-exception v5

    .line 104
    .local v5, "e":Ljava/lang/Throwable;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 105
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 106
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_2
    throw v4
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 10
    .param p1, "argv"    # [Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "argc":I
    array-length v1, p1

    .line 166
    .local v1, "nArgs":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 167
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sleepycat/je/util/DbSpace;->printUsage(Ljava/lang/String;)V

    .line 168
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 171
    :cond_0
    :goto_0
    if-ge v0, v1, :cond_10

    .line 172
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "argc":I
    .local v3, "argc":I
    aget-object v0, p1, v0

    .line 173
    .local v0, "thisArg":Ljava/lang/String;
    const-string v4, "-q"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 174
    iput-boolean v5, p0, Lcom/sleepycat/je/util/DbSpace;->quiet:Z

    goto/16 :goto_2

    .line 175
    :cond_1
    const-string v4, "-u"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    iput-boolean v5, p0, Lcom/sleepycat/je/util/DbSpace;->sorted:Z

    goto/16 :goto_2

    .line 177
    :cond_2
    const-string v4, "-d"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    iput-boolean v5, p0, Lcom/sleepycat/je/util/DbSpace;->details:Z

    goto/16 :goto_2

    .line 179
    :cond_3
    const-string v4, "-r"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 180
    iput-boolean v5, p0, Lcom/sleepycat/je/util/DbSpace;->doRecalcUtil:Z

    goto/16 :goto_2

    .line 181
    :cond_4
    const-string v4, "-R"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 182
    iput-boolean v5, p0, Lcom/sleepycat/je/util/DbSpace;->doRecalcExpired:Z

    goto/16 :goto_2

    .line 183
    :cond_5
    const-string v4, "-V"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 184
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v5, Lcom/sleepycat/je/JEVersion;->CURRENT_VERSION:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 185
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_2

    .line 186
    :cond_6
    const-string v4, "-h"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 187
    if-ge v3, v1, :cond_7

    .line 188
    new-instance v4, Ljava/io/File;

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "argc":I
    .local v5, "argc":I
    aget-object v3, p1, v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sleepycat/je/util/DbSpace;->envHome:Ljava/io/File;

    move v0, v5

    goto/16 :goto_3

    .line 190
    .end local v5    # "argc":I
    .restart local v3    # "argc":I
    :cond_7
    const-string v4, "-h requires an argument"

    invoke-direct {p0, v4}, Lcom/sleepycat/je/util/DbSpace;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 192
    :cond_8
    const-string v4, "-s"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 193
    if-ge v3, v1, :cond_9

    .line 194
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "argc":I
    .local v4, "argc":I
    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/sleepycat/je/utilint/CmdUtil;->readLsn(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sleepycat/je/util/DbSpace;->startLsn:J

    move v0, v4

    goto :goto_3

    .line 196
    .end local v4    # "argc":I
    .restart local v3    # "argc":I
    :cond_9
    const-string v4, "-s requires an argument"

    invoke-direct {p0, v4}, Lcom/sleepycat/je/util/DbSpace;->printUsage(Ljava/lang/String;)V

    goto :goto_2

    .line 198
    :cond_a
    const-string v4, "-e"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 199
    if-ge v3, v1, :cond_b

    .line 200
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "argc":I
    .restart local v4    # "argc":I
    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/sleepycat/je/utilint/CmdUtil;->readLsn(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sleepycat/je/util/DbSpace;->finishLsn:J

    move v0, v4

    goto :goto_3

    .line 202
    .end local v4    # "argc":I
    .restart local v3    # "argc":I
    :cond_b
    const-string v4, "-e requires an argument"

    invoke-direct {p0, v4}, Lcom/sleepycat/je/util/DbSpace;->printUsage(Ljava/lang/String;)V

    goto :goto_2

    .line 204
    :cond_c
    const-string v4, "-t"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 205
    if-ge v3, v1, :cond_e

    .line 206
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "argc":I
    .restart local v4    # "argc":I
    aget-object v3, p1, v3

    .line 207
    .local v3, "s":Ljava/lang/String;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HHZ"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 208
    .local v5, "format":Ljava/text/DateFormat;
    new-instance v6, Ljava/text/ParsePosition;

    invoke-direct {v6, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 209
    .local v6, "pp":Ljava/text/ParsePosition;
    invoke-virtual {v5, v3, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v7

    .line 210
    .local v7, "date":Ljava/util/Date;
    if-eqz v7, :cond_d

    .line 211
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sleepycat/je/util/DbSpace;->targetTime:J

    goto :goto_1

    .line 213
    :cond_d
    const-string v8, "-t doesn\'t match format: yyyy-MM-dd\'T\'HHZ example: 2016-03-17T22-0800"

    invoke-direct {p0, v8}, Lcom/sleepycat/je/util/DbSpace;->printUsage(Ljava/lang/String;)V

    .line 217
    .end local v3    # "s":Ljava/lang/String;
    .end local v5    # "format":Ljava/text/DateFormat;
    .end local v6    # "pp":Ljava/text/ParsePosition;
    .end local v7    # "date":Ljava/util/Date;
    :goto_1
    move v0, v4

    goto :goto_3

    .line 218
    .end local v4    # "argc":I
    .local v3, "argc":I
    :cond_e
    const-string v4, "-t requires an argument"

    invoke-direct {p0, v4}, Lcom/sleepycat/je/util/DbSpace;->printUsage(Ljava/lang/String;)V

    .line 221
    .end local v0    # "thisArg":Ljava/lang/String;
    :cond_f
    :goto_2
    move v0, v3

    .end local v3    # "argc":I
    .local v0, "argc":I
    :goto_3
    goto/16 :goto_0

    .line 223
    :cond_10
    iget-object v2, p0, Lcom/sleepycat/je/util/DbSpace;->envHome:Ljava/io/File;

    if-nez v2, :cond_11

    .line 224
    const-string v2, "-h is a required argument"

    invoke-direct {p0, v2}, Lcom/sleepycat/je/util/DbSpace;->printUsage(Ljava/lang/String;)V

    .line 227
    :cond_11
    iget-boolean v2, p0, Lcom/sleepycat/je/util/DbSpace;->doRecalcUtil:Z

    if-eqz v2, :cond_12

    iget-boolean v2, p0, Lcom/sleepycat/je/util/DbSpace;->doRecalcExpired:Z

    if-eqz v2, :cond_12

    .line 228
    const-string v2, "-r and -R cannot both be used"

    invoke-direct {p0, v2}, Lcom/sleepycat/je/util/DbSpace;->printUsage(Ljava/lang/String;)V

    .line 230
    :cond_12
    return-void
.end method

.method private printUsage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 154
    if-eqz p1, :cond_0

    .line 155
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v1, Lcom/sleepycat/je/util/DbSpace;->USAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 159
    return-void
.end method


# virtual methods
.method public print(Ljava/io/PrintStream;)V
    .locals 29
    .param p1, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 272
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-wide v0, v7, Lcom/sleepycat/je/util/DbSpace;->startLsn:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 273
    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v11, v0

    .line 275
    .local v11, "startFile":J
    iget-wide v0, v7, Lcom/sleepycat/je/util/DbSpace;->finishLsn:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 276
    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    :goto_1
    move-wide v13, v0

    .line 278
    .local v13, "finishFile":J
    iget-object v0, v7, Lcom/sleepycat/je/util/DbSpace;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 279
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v0

    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getFileSummaryMap(Z)Ljava/util/SortedMap;

    move-result-object v0

    .line 280
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v16

    .line 282
    .local v16, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, v7, Lcom/sleepycat/je/util/DbSpace;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 283
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/Cleaner;->getFileSelector()Lcom/sleepycat/je/cleaner/FileSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/FileSelector;->getInProgressFiles()Ljava/util/NavigableSet;

    move-result-object v1

    .line 282
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 285
    iget-boolean v0, v7, Lcom/sleepycat/je/util/DbSpace;->doRecalcUtil:Z

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/sleepycat/je/util/DbSpace;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-wide v1, v7, Lcom/sleepycat/je/util/DbSpace;->startLsn:J

    iget-wide v3, v7, Lcom/sleepycat/je/util/DbSpace;->finishLsn:J

    .line 287
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/log/UtilizationFileReader;->calcFileSummaryMap(Lcom/sleepycat/je/dbi/EnvironmentImpl;JJ)Ljava/util/Map;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move-object v6, v0

    .line 290
    .local v6, "recalcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    new-instance v0, Lcom/sleepycat/je/cleaner/ExpirationProfile;

    iget-object v1, v7, Lcom/sleepycat/je/util/DbSpace;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 291
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExpirationProfile()Lcom/sleepycat/je/cleaner/ExpirationProfile;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/cleaner/ExpirationProfile;-><init>(Lcom/sleepycat/je/cleaner/ExpirationProfile;)V

    move-object v5, v0

    .line 293
    .local v5, "expProfile":Lcom/sleepycat/je/cleaner/ExpirationProfile;
    iget-wide v0, v7, Lcom/sleepycat/je/util/DbSpace;->targetTime:J

    invoke-virtual {v5, v0, v1}, Lcom/sleepycat/je/cleaner/ExpirationProfile;->refresh(J)V

    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, "fileIndex":I
    new-instance v1, Lcom/sleepycat/je/util/DbSpace$Summary;

    invoke-direct {v1, v7}, Lcom/sleepycat/je/util/DbSpace$Summary;-><init>(Lcom/sleepycat/je/util/DbSpace;)V

    move-object v4, v1

    .line 298
    .local v4, "totals":Lcom/sleepycat/je/util/DbSpace$Summary;
    const/4 v1, 0x0

    .line 300
    .local v1, "summaries":[Lcom/sleepycat/je/util/DbSpace$Summary;
    iget-boolean v2, v7, Lcom/sleepycat/je/util/DbSpace;->quiet:Z

    if-nez v2, :cond_3

    .line 301
    invoke-interface/range {v16 .. v16}, Ljava/util/SortedMap;->size()I

    move-result v2

    new-array v1, v2, [Lcom/sleepycat/je/util/DbSpace$Summary;

    move-object v3, v1

    goto :goto_3

    .line 300
    :cond_3
    move-object v3, v1

    .line 304
    .end local v1    # "summaries":[Lcom/sleepycat/je/util/DbSpace$Summary;
    .local v3, "summaries":[Lcom/sleepycat/je/util/DbSpace$Summary;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move/from16 v18, v0

    .end local v0    # "fileIndex":I
    .local v18, "fileIndex":I
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/Map$Entry;

    .line 306
    .local v19, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Long;

    .line 307
    .local v2, "fileNum":Ljava/lang/Long;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/cleaner/FileSummary;

    .line 309
    .local v1, "fs":Lcom/sleepycat/je/cleaner/FileSummary;
    const/4 v0, 0x0

    .line 311
    .local v0, "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    if-eqz v6, :cond_4

    .line 312
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lcom/sleepycat/je/cleaner/FileSummary;

    .line 315
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/sleepycat/je/cleaner/ExpirationProfile;->getExpiredBytes(J)I

    move-result v9

    .line 316
    .local v9, "expiredSize":I
    const/4 v10, -0x1

    .line 317
    .local v10, "recalcExpiredSize":I
    const/16 v21, 0x0

    .line 319
    .local v21, "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    iget-boolean v15, v7, Lcom/sleepycat/je/util/DbSpace;->doRecalcExpired:Z

    if-eqz v15, :cond_5

    .line 321
    iget-object v15, v7, Lcom/sleepycat/je/util/DbSpace;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 322
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sleepycat/je/cleaner/Cleaner;->createProcessor()Lcom/sleepycat/je/cleaner/FileProcessor;

    move-result-object v15

    .line 324
    .local v15, "fileProcessor":Lcom/sleepycat/je/cleaner/FileProcessor;
    move-object/from16 v23, v0

    move-object/from16 v22, v1

    .end local v0    # "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v1    # "fs":Lcom/sleepycat/je/cleaner/FileSummary;
    .local v22, "fs":Lcom/sleepycat/je/cleaner/FileSummary;
    .local v23, "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Lcom/sleepycat/je/cleaner/FileProcessor;->countExpiration(J)Lcom/sleepycat/je/cleaner/ExpirationTracker;

    move-result-object v0

    .line 325
    .end local v21    # "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    .local v0, "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    move-object/from16 v24, v2

    .end local v2    # "fileNum":Ljava/lang/Long;
    .local v24, "fileNum":Ljava/lang/Long;
    iget-wide v1, v7, Lcom/sleepycat/je/util/DbSpace;->targetTime:J

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->getExpiredBytes(J)I

    move-result v10

    move-object/from16 v21, v0

    goto :goto_5

    .line 319
    .end local v15    # "fileProcessor":Lcom/sleepycat/je/cleaner/FileProcessor;
    .end local v22    # "fs":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v23    # "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v24    # "fileNum":Ljava/lang/Long;
    .local v0, "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local v1    # "fs":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local v2    # "fileNum":Ljava/lang/Long;
    .restart local v21    # "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    :cond_5
    move-object/from16 v23, v0

    move-object/from16 v22, v1

    move-object/from16 v24, v2

    .line 328
    .end local v0    # "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v1    # "fs":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v2    # "fileNum":Ljava/lang/Long;
    .restart local v22    # "fs":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local v23    # "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local v24    # "fileNum":Ljava/lang/Long;
    :goto_5
    new-instance v15, Lcom/sleepycat/je/util/DbSpace$Summary;

    move-object/from16 v2, v23

    .end local v23    # "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    .local v2, "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    move-object v0, v15

    move-object/from16 v23, v22

    .end local v22    # "fs":Lcom/sleepycat/je/cleaner/FileSummary;
    .local v23, "fs":Lcom/sleepycat/je/cleaner/FileSummary;
    move-object/from16 v1, p0

    move-object/from16 v22, v24

    move-object/from16 v24, v2

    .end local v2    # "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    .local v22, "fileNum":Ljava/lang/Long;
    .local v24, "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    move-object/from16 v2, v22

    move-wide/from16 v25, v11

    move-object v11, v3

    .end local v3    # "summaries":[Lcom/sleepycat/je/util/DbSpace$Summary;
    .local v11, "summaries":[Lcom/sleepycat/je/util/DbSpace$Summary;
    .local v25, "startFile":J
    move-object/from16 v3, v23

    move-object v12, v4

    .end local v4    # "totals":Lcom/sleepycat/je/util/DbSpace$Summary;
    .local v12, "totals":Lcom/sleepycat/je/util/DbSpace$Summary;
    move-object/from16 v4, v24

    move-wide/from16 v27, v13

    move-object v13, v5

    .end local v5    # "expProfile":Lcom/sleepycat/je/cleaner/ExpirationProfile;
    .local v13, "expProfile":Lcom/sleepycat/je/cleaner/ExpirationProfile;
    .local v27, "finishFile":J
    move v5, v9

    move-object v14, v6

    .end local v6    # "recalcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .local v14, "recalcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/util/DbSpace$Summary;-><init>(Lcom/sleepycat/je/util/DbSpace;Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;Lcom/sleepycat/je/cleaner/FileSummary;II)V

    .line 331
    .local v0, "summary":Lcom/sleepycat/je/util/DbSpace$Summary;
    if-eqz v11, :cond_6

    .line 332
    aput-object v0, v11, v18

    .line 335
    :cond_6
    iget-boolean v1, v7, Lcom/sleepycat/je/util/DbSpace;->details:Z

    if-eqz v1, :cond_8

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 338
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " histogram: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 340
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v13, v2, v3}, Lcom/sleepycat/je/cleaner/ExpirationProfile;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v23

    .end local v23    # "fs":Lcom/sleepycat/je/cleaner/FileSummary;
    .local v3, "fs":Lcom/sleepycat/je/cleaner/FileSummary;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-virtual {v8, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 343
    if-eqz v14, :cond_7

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recalc util 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 345
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v24

    .end local v24    # "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local v2    # "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {v8, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 343
    .end local v2    # "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local v24    # "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    :cond_7
    move-object/from16 v2, v24

    .line 349
    .end local v24    # "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local v2    # "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    :goto_6
    if-eqz v21, :cond_9

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recalc expiration 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 351
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " recalcExpired: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " recalcHistogram: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 353
    invoke-virtual/range {v21 .. v21}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-virtual {v8, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 335
    .end local v2    # "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v3    # "fs":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local v23    # "fs":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local v24    # "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    :cond_8
    move-object/from16 v3, v23

    move-object/from16 v2, v24

    .line 357
    .end local v23    # "fs":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v24    # "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local v2    # "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    .restart local v3    # "fs":Lcom/sleepycat/je/cleaner/FileSummary;
    :cond_9
    :goto_7
    invoke-virtual {v12, v0}, Lcom/sleepycat/je/util/DbSpace$Summary;->add(Lcom/sleepycat/je/util/DbSpace$Summary;)V

    .line 358
    nop

    .end local v0    # "summary":Lcom/sleepycat/je/util/DbSpace$Summary;
    .end local v2    # "recalcFs":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v3    # "fs":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v9    # "expiredSize":I
    .end local v10    # "recalcExpiredSize":I
    .end local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v21    # "expTracker":Lcom/sleepycat/je/cleaner/ExpirationTracker;
    .end local v22    # "fileNum":Ljava/lang/Long;
    add-int/lit8 v18, v18, 0x1

    .line 359
    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-wide/from16 v11, v25

    move-wide/from16 v13, v27

    const/4 v15, 0x1

    goto/16 :goto_4

    .line 361
    .end local v12    # "totals":Lcom/sleepycat/je/util/DbSpace$Summary;
    .end local v14    # "recalcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v25    # "startFile":J
    .end local v27    # "finishFile":J
    .local v3, "summaries":[Lcom/sleepycat/je/util/DbSpace$Summary;
    .restart local v4    # "totals":Lcom/sleepycat/je/util/DbSpace$Summary;
    .restart local v5    # "expProfile":Lcom/sleepycat/je/cleaner/ExpirationProfile;
    .restart local v6    # "recalcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .local v11, "startFile":J
    .local v13, "finishFile":J
    :cond_a
    move-wide/from16 v25, v11

    move-wide/from16 v27, v13

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    .end local v3    # "summaries":[Lcom/sleepycat/je/util/DbSpace$Summary;
    .end local v4    # "totals":Lcom/sleepycat/je/util/DbSpace$Summary;
    .end local v5    # "expProfile":Lcom/sleepycat/je/cleaner/ExpirationProfile;
    .end local v6    # "recalcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .local v11, "summaries":[Lcom/sleepycat/je/util/DbSpace$Summary;
    .restart local v12    # "totals":Lcom/sleepycat/je/util/DbSpace$Summary;
    .local v13, "expProfile":Lcom/sleepycat/je/cleaner/ExpirationProfile;
    .restart local v14    # "recalcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .restart local v25    # "startFile":J
    .restart local v27    # "finishFile":J
    iget-boolean v0, v7, Lcom/sleepycat/je/util/DbSpace;->details:Z

    if-eqz v0, :cond_b

    .line 362
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintStream;->println()V

    .line 365
    :cond_b
    iget-boolean v0, v7, Lcom/sleepycat/je/util/DbSpace;->doRecalcExpired:Z

    if-eqz v0, :cond_c

    const-string v0, "                      % Utilized    w/Expiration\n  File    Size (kB)  Avg  Min  Max  Recalculated\n--------  ---------  ---  ---  ---  ------------"

    goto :goto_8

    :cond_c
    iget-boolean v0, v7, Lcom/sleepycat/je/util/DbSpace;->doRecalcUtil:Z

    if-eqz v0, :cond_d

    const-string v0, "                      % Utilized    Recalculated\n  File    Size (kB)  Avg  Min  Max  Avg  Min  Max\n--------  ---------  ---  ---  ---  ---  ---  ---"

    goto :goto_8

    :cond_d
    const-string v0, "                      % Utilized\n  File    Size (kB)  Avg  Min  Max  \n--------  ---------  ---- ---  ---"

    :goto_8
    invoke-virtual {v8, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    const/4 v0, 0x0

    if-eqz v11, :cond_f

    .line 370
    iget-boolean v1, v7, Lcom/sleepycat/je/util/DbSpace;->sorted:Z

    if-eqz v1, :cond_e

    .line 371
    new-instance v1, Lcom/sleepycat/je/util/DbSpace$1;

    invoke-direct {v1, v7}, Lcom/sleepycat/je/util/DbSpace$1;-><init>(Lcom/sleepycat/je/util/DbSpace;)V

    invoke-static {v11, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 377
    :cond_e
    array-length v1, v11

    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_f

    aget-object v3, v11, v2

    .line 378
    .local v3, "summary":Lcom/sleepycat/je/util/DbSpace$Summary;
    invoke-virtual {v3, v8}, Lcom/sleepycat/je/util/DbSpace$Summary;->print(Ljava/io/PrintStream;)V

    .line 377
    .end local v3    # "summary":Lcom/sleepycat/je/util/DbSpace$Summary;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 382
    :cond_f
    invoke-virtual {v12, v8}, Lcom/sleepycat/je/util/DbSpace$Summary;->print(Ljava/io/PrintStream;)V

    .line 384
    iget-wide v1, v12, Lcom/sleepycat/je/util/DbSpace$Summary;->expiredSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x400

    const/4 v4, 0x2

    if-lez v1, :cond_10

    .line 386
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd\'T\'HHZ"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, "format":Ljava/text/DateFormat;
    new-array v5, v4, [Ljava/lang/Object;

    iget-wide v9, v7, Lcom/sleepycat/je/util/DbSpace;->targetTime:J

    .line 392
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    iget-wide v9, v12, Lcom/sleepycat/je/util/DbSpace$Summary;->expiredSize:J

    div-long/2addr v9, v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v5, v9

    .line 388
    const-string v6, "%nAs of %s, %,d kB are expired, resulting in the%ndifferences between minimum and maximum utilization.%n"

    invoke-virtual {v8, v6, v5}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 395
    .end local v1    # "format":Ljava/text/DateFormat;
    :cond_10
    iget-object v1, v7, Lcom/sleepycat/je/util/DbSpace;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 396
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/FileProtector;->getReservedFileInfo()Lcom/sleepycat/je/utilint/Pair;

    move-result-object v1

    .line 398
    .local v1, "reservedFileInfo":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/util/NavigableSet<Ljava/lang/Long;>;>;"
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 399
    .local v5, "reservedSize":J
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/NavigableSet;

    .line 400
    .local v9, "reservedFiles":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    iget-boolean v10, v7, Lcom/sleepycat/je/util/DbSpace;->quiet:Z

    if-nez v10, :cond_11

    invoke-interface {v9}, Ljava/util/NavigableSet;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_11

    const/4 v10, 0x1

    goto :goto_a

    :cond_11
    move v10, v0

    .line 402
    .local v10, "printReservedFiles":Z
    :goto_a
    new-array v4, v4, [Ljava/lang/Object;

    div-long v2, v5, v2

    .line 404
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v0

    if-eqz v10, :cond_12

    const-string v0, ":"

    goto :goto_b

    :cond_12
    const-string v0, "."

    :goto_b
    const/4 v2, 0x1

    aput-object v0, v4, v2

    .line 402
    const-string v0, "%n%,d kB are used by additional reserved files%s%n"

    invoke-virtual {v8, v0, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 407
    if-eqz v10, :cond_13

    .line 408
    invoke-static {v9}, Lcom/sleepycat/utilint/FormatUtil;->asHexString(Ljava/util/SortedSet;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 410
    :cond_13
    return-void
.end method

.method public setEndFile(J)V
    .locals 0
    .param p1, "endFile"    # J

    .line 256
    iput-wide p1, p0, Lcom/sleepycat/je/util/DbSpace;->finishLsn:J

    .line 257
    return-void
.end method

.method public setRecalculate(Z)V
    .locals 0
    .param p1, "recalc"    # Z

    .line 238
    iput-boolean p1, p0, Lcom/sleepycat/je/util/DbSpace;->doRecalcUtil:Z

    .line 239
    return-void
.end method

.method public setStartFile(J)V
    .locals 0
    .param p1, "startFile"    # J

    .line 247
    iput-wide p1, p0, Lcom/sleepycat/je/util/DbSpace;->startLsn:J

    .line 248
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 263
    iput-wide p1, p0, Lcom/sleepycat/je/util/DbSpace;->targetTime:J

    .line 264
    return-void
.end method
