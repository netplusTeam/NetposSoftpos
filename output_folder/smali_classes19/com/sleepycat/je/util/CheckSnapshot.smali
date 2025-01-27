.class public Lcom/sleepycat/je/util/CheckSnapshot;
.super Ljava/lang/Object;
.source "CheckSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/util/CheckSnapshot$UsageException;
    }
.end annotation


# static fields
.field private static final USAGE:Ljava/lang/String;


# instance fields
.field private backupCopy:Lcom/sleepycat/je/BackupFileCopy;

.field private backupLocation:Lcom/sleepycat/je/BackupArchiveLocation;

.field private manifest:Lcom/sleepycat/je/dbi/SnapshotManifest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/util/CheckSnapshot;

    .line 60
    invoke-static {v1}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n       -m <file>    # the manifest of the snapshot to check\n       -c <file>    # the copy class configuration\n       -l <file>    # the location class configuration\n       [-C <class>] # the copy class\n       [-L <class>] # the location class\n       [-V]         # print version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/util/CheckSnapshot;->USAGE:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/SnapshotManifest;Lcom/sleepycat/je/BackupFileCopy;Lcom/sleepycat/je/BackupArchiveLocation;)V
    .locals 1
    .param p1, "manifest"    # Lcom/sleepycat/je/dbi/SnapshotManifest;
    .param p2, "backupCopy"    # Lcom/sleepycat/je/BackupFileCopy;
    .param p3, "backupLocation"    # Lcom/sleepycat/je/BackupArchiveLocation;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/SnapshotManifest;

    iput-object v0, p0, Lcom/sleepycat/je/util/CheckSnapshot;->manifest:Lcom/sleepycat/je/dbi/SnapshotManifest;

    .line 85
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/BackupFileCopy;

    iput-object v0, p0, Lcom/sleepycat/je/util/CheckSnapshot;->backupCopy:Lcom/sleepycat/je/BackupFileCopy;

    .line 86
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/BackupArchiveLocation;

    iput-object v0, p0, Lcom/sleepycat/je/util/CheckSnapshot;->backupLocation:Lcom/sleepycat/je/BackupArchiveLocation;

    .line 87
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "argv"    # [Ljava/lang/String;

    .line 101
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0}, Lcom/sleepycat/je/util/CheckSnapshot;->mainInternal(Ljava/io/PrintStream;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sleepycat/je/util/CheckSnapshot$UsageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 102
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Lcom/sleepycat/je/util/CheckSnapshot$UsageException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/sleepycat/je/util/CheckSnapshot$UsageException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    .end local v0    # "e":Lcom/sleepycat/je/util/CheckSnapshot$UsageException;
    :goto_0
    nop

    .line 108
    :goto_1
    return-void
.end method

.method static varargs mainInternal(Ljava/io/PrintStream;[Ljava/lang/String;)V
    .locals 4
    .param p0, "out"    # Ljava/io/PrintStream;
    .param p1, "argv"    # [Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/sleepycat/je/util/CheckSnapshot;

    invoke-direct {v0}, Lcom/sleepycat/je/util/CheckSnapshot;-><init>()V

    .line 122
    .local v0, "checkSnapshot":Lcom/sleepycat/je/util/CheckSnapshot;
    invoke-direct {v0, p1}, Lcom/sleepycat/je/util/CheckSnapshot;->parseArgs([Ljava/lang/String;)V

    .line 123
    iget-object v1, v0, Lcom/sleepycat/je/util/CheckSnapshot;->manifest:Lcom/sleepycat/je/dbi/SnapshotManifest;

    .line 124
    .local v1, "manifest":Lcom/sleepycat/je/dbi/SnapshotManifest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking snapshot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getSnapshot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 125
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Snapshot is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 127
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getIsComplete()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "complete"

    goto :goto_0

    :cond_0
    const-string v3, "not complete"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Lcom/sleepycat/je/util/CheckSnapshot;->check()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    const-string v2, "Check passed"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 12
    .param p1, "argv"    # [Ljava/lang/String;

    .line 147
    const-string v0, ": "

    const/4 v1, 0x0

    .line 148
    .local v1, "argc":I
    array-length v2, p1

    .line 150
    .local v2, "nArgs":I
    if-nez v2, :cond_0

    .line 151
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sleepycat/je/util/CheckSnapshot;->printUsage(Ljava/lang/String;)V

    .line 154
    :cond_0
    const/4 v3, 0x0

    .line 155
    .local v3, "manifestPath":Ljava/nio/file/Path;
    const/4 v4, 0x0

    .line 156
    .local v4, "copyConfig":Ljava/nio/file/Path;
    const/4 v5, 0x0

    .line 157
    .local v5, "locationConfig":Ljava/nio/file/Path;
    const/4 v6, 0x0

    .line 158
    .local v6, "copyClass":Ljava/lang/String;
    const/4 v7, 0x0

    .line 160
    .local v7, "locationClass":Ljava/lang/String;
    :goto_0
    if-ge v1, v2, :cond_c

    .line 161
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "argc":I
    .local v8, "argc":I
    aget-object v1, p1, v1

    .line 162
    .local v1, "thisArg":Ljava/lang/String;
    const-string v9, "-m"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    .line 163
    if-ge v8, v2, :cond_1

    .line 164
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "argc":I
    .local v9, "argc":I
    aget-object v8, p1, v8

    new-array v10, v10, [Ljava/lang/String;

    invoke-static {v8, v10}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    move v1, v9

    goto/16 :goto_2

    .line 166
    .end local v9    # "argc":I
    .restart local v8    # "argc":I
    :cond_1
    const-string v9, "-m requires an argument"

    invoke-direct {p0, v9}, Lcom/sleepycat/je/util/CheckSnapshot;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 168
    :cond_2
    const-string v9, "-c"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 169
    if-ge v8, v2, :cond_3

    .line 170
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "argc":I
    .restart local v9    # "argc":I
    aget-object v8, p1, v8

    new-array v10, v10, [Ljava/lang/String;

    invoke-static {v8, v10}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    move v1, v9

    goto/16 :goto_2

    .line 172
    .end local v9    # "argc":I
    .restart local v8    # "argc":I
    :cond_3
    const-string v9, "-c requires an argument"

    invoke-direct {p0, v9}, Lcom/sleepycat/je/util/CheckSnapshot;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 174
    :cond_4
    const-string v9, "-l"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 175
    if-ge v8, v2, :cond_5

    .line 176
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "argc":I
    .restart local v9    # "argc":I
    aget-object v8, p1, v8

    new-array v10, v10, [Ljava/lang/String;

    invoke-static {v8, v10}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    move v1, v9

    goto :goto_2

    .line 178
    .end local v9    # "argc":I
    .restart local v8    # "argc":I
    :cond_5
    const-string v9, "-l requires an argument"

    invoke-direct {p0, v9}, Lcom/sleepycat/je/util/CheckSnapshot;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :cond_6
    const-string v9, "-C"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 181
    if-ge v8, v2, :cond_7

    .line 182
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "argc":I
    .restart local v9    # "argc":I
    aget-object v6, p1, v8

    move v1, v9

    goto :goto_2

    .line 184
    .end local v9    # "argc":I
    .restart local v8    # "argc":I
    :cond_7
    const-string v9, "-C requires an argument"

    invoke-direct {p0, v9}, Lcom/sleepycat/je/util/CheckSnapshot;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :cond_8
    const-string v9, "-L"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 187
    if-ge v8, v2, :cond_9

    .line 188
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "argc":I
    .restart local v9    # "argc":I
    aget-object v7, p1, v8

    move v1, v9

    goto :goto_2

    .line 190
    .end local v9    # "argc":I
    .restart local v8    # "argc":I
    :cond_9
    const-string v9, "-L requires an argument"

    invoke-direct {p0, v9}, Lcom/sleepycat/je/util/CheckSnapshot;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 192
    :cond_a
    const-string v9, "-V"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 195
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown argument: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sleepycat/je/util/CheckSnapshot;->printUsage(Ljava/lang/String;)V

    .line 197
    .end local v1    # "thisArg":Ljava/lang/String;
    :goto_1
    move v1, v8

    .end local v8    # "argc":I
    .local v1, "argc":I
    :goto_2
    goto/16 :goto_0

    .line 193
    .local v1, "thisArg":Ljava/lang/String;
    .restart local v8    # "argc":I
    :cond_b
    new-instance v0, Lcom/sleepycat/je/util/CheckSnapshot$UsageException;

    sget-object v9, Lcom/sleepycat/je/JEVersion;->CURRENT_VERSION:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {v9}, Lcom/sleepycat/je/JEVersion;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/sleepycat/je/util/CheckSnapshot$UsageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    .end local v8    # "argc":I
    .local v1, "argc":I
    :cond_c
    if-nez v3, :cond_d

    .line 200
    const-string v8, "-m is a required argument"

    invoke-direct {p0, v8}, Lcom/sleepycat/je/util/CheckSnapshot;->printUsage(Ljava/lang/String;)V

    .line 202
    :cond_d
    if-nez v4, :cond_e

    .line 203
    const-string v8, "-c is a required argument"

    invoke-direct {p0, v8}, Lcom/sleepycat/je/util/CheckSnapshot;->printUsage(Ljava/lang/String;)V

    .line 205
    :cond_e
    if-nez v5, :cond_f

    .line 206
    const-string v8, "-l is a required argument"

    invoke-direct {p0, v8}, Lcom/sleepycat/je/util/CheckSnapshot;->printUsage(Ljava/lang/String;)V

    .line 209
    :cond_f
    :try_start_0
    invoke-static {v3}, Lcom/sleepycat/je/util/CheckSnapshot;->readManifest(Ljava/nio/file/Path;)Lcom/sleepycat/je/dbi/SnapshotManifest;

    move-result-object v8

    iput-object v8, p0, Lcom/sleepycat/je/util/CheckSnapshot;->manifest:Lcom/sleepycat/je/dbi/SnapshotManifest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 213
    nop

    .line 215
    if-eqz v6, :cond_10

    :try_start_1
    const-class v8, Lcom/sleepycat/je/BackupFileCopy;

    .line 216
    invoke-static {v8, v6}, Lcom/sleepycat/je/dbi/BackupManager;->getImplementationInstance(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/BackupFileCopy;

    goto :goto_3

    :cond_10
    new-instance v8, Lcom/sleepycat/je/BackupFSArchiveCopy;

    invoke-direct {v8}, Lcom/sleepycat/je/BackupFSArchiveCopy;-><init>()V

    :goto_3
    iput-object v8, p0, Lcom/sleepycat/je/util/CheckSnapshot;->backupCopy:Lcom/sleepycat/je/BackupFileCopy;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 222
    nop

    .line 224
    :try_start_2
    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/sleepycat/je/BackupFileCopy;->initialize(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 229
    nop

    .line 231
    if-eqz v7, :cond_11

    :try_start_3
    const-class v8, Lcom/sleepycat/je/BackupArchiveLocation;

    .line 232
    invoke-static {v8, v7}, Lcom/sleepycat/je/dbi/BackupManager;->getImplementationInstance(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/BackupArchiveLocation;

    goto :goto_4

    :cond_11
    new-instance v8, Lcom/sleepycat/je/BackupFileLocation;

    invoke-direct {v8}, Lcom/sleepycat/je/BackupFileLocation;-><init>()V

    :goto_4
    iput-object v8, p0, Lcom/sleepycat/je/util/CheckSnapshot;->backupLocation:Lcom/sleepycat/je/BackupArchiveLocation;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 238
    nop

    .line 240
    :try_start_4
    iget-object v9, p0, Lcom/sleepycat/je/util/CheckSnapshot;->manifest:Lcom/sleepycat/je/dbi/SnapshotManifest;

    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 241
    invoke-interface {v5}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v10

    .line 240
    invoke-interface {v8, v9, v10}, Lcom/sleepycat/je/BackupArchiveLocation;->initialize(Ljava/lang/String;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 246
    nop

    .line 247
    return-void

    .line 242
    :catch_0
    move-exception v8

    .line 243
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Problem initializing location class from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 235
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 236
    .local v8, "e":Ljava/lang/RuntimeException;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Problem with location class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 225
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v8

    .line 226
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Problem initializing copy class from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 219
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    .line 220
    .local v8, "e":Ljava/lang/RuntimeException;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Problem with copy class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 210
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v8

    .line 211
    .local v8, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Problem reading manifest file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private printUsage(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Lcom/sleepycat/je/util/CheckSnapshot$UsageException;

    sget-object v1, Lcom/sleepycat/je/util/CheckSnapshot;->USAGE:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/util/CheckSnapshot$UsageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/util/CheckSnapshot;->USAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readManifest(Ljava/nio/file/Path;)Lcom/sleepycat/je/dbi/SnapshotManifest;
    .locals 1
    .param p0, "manifestPath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->deserialize([B)Lcom/sleepycat/je/dbi/SnapshotManifest;

    move-result-object v0

    return-object v0
.end method

.method private verifyFiles(Ljava/lang/String;Ljava/util/Map;Ljava/io/PrintStream;)Z
    .locals 11
    .param p1, "type"    # Ljava/lang/String;
    .param p3, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;",
            ">;",
            "Ljava/io/PrintStream;",
            ")Z"
        }
    .end annotation

    .line 294
    .local p2, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    const-string v0, " log file "

    const/4 v1, 0x0

    .line 295
    .local v1, "copyCount":I
    const/4 v2, 0x1

    .line 296
    .local v2, "ok":Z
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 297
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;

    .line 298
    .local v5, "info":Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->getIsCopied()Z

    move-result v6

    if-nez v6, :cond_0

    .line 299
    goto :goto_0

    .line 301
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->getSnapshot()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, "logFile":Ljava/lang/String;
    iget-object v7, p0, Lcom/sleepycat/je/util/CheckSnapshot;->backupLocation:Lcom/sleepycat/je/BackupArchiveLocation;

    invoke-interface {v7, v6}, Lcom/sleepycat/je/BackupArchiveLocation;->getArchiveLocation(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    .line 306
    .local v7, "url":Ljava/net/URL;
    :try_start_0
    iget-object v8, p0, Lcom/sleepycat/je/util/CheckSnapshot;->backupCopy:Lcom/sleepycat/je/BackupFileCopy;

    .line 307
    invoke-interface {v8, v7}, Lcom/sleepycat/je/BackupFileCopy;->checksum(Ljava/net/URL;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/sleepycat/je/dbi/BackupManager;->checksumToHex([B)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .local v8, "archiveChecksum":Ljava/lang/String;
    nop

    .line 315
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->getChecksum()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 316
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Incorrect checksum for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 318
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->getChecksum()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 316
    invoke-virtual {p3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    const/4 v2, 0x0

    .line 322
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    .end local v5    # "info":Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
    .end local v6    # "logFile":Ljava/lang/String;
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "archiveChecksum":Ljava/lang/String;
    :cond_1
    goto/16 :goto_0

    .line 308
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    .restart local v5    # "info":Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
    .restart local v6    # "logFile":Ljava/lang/String;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v8

    goto :goto_1

    :catch_1
    move-exception v8

    .line 309
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: Problem reading checksum for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    const/4 v2, 0x0

    .line 313
    goto/16 :goto_0

    .line 323
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    .end local v5    # "info":Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
    .end local v6    # "logFile":Ljava/lang/String;
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Copied "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " log files: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 324
    return v2
.end method


# virtual methods
.method public check()Ljava/lang/String;
    .locals 7

    .line 256
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 257
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 258
    .local v1, "out":Ljava/io/PrintStream;
    const/4 v2, 0x1

    .line 259
    .local v2, "ok":Z
    iget-object v3, p0, Lcom/sleepycat/je/util/CheckSnapshot;->manifest:Lcom/sleepycat/je/dbi/SnapshotManifest;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getSnapshotFiles()Ljava/util/SortedMap;

    move-result-object v3

    const-string v4, "snapshot"

    invoke-direct {p0, v4, v3, v1}, Lcom/sleepycat/je/util/CheckSnapshot;->verifyFiles(Ljava/lang/String;Ljava/util/Map;Ljava/io/PrintStream;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 260
    const/4 v2, 0x0

    .line 262
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/util/CheckSnapshot;->manifest:Lcom/sleepycat/je/dbi/SnapshotManifest;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getErasedFiles()Ljava/util/SortedMap;

    move-result-object v3

    const-string v4, "erased"

    invoke-direct {p0, v4, v3, v1}, Lcom/sleepycat/je/util/CheckSnapshot;->verifyFiles(Ljava/lang/String;Ljava/util/Map;Ljava/io/PrintStream;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 263
    const/4 v2, 0x0

    .line 267
    :cond_1
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .local v3, "msg":Ljava/lang/String;
    nop

    .line 271
    if-eqz v2, :cond_2

    .line 274
    return-object v3

    .line 272
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 268
    .end local v3    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 269
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
