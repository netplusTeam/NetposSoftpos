.class public Lcom/sleepycat/je/dbi/DatabaseId;
.super Lcom/sleepycat/je/log/BasicVersionedWriteLoggable;
.source "DatabaseId.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/log/BasicVersionedWriteLoggable;",
        "Ljava/lang/Comparable<",
        "Lcom/sleepycat/je/dbi/DatabaseId;",
        ">;"
    }
.end annotation


# static fields
.field private static final LAST_FORMAT_CHANGE:I = 0x8


# instance fields
.field private id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/sleepycat/je/log/BasicVersionedWriteLoggable;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "id"    # J

    .line 49
    invoke-direct {p0}, Lcom/sleepycat/je/log/BasicVersionedWriteLoggable;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/sleepycat/je/dbi/DatabaseId;->id:J

    .line 51
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sleepycat/je/dbi/DatabaseId;)I
    .locals 5
    .param p1, "o"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 106
    if-eqz p1, :cond_2

    .line 110
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DatabaseId;->id:J

    iget-wide v2, p1, Lcom/sleepycat/je/dbi/DatabaseId;->id:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_0
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 113
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_1
    const/4 v0, -0x1

    return v0

    .line 107
    :cond_2
    const-string v0, "null arg"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/DatabaseId;->compareTo(Lcom/sleepycat/je/dbi/DatabaseId;)I

    move-result p1

    return p1
.end method

.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 156
    const-string v0, "<dbId id=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DatabaseId;->id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 80
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 81
    return v0

    .line 84
    :cond_0
    instance-of v1, p1, Lcom/sleepycat/je/dbi/DatabaseId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 85
    return v2

    .line 88
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/dbi/DatabaseId;

    iget-wide v3, v1, Lcom/sleepycat/je/dbi/DatabaseId;->id:J

    iget-wide v5, p0, Lcom/sleepycat/je/dbi/DatabaseId;->id:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/utilint/StringUtils;->toUTF8(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
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

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DatabaseId;->id:J

    return-wide v0
.end method

.method public getLastFormatChange()I
    .locals 1

    .line 125
    const/16 v0, 0x8

    return v0
.end method

.method public getLogSize(IZ)I
    .locals 2
    .param p1, "logVersion"    # I
    .param p2, "forReplication"    # Z

    .line 135
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DatabaseId;->id:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v0

    return v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 163
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DatabaseId;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 6
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 169
    instance-of v0, p1, Lcom/sleepycat/je/dbi/DatabaseId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 170
    return v1

    .line 172
    :cond_0
    iget-wide v2, p0, Lcom/sleepycat/je/dbi/DatabaseId;->id:J

    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/dbi/DatabaseId;

    iget-wide v4, v0, Lcom/sleepycat/je/dbi/DatabaseId;->id:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 147
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    .line 148
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DatabaseId;->id:J

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DatabaseId;->id:J

    .line 152
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DatabaseId;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;IZ)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I
    .param p3, "forReplication"    # Z

    .line 142
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DatabaseId;->id:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 143
    return-void
.end method
