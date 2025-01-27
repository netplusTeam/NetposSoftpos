.class public Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;
.super Lcom/sleepycat/je/log/BasicVersionedWriteLoggable;
.source "ReplicatedDatabaseConfig.java"


# static fields
.field private static final LAST_FORMAT_CHANGE:I = 0x8


# instance fields
.field private btreeComparatorBytes:[B

.field private duplicateComparatorBytes:[B

.field private flags:B

.field private maxTreeEntriesPerNode:I

.field private triggerBytes:[[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/sleepycat/je/log/BasicVersionedWriteLoggable;-><init>()V

    .line 43
    sget-object v0, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->btreeComparatorBytes:[B

    .line 44
    sget-object v0, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->duplicateComparatorBytes:[B

    .line 45
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [[B

    iput-object v0, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->triggerBytes:[[B

    .line 49
    return-void
.end method

.method constructor <init>(BI[B[B[[B)V
    .locals 2
    .param p1, "flags"    # B
    .param p2, "maxTreeEntriesPerNode"    # I
    .param p3, "btreeComparatorBytes"    # [B
    .param p4, "duplicateComparatorBytes"    # [B
    .param p5, "triggerBytes"    # [[B

    .line 56
    invoke-direct {p0}, Lcom/sleepycat/je/log/BasicVersionedWriteLoggable;-><init>()V

    .line 43
    sget-object v0, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->btreeComparatorBytes:[B

    .line 44
    sget-object v0, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->duplicateComparatorBytes:[B

    .line 45
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [[B

    iput-object v0, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->triggerBytes:[[B

    .line 58
    iput-byte p1, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->flags:B

    .line 59
    iput p2, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->maxTreeEntriesPerNode:I

    .line 61
    if-eqz p3, :cond_0

    .line 62
    iput-object p3, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->btreeComparatorBytes:[B

    .line 65
    :cond_0
    if-eqz p4, :cond_1

    .line 66
    iput-object p4, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->duplicateComparatorBytes:[B

    .line 69
    :cond_1
    if-eqz p5, :cond_2

    .line 70
    iput-object p5, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->triggerBytes:[[B

    .line 72
    :cond_2
    return-void
.end method


# virtual methods
.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 176
    const-string v0, "<config "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->flags:B

    invoke-static {p1, p2, v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->dumpFlags(Ljava/lang/StringBuilder;ZB)V

    .line 178
    const-string v0, " btcmpSet=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->btreeComparatorBytes:[B

    sget-object v2, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    const-string v0, "\" dupcmpSet=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->duplicateComparatorBytes:[B

    sget-object v2, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v0, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->triggerBytes:[[B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/dbi/TriggerUtils;->dumpTriggers(Ljava/lang/StringBuilder;[[BLjava/util/List;)V

    .line 184
    const-string v0, " />"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    return-void
.end method

.method public getEmbeddedLoggables()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/log/VersionedWriteLoggable;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastFormatChange()I
    .locals 1

    .line 123
    const/16 v0, 0x8

    return v0
.end method

.method public getLogSize(IZ)I
    .locals 2
    .param p1, "logVersion"    # I
    .param p2, "forReplication"    # Z

    .line 133
    iget v0, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->maxTreeEntriesPerNode:I

    .line 134
    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->btreeComparatorBytes:[B

    .line 135
    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getByteArrayLogSize([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->duplicateComparatorBytes:[B

    .line 136
    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getByteArrayLogSize([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->triggerBytes:[[B

    .line 137
    invoke-static {v1}, Lcom/sleepycat/je/dbi/TriggerUtils;->logSize([[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    return v0
.end method

.method public getReplicaConfig(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/DatabaseConfig;
    .locals 6
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 79
    new-instance v0, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 80
    .local v0, "replicaConfig":Lcom/sleepycat/je/DatabaseConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setTransactional(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 81
    iget-byte v2, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->flags:B

    .line 82
    invoke-static {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates(B)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/DatabaseConfig;->setSortedDuplicates(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 89
    iget-byte v2, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->flags:B

    invoke-static {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyPrefixing(B)Z

    move-result v2

    if-nez v2, :cond_1

    iget-byte v2, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->flags:B

    .line 90
    invoke-static {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates(B)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 89
    :goto_1
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/DatabaseConfig;->setKeyPrefixing(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 91
    iget-byte v2, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->flags:B

    invoke-static {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTemporary(B)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/DatabaseConfig;->setTemporary(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 92
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setReplicated(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 93
    iget v1, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->maxTreeEntriesPerNode:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setNodeMaxEntries(I)Lcom/sleepycat/je/DatabaseConfig;

    .line 95
    new-instance v1, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;

    iget-object v2, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->btreeComparatorBytes:[B

    .line 98
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "BtreeComparator"

    invoke-direct {v1, v2, v4, v3}, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;-><init>([BLjava/lang/String;Ljava/lang/ClassLoader;)V

    .line 99
    .local v1, "reader":Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->isClass()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->getComparatorClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/DatabaseConfig;->setBtreeComparator(Ljava/lang/Class;)Lcom/sleepycat/je/DatabaseConfig;

    goto :goto_2

    .line 102
    :cond_2
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/DatabaseConfig;->setBtreeComparator(Ljava/util/Comparator;)Lcom/sleepycat/je/DatabaseConfig;

    .line 105
    :goto_2
    new-instance v2, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;

    iget-object v3, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->duplicateComparatorBytes:[B

    .line 107
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "DuplicateComparator"

    invoke-direct {v2, v3, v5, v4}, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;-><init>([BLjava/lang/String;Ljava/lang/ClassLoader;)V

    move-object v1, v2

    .line 108
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->isClass()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->getComparatorClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/DatabaseConfig;->setDuplicateComparator(Ljava/lang/Class;)Lcom/sleepycat/je/DatabaseConfig;

    goto :goto_3

    .line 111
    :cond_3
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl$ComparatorReader;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/DatabaseConfig;->setDuplicateComparator(Ljava/util/Comparator;)Lcom/sleepycat/je/DatabaseConfig;

    .line 114
    :goto_3
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->triggerBytes:[[B

    .line 116
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 115
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/dbi/TriggerUtils;->unmarshallTriggers(Ljava/lang/String;[[BLjava/lang/ClassLoader;)Ljava/util/LinkedList;

    move-result-object v2

    .line 114
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/DatabaseConfig;->setTriggers(Ljava/util/List;)Lcom/sleepycat/je/DatabaseConfig;

    .line 118
    return-object v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 189
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 4
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 194
    instance-of v0, p1, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 195
    return v1

    .line 198
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    .line 201
    .local v0, "otherConfig":Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;
    iget-byte v2, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->flags:B

    iget-byte v3, v0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->flags:B

    if-eq v2, v3, :cond_1

    .line 202
    return v1

    .line 205
    :cond_1
    iget v2, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->maxTreeEntriesPerNode:I

    iget v3, v0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->maxTreeEntriesPerNode:I

    if-eq v2, v3, :cond_2

    .line 207
    return v1

    .line 210
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->btreeComparatorBytes:[B

    iget-object v3, v0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->btreeComparatorBytes:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_3

    .line 212
    return v1

    .line 215
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->duplicateComparatorBytes:[B

    iget-object v3, v0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->duplicateComparatorBytes:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    .line 217
    return v1

    .line 220
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 158
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->flags:B

    .line 159
    nop

    .line 160
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->maxTreeEntriesPerNode:I

    .line 161
    const/16 v1, 0x8

    if-ge p2, v1, :cond_0

    .line 163
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;Z)I

    .line 165
    :cond_0
    nop

    .line 166
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->btreeComparatorBytes:[B

    .line 167
    nop

    .line 168
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->duplicateComparatorBytes:[B

    .line 169
    if-ge p2, v1, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [[B

    goto :goto_0

    .line 171
    :cond_1
    invoke-static {p1, p2}, Lcom/sleepycat/je/dbi/TriggerUtils;->readTriggers(Ljava/nio/ByteBuffer;I)[[B

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->triggerBytes:[[B

    .line 172
    return-void
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;IZ)V
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I
    .param p3, "forReplication"    # Z

    .line 144
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->flags:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 145
    iget v0, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->maxTreeEntriesPerNode:I

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 146
    iget-object v0, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->btreeComparatorBytes:[B

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeByteArray(Ljava/nio/ByteBuffer;[B)V

    .line 147
    iget-object v0, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->duplicateComparatorBytes:[B

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeByteArray(Ljava/nio/ByteBuffer;[B)V

    .line 148
    iget-object v0, p0, Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;->triggerBytes:[[B

    invoke-static {p1, v0}, Lcom/sleepycat/je/dbi/TriggerUtils;->writeTriggers(Ljava/nio/ByteBuffer;[[B)V

    .line 149
    return-void
.end method
