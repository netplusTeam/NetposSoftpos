.class public Lcom/sleepycat/je/log/entry/RestoreRequired;
.super Ljava/lang/Object;
.source "RestoreRequired.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
    }
.end annotation


# instance fields
.field private failureType:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

.field private propVals:Ljava/lang/String;

.field private time:Lcom/sleepycat/je/utilint/Timestamp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;Ljava/util/Properties;)V
    .locals 3
    .param p1, "failureType"    # Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->failureType:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    .line 50
    new-instance v0, Lcom/sleepycat/je/utilint/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/Timestamp;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 51
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 52
    .local v0, "sw":Ljava/io/StringWriter;
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->propVals:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 99
    const-string v0, "<RestoreRequired failureType=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->failureType:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    const-string v0, "\" time=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    const-string v0, "\" properties=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->propVals:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    return-void
.end method

.method public getFailureType()Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->failureType:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    return-object v0
.end method

.method public getLogSize()I
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->failureType:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->getStringLogSize(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 78
    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getTimestampLogSize(Lcom/sleepycat/je/utilint/Timestamp;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->propVals:Ljava/lang/String;

    .line 79
    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getStringLogSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    return v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 4

    .line 64
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 65
    .local v0, "p":Ljava/util/Properties;
    new-instance v1, Ljava/io/StringReader;

    iget-object v2, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->propVals:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "reader":Ljava/io/StringReader;
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    nop

    .line 72
    return-object v0

    .line 68
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3
.end method

.method public getTransactionId()J
    .locals 2

    .line 107
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 4
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 113
    instance-of v0, p1, Lcom/sleepycat/je/log/entry/RestoreRequired;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 114
    return v1

    .line 117
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/log/entry/RestoreRequired;

    .line 118
    .local v0, "otherEntry":Lcom/sleepycat/je/log/entry/RestoreRequired;
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->time:Lcom/sleepycat/je/utilint/Timestamp;

    iget-object v3, v0, Lcom/sleepycat/je/log/entry/RestoreRequired;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/Timestamp;->equals(Lcom/sleepycat/je/utilint/Timestamp;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    return v1

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->propVals:Ljava/lang/String;

    iget-object v3, v0, Lcom/sleepycat/je/log/entry/RestoreRequired;->propVals:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    return v1

    .line 125
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 91
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/sleepycat/je/log/LogUtils;->readString(Ljava/nio/ByteBuffer;ZI)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "typeName":Ljava/lang/String;
    const-class v2, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    invoke-static {v2, v1}, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    iput-object v2, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->failureType:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    .line 93
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readTimestamp(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 94
    invoke-static {p1, v0, p2}, Lcom/sleepycat/je/log/LogUtils;->readString(Ljava/nio/ByteBuffer;ZI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->propVals:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/log/entry/RestoreRequired;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 84
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->failureType:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeTimestamp(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/utilint/Timestamp;)V

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/RestoreRequired;->propVals:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 87
    return-void
.end method
