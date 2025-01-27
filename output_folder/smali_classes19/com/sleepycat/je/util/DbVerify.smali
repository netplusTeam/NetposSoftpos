.class public Lcom/sleepycat/je/util/DbVerify;
.super Ljava/lang/Object;
.source "DbVerify.java"


# static fields
.field private static final usageString:Ljava/lang/String;


# instance fields
.field dbName:Ljava/lang/String;

.field env:Lcom/sleepycat/je/Environment;

.field envHome:Ljava/io/File;

.field private verifyConfig:Lcom/sleepycat/je/VerifyConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/util/DbVerify;

    .line 56
    invoke-static {v1}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n      -h <dir>             # environment home directory\n      [-c ]                # check cleaner metadata\n      [-q ]                # quiet, exit with success or failure\n      [-s <databaseName>]  # database to verify\n      [-v <interval>]      # progress notification interval\n      [-bs <size>]         # how many records to check each batch\n      [-d <millis>]        # delay in ms between batches\n      [-vdr]               # verify data records (read LNs)\n      [-V]                 # print JE version number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/util/DbVerify;->usageString:Ljava/lang/String;

    .line 55
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/util/DbVerify;->envHome:Ljava/io/File;

    .line 69
    iput-object v0, p0, Lcom/sleepycat/je/util/DbVerify;->dbName:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/sleepycat/je/VerifyConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/VerifyConfig;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/util/DbVerify;->verifyConfig:Lcom/sleepycat/je/VerifyConfig;

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Environment;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "quiet"    # Z

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/util/DbVerify;->envHome:Ljava/io/File;

    .line 69
    iput-object v0, p0, Lcom/sleepycat/je/util/DbVerify;->dbName:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/sleepycat/je/VerifyConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/VerifyConfig;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/util/DbVerify;->verifyConfig:Lcom/sleepycat/je/VerifyConfig;

    .line 158
    iput-object p1, p0, Lcom/sleepycat/je/util/DbVerify;->env:Lcom/sleepycat/je/Environment;

    .line 159
    iput-object p2, p0, Lcom/sleepycat/je/util/DbVerify;->dbName:Ljava/lang/String;

    .line 160
    xor-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/VerifyConfig;->setPrintInfo(Z)Lcom/sleepycat/je/VerifyConfig;

    .line 161
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/sleepycat/je/util/DbVerify;

    invoke-direct {v0}, Lcom/sleepycat/je/util/DbVerify;-><init>()V

    .line 111
    .local v0, "verifier":Lcom/sleepycat/je/util/DbVerify;
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/util/DbVerify;->parseArgs([Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, "ret":Z
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbVerify;->openEnv()V

    .line 116
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/util/DbVerify;->verify(Ljava/io/PrintStream;)Z

    move-result v2

    move v1, v2

    .line 117
    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbVerify;->closeEnv()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v2

    .line 119
    .local v2, "T":Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 130
    .end local v2    # "T":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, v0, Lcom/sleepycat/je/util/DbVerify;->verifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v2}, Lcom/sleepycat/je/VerifyConfig;->getPrintInfo()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/sleepycat/je/util/DbVerify;->verifyConfig:Lcom/sleepycat/je/VerifyConfig;

    .line 131
    invoke-virtual {v2}, Lcom/sleepycat/je/VerifyConfig;->getShowProgressInterval()I

    move-result v2

    if-lez v2, :cond_1

    .line 132
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exit status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 136
    return-void
.end method


# virtual methods
.method closeEnv()V
    .locals 2

    .line 248
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/util/DbVerify;->env:Lcom/sleepycat/je/Environment;

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v1}, Lcom/sleepycat/je/Environment;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_0
    iput-object v0, p0, Lcom/sleepycat/je/util/DbVerify;->env:Lcom/sleepycat/je/Environment;

    .line 253
    nop

    .line 254
    return-void

    .line 252
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/sleepycat/je/util/DbVerify;->env:Lcom/sleepycat/je/Environment;

    throw v1
.end method

.method openEnv()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/sleepycat/je/util/DbVerify;->env:Lcom/sleepycat/je/Environment;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 241
    .local v0, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setReadOnly(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 242
    new-instance v1, Lcom/sleepycat/je/Environment;

    iget-object v2, p0, Lcom/sleepycat/je/util/DbVerify;->envHome:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;)V

    iput-object v1, p0, Lcom/sleepycat/je/util/DbVerify;->env:Lcom/sleepycat/je/Environment;

    .line 244
    .end local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    :cond_0
    return-void
.end method

.method parseArgs([Ljava/lang/String;)V
    .locals 10
    .param p1, "argv"    # [Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/sleepycat/je/util/DbVerify;->verifyConfig:Lcom/sleepycat/je/VerifyConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/VerifyConfig;->setPrintInfo(Z)Lcom/sleepycat/je/VerifyConfig;

    .line 171
    iget-object v0, p0, Lcom/sleepycat/je/util/DbVerify;->verifyConfig:Lcom/sleepycat/je/VerifyConfig;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lcom/sleepycat/je/VerifyConfig;->setBatchDelay(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/VerifyConfig;

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "argc":I
    array-length v2, p1

    .line 175
    .local v2, "nArgs":I
    :goto_0
    if-ge v0, v2, :cond_11

    .line 176
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "argc":I
    .local v5, "argc":I
    aget-object v0, p1, v0

    .line 177
    .local v0, "thisArg":Ljava/lang/String;
    const-string v6, "-q"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 178
    iget-object v6, p0, Lcom/sleepycat/je/util/DbVerify;->verifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/VerifyConfig;->setPrintInfo(Z)Lcom/sleepycat/je/VerifyConfig;

    goto/16 :goto_1

    .line 179
    :cond_0
    const-string v6, "-V"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 180
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v8, Lcom/sleepycat/je/JEVersion;->CURRENT_VERSION:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 181
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 182
    :cond_1
    const-string v6, "-h"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 183
    if-ge v5, v2, :cond_2

    .line 184
    new-instance v6, Ljava/io/File;

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "argc":I
    .local v7, "argc":I
    aget-object v5, p1, v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/sleepycat/je/util/DbVerify;->envHome:Ljava/io/File;

    move v0, v7

    goto/16 :goto_2

    .line 186
    .end local v7    # "argc":I
    .restart local v5    # "argc":I
    :cond_2
    const-string v6, "-h requires an argument"

    invoke-virtual {p0, v6}, Lcom/sleepycat/je/util/DbVerify;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 188
    :cond_3
    const-string v6, "-s"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 189
    if-ge v5, v2, :cond_4

    .line 190
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "argc":I
    .local v6, "argc":I
    aget-object v5, p1, v5

    iput-object v5, p0, Lcom/sleepycat/je/util/DbVerify;->dbName:Ljava/lang/String;

    move v0, v6

    goto/16 :goto_2

    .line 192
    .end local v6    # "argc":I
    .restart local v5    # "argc":I
    :cond_4
    const-string v6, "-s requires an argument"

    invoke-virtual {p0, v6}, Lcom/sleepycat/je/util/DbVerify;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 194
    :cond_5
    const-string v6, "-v"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 195
    if-ge v5, v2, :cond_7

    .line 196
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "argc":I
    .restart local v6    # "argc":I
    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 197
    .local v5, "progressInterval":I
    if-gtz v5, :cond_6

    .line 198
    const-string v7, "-v requires a positive argument"

    invoke-virtual {p0, v7}, Lcom/sleepycat/je/util/DbVerify;->printUsage(Ljava/lang/String;)V

    .line 200
    :cond_6
    iget-object v7, p0, Lcom/sleepycat/je/util/DbVerify;->verifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v7, v5}, Lcom/sleepycat/je/VerifyConfig;->setShowProgressInterval(I)Lcom/sleepycat/je/VerifyConfig;

    .line 201
    .end local v5    # "progressInterval":I
    move v0, v6

    goto/16 :goto_2

    .line 202
    .end local v6    # "argc":I
    .local v5, "argc":I
    :cond_7
    const-string v6, "-v requires an argument"

    invoke-virtual {p0, v6}, Lcom/sleepycat/je/util/DbVerify;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 204
    :cond_8
    const-string v6, "-bs"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 205
    if-ge v5, v2, :cond_a

    .line 206
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "argc":I
    .restart local v6    # "argc":I
    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 207
    .local v5, "batchSize":I
    if-gtz v5, :cond_9

    .line 208
    const-string v7, "-bs requires a positive argument"

    invoke-virtual {p0, v7}, Lcom/sleepycat/je/util/DbVerify;->printUsage(Ljava/lang/String;)V

    .line 210
    :cond_9
    iget-object v7, p0, Lcom/sleepycat/je/util/DbVerify;->verifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v7, v5}, Lcom/sleepycat/je/VerifyConfig;->setBatchSize(I)Lcom/sleepycat/je/VerifyConfig;

    .line 211
    .end local v5    # "batchSize":I
    move v0, v6

    goto :goto_2

    .line 212
    .end local v6    # "argc":I
    .local v5, "argc":I
    :cond_a
    const-string v6, "-bs requires an argument"

    invoke-virtual {p0, v6}, Lcom/sleepycat/je/util/DbVerify;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_b
    const-string v6, "-d"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 215
    if-ge v5, v2, :cond_d

    .line 216
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "argc":I
    .restart local v6    # "argc":I
    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 217
    .local v7, "delayMs":J
    cmp-long v5, v7, v3

    if-gez v5, :cond_c

    .line 218
    const-string v5, "-d requires a positive argument"

    invoke-virtual {p0, v5}, Lcom/sleepycat/je/util/DbVerify;->printUsage(Ljava/lang/String;)V

    .line 220
    :cond_c
    iget-object v5, p0, Lcom/sleepycat/je/util/DbVerify;->verifyConfig:Lcom/sleepycat/je/VerifyConfig;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v7, v8, v9}, Lcom/sleepycat/je/VerifyConfig;->setBatchDelay(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/VerifyConfig;

    .line 221
    .end local v7    # "delayMs":J
    move v0, v6

    goto :goto_2

    .line 222
    .end local v6    # "argc":I
    .restart local v5    # "argc":I
    :cond_d
    const-string v6, "-d requires an argument"

    invoke-virtual {p0, v6}, Lcom/sleepycat/je/util/DbVerify;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 224
    :cond_e
    const-string v6, "-vdr"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 225
    iget-object v6, p0, Lcom/sleepycat/je/util/DbVerify;->verifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v6, v1}, Lcom/sleepycat/je/VerifyConfig;->setVerifyDataRecords(Z)Lcom/sleepycat/je/VerifyConfig;

    goto :goto_1

    .line 226
    :cond_f
    const-string v6, "-vor"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 227
    iget-object v6, p0, Lcom/sleepycat/je/util/DbVerify;->verifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v6, v1}, Lcom/sleepycat/je/VerifyConfig;->setVerifyObsoleteRecords(Z)Lcom/sleepycat/je/VerifyConfig;

    .line 229
    .end local v0    # "thisArg":Ljava/lang/String;
    :cond_10
    :goto_1
    move v0, v5

    .end local v5    # "argc":I
    .local v0, "argc":I
    :goto_2
    goto/16 :goto_0

    .line 231
    :cond_11
    iget-object v1, p0, Lcom/sleepycat/je/util/DbVerify;->envHome:Ljava/io/File;

    if-nez v1, :cond_12

    .line 232
    const-string v1, "-h is a required argument"

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/util/DbVerify;->printUsage(Ljava/lang/String;)V

    .line 234
    :cond_12
    return-void
.end method

.method printUsage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 164
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v1, Lcom/sleepycat/je/util/DbVerify;->usageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 167
    return-void
.end method

.method public verify(Ljava/io/PrintStream;)Z
    .locals 9
    .param p1, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/sleepycat/je/util/DbVerify;->env:Lcom/sleepycat/je/Environment;

    invoke-static {v0}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 285
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    new-instance v1, Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-direct {v1, v0}, Lcom/sleepycat/je/util/verify/BtreeVerifier;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 286
    .local v1, "verifier":Lcom/sleepycat/je/util/verify/BtreeVerifier;
    iget-object v2, p0, Lcom/sleepycat/je/util/DbVerify;->verifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/VerifyConfig;->setShowProgressStream(Ljava/io/PrintStream;)Lcom/sleepycat/je/VerifyConfig;

    .line 287
    iget-object v2, p0, Lcom/sleepycat/je/util/DbVerify;->verifyConfig:Lcom/sleepycat/je/VerifyConfig;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->setBtreeVerifyConfig(Lcom/sleepycat/je/VerifyConfig;)V

    .line 289
    iget-object v2, p0, Lcom/sleepycat/je/util/DbVerify;->dbName:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 290
    invoke-virtual {v1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyAll()V

    goto :goto_0

    .line 293
    :cond_0
    nop

    .line 294
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v4

    .line 295
    .local v4, "locker":Lcom/sleepycat/je/txn/BasicLocker;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v5

    .line 296
    .local v5, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    const/4 v6, 0x0

    .line 300
    .local v6, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_0
    iget-object v7, p0, Lcom/sleepycat/je/util/DbVerify;->dbName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v7, v8, v2}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/txn/HandleLocker;Z)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v2

    .line 301
    if-nez v6, :cond_1

    .line 302
    nop

    .line 306
    invoke-virtual {v5, v6}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 307
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 302
    return v3

    .line 304
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    .local v2, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    invoke-virtual {v5, v6}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 307
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    .line 308
    nop

    .line 310
    iget-object v7, p0, Lcom/sleepycat/je/util/DbVerify;->dbName:Ljava/lang/String;

    invoke-virtual {v1, v7, v2}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyDatabase(Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/BtreeStats;

    .line 313
    .end local v2    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    .end local v4    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .end local v5    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .end local v6    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :goto_0
    return v3

    .line 306
    .restart local v4    # "locker":Lcom/sleepycat/je/txn/BasicLocker;
    .restart local v5    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    .restart local v6    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception v2

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 307
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/BasicLocker;->operationEnd()V

    throw v2
.end method
