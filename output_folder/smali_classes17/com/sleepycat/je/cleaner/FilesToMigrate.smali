.class Lcom/sleepycat/je/cleaner/FilesToMigrate;
.super Ljava/lang/Object;
.source "FilesToMigrate.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private checkLogVersion:Z

.field private final env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private forceCleanFiles:[J

.field private nextAvailable:Z

.field private nextFile:J

.field private upgradeToVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 3
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 71
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_FORCE_CLEAN_FILES:Lcom/sleepycat/je/config/ConfigParam;

    .line 72
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "forceCleanProp":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sleepycat/je/cleaner/FilesToMigrate;->parseForceCleanFiles(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_UPGRADE_TO_LOG_VERSION:Lcom/sleepycat/je/config/IntConfigParam;

    .line 76
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->upgradeToVersion:I

    .line 77
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 78
    const/16 v1, 0x11

    iput v1, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->upgradeToVersion:I

    .line 81
    :cond_0
    iget v1, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->upgradeToVersion:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->checkLogVersion:Z

    .line 82
    iput-boolean v2, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->nextAvailable:Z

    .line 83
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->nextFile:J

    .line 84
    return-void
.end method

.method private isForceCleanFile(J)Z
    .locals 6
    .param p1, "file"    # J

    .line 159
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->forceCleanFiles:[J

    if-eqz v0, :cond_1

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->forceCleanFiles:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 161
    aget-wide v2, v1, v0

    .line 162
    .local v2, "from":J
    add-int/lit8 v4, v0, 0x1

    aget-wide v4, v1, v4

    .line 163
    .local v4, "to":J
    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    cmp-long v1, p1, v4

    if-gtz v1, :cond_0

    .line 164
    const/4 v1, 0x1

    return v1

    .line 160
    .end local v2    # "from":J
    .end local v4    # "to":J
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 168
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private parseForceCleanFiles(Ljava/lang/String;)V
    .locals 14
    .param p1, "propValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 181
    const-string v0, "Invalid hex file number: "

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 184
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_FORCE_CLEAN_FILES:Lcom/sleepycat/je/config/ConfigParam;

    .line 185
    invoke-virtual {v2}, Lcom/sleepycat/je/config/ConfigParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "errPrefix":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ",-"

    const/4 v4, 0x1

    invoke-direct {v2, p1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    .local v2, "tokens":Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 197
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "fromStr":Ljava/lang/String;
    const/16 v5, 0x10

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    .local v6, "fromNum":J
    nop

    .line 207
    const-wide/16 v8, -0x1

    .line 208
    .local v8, "toNum":J
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 211
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 212
    .local v10, "delim":Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 213
    move-wide v8, v6

    goto :goto_1

    .line 214
    :cond_1
    const-string v11, "-"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 217
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 218
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 220
    .local v11, "toStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v11, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v8, v12

    .line 226
    nop

    .line 227
    .end local v11    # "toStr":Ljava/lang/String;
    nop

    .line 236
    .end local v10    # "delim":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 221
    .restart local v10    # "delim":Ljava/lang/String;
    .restart local v11    # "toStr":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 222
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 228
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v11    # "toStr":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "Expected file number: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "Expected \'-\' or \',\': "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    .end local v10    # "delim":Ljava/lang/String;
    :cond_4
    move-wide v8, v6

    .line 240
    :goto_2
    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_5

    .line 241
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v4    # "fromStr":Ljava/lang/String;
    .end local v6    # "fromNum":J
    .end local v8    # "toNum":J
    goto/16 :goto_0

    .line 240
    .restart local v4    # "fromStr":Ljava/lang/String;
    .restart local v6    # "fromNum":J
    .restart local v8    # "toNum":J
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 201
    .end local v6    # "fromNum":J
    .end local v8    # "toNum":J
    :catch_1
    move-exception v5

    .line 202
    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 245
    .end local v4    # "fromStr":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->forceCleanFiles:[J

    .line 246
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->forceCleanFiles:[J

    array-length v5, v4

    if-ge v0, v5, :cond_8

    .line 247
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v4, v0

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 182
    .end local v0    # "i":I
    .end local v1    # "errPrefix":Ljava/lang/String;
    .end local v2    # "tokens":Ljava/util/StringTokenizer;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_7
    :goto_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->forceCleanFiles:[J

    .line 250
    :cond_8
    return-void
.end method


# virtual methods
.method hasNext(Ljava/util/SortedMap;Ljava/util/Set;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/FileSummary;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 92
    .local p1, "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .local p2, "inProgressFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->nextAvailable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 94
    return v1

    .line 96
    :cond_0
    const-wide/16 v2, -0x1

    .line 98
    .local v2, "foundFile":J
    iget-wide v4, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->nextFile:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 99
    .local v6, "file":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0, v6, v7}, Lcom/sleepycat/je/cleaner/FilesToMigrate;->isForceCleanFile(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    move-wide v2, v6

    .line 105
    goto :goto_2

    .line 106
    :cond_2
    iget-boolean v4, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->checkLogVersion:Z

    if-eqz v4, :cond_4

    .line 108
    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 109
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Lcom/sleepycat/je/log/FileManager;->getFileLogVersion(J)I

    move-result v4

    .line 110
    .local v4, "logVersion":I
    iget v8, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->upgradeToVersion:I

    if-ge v4, v8, :cond_3

    .line 112
    move-wide v2, v6

    .line 113
    goto :goto_2

    .line 120
    :cond_3
    iput-boolean v5, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->checkLogVersion:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v4    # "logVersion":I
    goto :goto_1

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/RuntimeException;
    iput-wide v6, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->nextFile:J

    .line 125
    throw v0

    .line 128
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "file":J
    :cond_4
    :goto_1
    goto :goto_0

    .line 129
    :cond_5
    :goto_2
    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-eqz v0, :cond_6

    .line 130
    iput-wide v2, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->nextFile:J

    .line 131
    iput-boolean v1, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->nextAvailable:Z

    .line 132
    return v1

    .line 134
    :cond_6
    return v5
.end method

.method next(Ljava/util/SortedMap;Ljava/util/Set;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/FileSummary;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 146
    .local p1, "fileSummaryMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .local p2, "inProgressFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/cleaner/FilesToMigrate;->hasNext(Ljava/util/SortedMap;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->nextAvailable:Z

    .line 148
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/FilesToMigrate;->nextFile:J

    return-wide v0

    .line 150
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
