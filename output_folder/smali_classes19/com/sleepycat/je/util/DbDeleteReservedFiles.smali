.class public Lcom/sleepycat/je/util/DbDeleteReservedFiles;
.super Ljava/lang/Object;
.source "DbDeleteReservedFiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/util/DbDeleteReservedFiles$UsageException;
    }
.end annotation


# static fields
.field private static ONE_MB:J

.field private static final USAGE:Ljava/lang/String;


# instance fields
.field private deleteMb:J

.field private envHome:Ljava/io/File;

.field private list:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    const-wide/32 v0, 0x100000

    sput-wide v0, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->ONE_MB:J

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/util/DbDeleteReservedFiles;

    .line 77
    invoke-static {v1}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n       -h <dir> # environment home directory\n       -s <mb>  # desired size to delete in MB\n       [-l]     # list files only, do not delete\n       [-V]     # print JE version number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->USAGE:Ljava/lang/String;

    .line 75
    return-void
.end method

.method constructor <init>([Ljava/lang/String;)V
    .locals 8
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/util/DbDeleteReservedFiles$UsageException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_5

    .line 114
    aget-object v1, p1, v0

    .line 115
    .local v1, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 117
    .local v4, "val":Ljava/lang/String;
    array-length v5, p1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v0, v5, :cond_0

    add-int/lit8 v5, v0, 0x1

    aget-object v5, p1, v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 119
    aget-object v4, p1, v0

    .line 122
    :cond_0
    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v7, "-s"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    goto :goto_1

    :sswitch_1
    const-string v7, "-l"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_2
    const-string v7, "-h"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 146
    :pswitch_0
    iput-boolean v6, p0, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->list:Z

    goto :goto_2

    .line 132
    :pswitch_1
    if-eqz v4, :cond_3

    .line 136
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->deleteMb:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    nop

    .line 140
    cmp-long v2, v5, v2

    if-lez v2, :cond_2

    goto :goto_2

    .line 141
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a positive integer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->usage(Ljava/lang/String;)Lcom/sleepycat/je/util/DbDeleteReservedFiles$UsageException;

    move-result-object v2

    throw v2

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is not a number"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->usage(Ljava/lang/String;)Lcom/sleepycat/je/util/DbDeleteReservedFiles$UsageException;

    move-result-object v3

    throw v3

    .line 133
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string v2, "No value after -s"

    invoke-static {v2}, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->usage(Ljava/lang/String;)Lcom/sleepycat/je/util/DbDeleteReservedFiles$UsageException;

    move-result-object v2

    throw v2

    .line 125
    :pswitch_2
    if-eqz v4, :cond_4

    .line 128
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->envHome:Ljava/io/File;

    .line 129
    goto :goto_2

    .line 126
    :cond_4
    const-string v2, "No value after -h"

    invoke-static {v2}, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->usage(Ljava/lang/String;)Lcom/sleepycat/je/util/DbDeleteReservedFiles$UsageException;

    move-result-object v2

    throw v2

    .line 113
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 151
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->envHome:Ljava/io/File;

    if-eqz v0, :cond_7

    .line 155
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->deleteMb:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 158
    return-void

    .line 156
    :cond_6
    const-string v0, "-s is required"

    invoke-static {v0}, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->usage(Ljava/lang/String;)Lcom/sleepycat/je/util/DbDeleteReservedFiles$UsageException;

    move-result-object v0

    throw v0

    .line 152
    :cond_7
    const-string v0, "-h is required"

    invoke-static {v0}, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->usage(Ljava/lang/String;)Lcom/sleepycat/je/util/DbDeleteReservedFiles$UsageException;

    move-result-object v0

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x5db -> :sswitch_2
        0x5df -> :sswitch_1
        0x5e6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .line 93
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/util/DbDeleteReservedFiles;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/util/DbDeleteReservedFiles;-><init>([Ljava/lang/String;)V

    .line 94
    .local v0, "util":Lcom/sleepycat/je/util/DbDeleteReservedFiles;
    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->execute()Lcom/sleepycat/je/utilint/Pair;

    move-result-object v1

    .line 95
    .local v1, "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/util/SortedMap<Ljava/io/File;Ljava/lang/Long;>;>;"
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/SortedMap;

    invoke-direct {v0, v2, v3, v4}, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->printResult(JLjava/util/SortedMap;)V

    .line 96
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Lcom/sleepycat/je/util/DbDeleteReservedFiles$UsageException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "util":Lcom/sleepycat/je/util/DbDeleteReservedFiles;
    .end local v1    # "result":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Long;Ljava/util/SortedMap<Ljava/io/File;Ljava/lang/Long;>;>;"
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 102
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 97
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lcom/sleepycat/je/util/DbDeleteReservedFiles$UsageException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbDeleteReservedFiles$UsageException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 103
    .end local v0    # "e":Lcom/sleepycat/je/util/DbDeleteReservedFiles$UsageException;
    :goto_0
    nop

    .line 104
    :goto_1
    return-void
.end method

.method private printResult(JLjava/util/SortedMap;)V
    .locals 11
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/SortedMap<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p3, "files":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/io/File;Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 202
    const-string v3, "File          Size (MB) %n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "msg":Ljava/lang/StringBuilder;
    invoke-interface {p3}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 205
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 206
    .local v5, "file":Ljava/io/File;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 207
    .local v6, "len":J
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 208
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    sget-wide v9, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->ONE_MB:J

    div-long v9, v6, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v4

    .line 207
    const-string v4, "%s  %,d %n"

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "len":J
    goto :goto_0

    .line 211
    :cond_0
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Total size (MB): %,d %n"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-boolean v1, p0, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->list:Z

    if-eqz v1, :cond_1

    .line 214
    const-string v1, "Files were NOT deleted."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 216
    :cond_1
    const-string v1, "Files were deleted."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :goto_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method private static usage(Ljava/lang/String;)Lcom/sleepycat/je/util/DbDeleteReservedFiles$UsageException;
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 233
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "%n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_0
    sget-object v1, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->USAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    new-instance v1, Lcom/sleepycat/je/util/DbDeleteReservedFiles$UsageException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/util/DbDeleteReservedFiles$UsageException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method execute()Lcom/sleepycat/je/utilint/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Ljava/lang/Long;",
            "Ljava/util/SortedMap<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 162
    move-object/from16 v0, p0

    new-instance v1, Lcom/sleepycat/je/Environment;

    iget-object v2, v0, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->envHome:Ljava/io/File;

    new-instance v3, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v3}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 164
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/EnvironmentConfig;->setReadOnly(Z)Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;)V

    .line 166
    .local v1, "env":Lcom/sleepycat/je/Environment;
    invoke-static {v1}, Lcom/sleepycat/je/DbInternal;->getEnvironmentImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    .line 167
    .local v2, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v3

    .line 169
    .local v3, "fileManager":Lcom/sleepycat/je/log/FileManager;
    nop

    .line 170
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/cleaner/FileProtector;->getReservedFileInfo()Lcom/sleepycat/je/utilint/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/SortedSet;

    .line 172
    .local v4, "reservedFiles":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 173
    .local v5, "filesToDelete":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/io/File;Ljava/lang/Long;>;"
    const-wide/16 v6, 0x0

    .line 175
    .local v6, "deleteBytes":J
    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 177
    .local v9, "fileNum":Ljava/lang/Long;
    new-instance v10, Ljava/io/File;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 179
    .local v11, "len":J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v5, v10, v13}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    add-long/2addr v6, v11

    .line 182
    sget-wide v13, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->ONE_MB:J

    div-long v13, v6, v13

    move-object v15, v2

    move-object/from16 v16, v3

    .end local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v3    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .local v15, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .local v16, "fileManager":Lcom/sleepycat/je/log/FileManager;
    iget-wide v2, v0, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->deleteMb:J

    cmp-long v2, v13, v2

    if-ltz v2, :cond_0

    .line 183
    goto :goto_1

    .line 185
    .end local v9    # "fileNum":Ljava/lang/Long;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "len":J
    :cond_0
    move-object v2, v15

    move-object/from16 v3, v16

    goto :goto_0

    .line 175
    .end local v15    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v16    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .restart local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v3    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    :cond_1
    move-object v15, v2

    move-object/from16 v16, v3

    .line 187
    .end local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v3    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .restart local v15    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v16    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    :goto_1
    invoke-virtual {v1}, Lcom/sleepycat/je/Environment;->close()V

    .line 189
    iget-boolean v2, v0, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->list:Z

    if-nez v2, :cond_2

    .line 190
    invoke-interface {v5}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 191
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 192
    .end local v3    # "file":Ljava/io/File;
    goto :goto_2

    .line 195
    :cond_2
    new-instance v2, Lcom/sleepycat/je/utilint/Pair;

    sget-wide v8, Lcom/sleepycat/je/util/DbDeleteReservedFiles;->ONE_MB:J

    div-long v8, v6, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method
