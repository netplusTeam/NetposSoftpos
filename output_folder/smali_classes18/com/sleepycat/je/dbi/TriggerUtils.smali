.class public Lcom/sleepycat/je/dbi/TriggerUtils;
.super Ljava/lang/Object;
.source "TriggerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dumpTriggers(Ljava/lang/StringBuilder;[[BLjava/util/List;)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "triggerBytes"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "[[B",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/trigger/Trigger;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p2, "triggers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/trigger/Trigger;>;"
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 146
    :cond_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/trigger/Trigger;

    .line 148
    .local v1, "trigger":Lcom/sleepycat/je/trigger/Trigger;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<trigger name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/sleepycat/je/trigger/Trigger;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" database name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    invoke-interface {v1}, Lcom/sleepycat/je/trigger/Trigger;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "null"

    goto :goto_1

    .line 151
    :cond_1
    invoke-interface {v1}, Lcom/sleepycat/je/trigger/Trigger;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" className=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 152
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .end local v1    # "trigger":Lcom/sleepycat/je/trigger/Trigger;
    goto :goto_0

    :cond_2
    goto :goto_3

    .line 157
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<trigger name=\"?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" className=\"?\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 163
    .end local v0    # "i":I
    :cond_4
    :goto_3
    return-void

    .line 140
    :cond_5
    :goto_4
    return-void
.end method

.method static logSize([[B)I
    .locals 5
    .param p0, "triggerBytes"    # [[B

    .line 39
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 40
    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v0

    return v0

    .line 44
    :cond_0
    array-length v1, p0

    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v1

    .line 45
    .local v1, "size":I
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 46
    .local v3, "trigger":[B
    invoke-static {v3}, Lcom/sleepycat/je/log/LogUtils;->getByteArrayLogSize([B)I

    move-result v4

    add-int/2addr v1, v4

    .line 45
    .end local v3    # "trigger":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_1
    return v1
.end method

.method static readTriggers(Ljava/nio/ByteBuffer;I)[[B
    .locals 4
    .param p0, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "entryVersion"    # I

    .line 83
    invoke-static {p0}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 84
    .local v0, "triggerCount":I
    if-nez v0, :cond_0

    .line 85
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [[B

    return-object v1

    .line 88
    :cond_0
    new-array v1, v0, [[B

    .line 89
    .local v1, "triggerBytes":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 90
    const/4 v3, 0x0

    .line 91
    invoke-static {p0, v3}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v3

    aput-object v3, v1, v2

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method static unmarshallTriggers(Ljava/lang/String;[[BLjava/lang/ClassLoader;)Ljava/util/LinkedList;
    .locals 5
    .param p0, "dbName"    # Ljava/lang/String;
    .param p1, "triggerBytes"    # [[B
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[[B",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/sleepycat/je/trigger/Trigger;",
            ">;"
        }
    .end annotation

    .line 110
    if-nez p1, :cond_0

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 115
    .local v0, "triggers":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sleepycat/je/trigger/Trigger;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 116
    aget-object v2, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trigger:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v2, v3, p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->bytesToObject([BLjava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/trigger/Trigger;

    .line 120
    .local v2, "trigger":Lcom/sleepycat/je/trigger/Trigger;
    invoke-interface {v2, p0}, Lcom/sleepycat/je/trigger/Trigger;->setDatabaseName(Ljava/lang/String;)Lcom/sleepycat/je/trigger/Trigger;

    .line 121
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v2    # "trigger":Lcom/sleepycat/je/trigger/Trigger;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method static writeTriggers(Ljava/nio/ByteBuffer;[[B)V
    .locals 3
    .param p0, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "triggerBytes"    # [[B

    .line 60
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 61
    invoke-static {p0, v0}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    goto :goto_1

    .line 64
    :cond_0
    array-length v1, p1

    invoke-static {p0, v1}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 65
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 66
    .local v2, "triggerByte":[B
    invoke-static {p0, v2}, Lcom/sleepycat/je/log/LogUtils;->writeByteArray(Ljava/nio/ByteBuffer;[B)V

    .line 65
    .end local v2    # "triggerByte":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    :goto_1
    return-void
.end method
