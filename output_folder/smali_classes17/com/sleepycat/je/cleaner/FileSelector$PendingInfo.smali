.class Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;
.super Ljava/lang/Object;
.source "FileSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/FileSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingInfo"
.end annotation


# instance fields
.field cleaningTime:J

.field pendingDBs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            ">;"
        }
    .end annotation
.end field

.field pendingLNs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/LNInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->cleaningTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/cleaner/FileSelector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/cleaner/FileSelector$1;

    .line 93
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;-><init>()V

    return-void
.end method

.method private static getDbName(Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/EnvironmentImpl;)Ljava/lang/String;
    .locals 4
    .param p0, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 187
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    .line 188
    .local v0, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    .line 190
    .local v1, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :goto_0
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 190
    return-object v2

    .line 192
    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    throw v2
.end method


# virtual methods
.method getMessage(Ljava/lang/Long;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 11
    .param p1, "file"    # Ljava/lang/Long;
    .param p2, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p3, "dateFormat"    # Ljava/text/DateFormat;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "File 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, " cannot be deleted after checkpoint due to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, " pending entries. File cleaned at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->cleaningTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingLNs:Ljava/util/Map;

    const-string v2, "]"

    const/4 v3, 0x3

    if-eqz v1, :cond_2

    .line 133
    const-string v1, " Write lock is held on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingLNs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " records:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, "count":I
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingLNs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 139
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    add-int/lit8 v1, v1, 0x1

    .line 140
    if-le v1, v3, :cond_0

    .line 141
    const-string v4, " (only first 3 records shown)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    goto :goto_1

    .line 145
    :cond_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 147
    .local v6, "lsn":J
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v8

    .line 148
    invoke-virtual {v8}, Lcom/sleepycat/je/txn/TxnManager;->getLockManager()Lcom/sleepycat/je/txn/LockManager;

    move-result-object v8

    .line 149
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sleepycat/je/txn/LockManager;->getWriteOwnerLocker(Ljava/lang/Long;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v8

    .line 151
    .local v8, "locker":Lcom/sleepycat/je/txn/Locker;
    const-string v9, " [lsn="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {v6, v7}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v9, " db="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sleepycat/je/cleaner/LNInfo;

    invoke-virtual {v9}, Lcom/sleepycat/je/cleaner/LNInfo;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v9

    invoke-static {v9, p2}, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->getDbName(Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/EnvironmentImpl;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    if-eqz v8, :cond_1

    .line 156
    const-string v9, " locker="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/sleepycat/je/txn/Locker;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/LNInfo;>;"
    .end local v6    # "lsn":J
    .end local v8    # "locker":Lcom/sleepycat/je/txn/Locker;
    goto :goto_0

    .line 162
    .end local v1    # "count":I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingDBs:Ljava/util/Set;

    if-eqz v1, :cond_4

    .line 164
    const-string v1, " Database remove/truncate in progress on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingDBs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " DBs:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const/4 v1, 0x0

    .line 168
    .restart local v1    # "count":I
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingDBs:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/dbi/DatabaseId;

    .line 170
    .local v5, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    add-int/lit8 v1, v1, 0x1

    .line 171
    if-le v1, v3, :cond_3

    .line 172
    const-string v2, " (only first 3 DBs shown)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    goto :goto_3

    .line 176
    :cond_3
    const-string v6, " [db="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {v5, p2}, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->getDbName(Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/EnvironmentImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .end local v5    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    goto :goto_2

    .line 182
    .end local v1    # "count":I
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pendingLN = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingLNs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pendingDBs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileSelector$PendingInfo;->pendingDBs:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
