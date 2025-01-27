.class public Lcom/sleepycat/je/utilint/VLSN;
.super Ljava/lang/Object;
.source "VLSN.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sleepycat/je/log/Loggable;",
        "Ljava/lang/Comparable<",
        "Lcom/sleepycat/je/utilint/VLSN;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FIRST_VLSN:Lcom/sleepycat/je/utilint/VLSN;

.field public static final LOG_SIZE:I = 0x8

.field public static final NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

.field public static final NULL_VLSN_SEQUENCE:I = -0x1

.field public static final UNINITIALIZED_VLSN_SEQUENCE:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private sequence:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/sleepycat/je/utilint/VLSN;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    sput-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 28
    new-instance v0, Lcom/sleepycat/je/utilint/VLSN;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    sput-object v0, Lcom/sleepycat/je/utilint/VLSN;->FIRST_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "sequence"    # J

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    .line 47
    return-void
.end method

.method public static isNull(J)Z
    .locals 2
    .param p0, "sequence"    # J

    .line 87
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iget-wide v0, v0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static min(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 2
    .param p0, "a"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p1, "b"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 160
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 164
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    return-object p1

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    return-object p0

    .line 169
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-gtz v0, :cond_2

    move-object v0, p0

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    return-object v0

    .line 161
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The arguments must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public compareTo(Lcom/sleepycat/je/utilint/VLSN;)I
    .locals 12
    .param p1, "other"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 124
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iget-wide v2, v2, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_0

    iget-wide v6, p1, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    cmp-long v4, v6, v2

    if-nez v4, :cond_0

    .line 126
    return v5

    .line 129
    :cond_0
    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 131
    return v1

    .line 134
    :cond_1
    iget-wide v6, p1, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    cmp-long v0, v6, v2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 136
    return v2

    .line 139
    :cond_2
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v3

    .line 140
    .local v3, "otherSequence":J
    iget-wide v6, p0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    sub-long v8, v6, v3

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_3

    .line 141
    return v2

    .line 142
    :cond_3
    cmp-long v0, v6, v3

    if-nez v0, :cond_4

    .line 143
    return v5

    .line 145
    :cond_4
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result p1

    return p1
.end method

.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 205
    const-string v0, "<vlsn v=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    return-void
.end method

.method public final equals(Lcom/sleepycat/je/utilint/VLSN;)Z
    .locals 4
    .param p1, "otherVLSN"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 70
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    iget-wide v2, p0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 58
    return v0

    .line 61
    :cond_0
    instance-of v1, p1, Lcom/sleepycat/je/utilint/VLSN;

    if-nez v1, :cond_1

    .line 62
    return v0

    .line 65
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/utilint/VLSN;

    .line 66
    .local v1, "otherVLSN":Lcom/sleepycat/je/utilint/VLSN;
    iget-wide v2, v1, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    iget-wide v4, p0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public follows(Lcom/sleepycat/je/utilint/VLSN;)Z
    .locals 7
    .param p1, "other"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 111
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    sub-long/2addr v5, v1

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0
.end method

.method public getLogSize()I
    .locals 1

    .line 177
    const/16 v0, 0x8

    return v0
.end method

.method public getNext()Lcom/sleepycat/je/utilint/VLSN;
    .locals 5

    .line 94
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->FIRST_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sleepycat/je/utilint/VLSN;

    iget-wide v1, p0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    :goto_0
    return-object v0
.end method

.method public getPrev()Lcom/sleepycat/je/utilint/VLSN;
    .locals 5

    .line 101
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/sleepycat/je/utilint/VLSN;

    sub-long/2addr v0, v2

    invoke-direct {v4, v0, v1}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v4, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    :goto_1
    return-object v4
.end method

.method public getSequence()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    return-wide v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 213
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isNull()Z
    .locals 4

    .line 83
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iget-wide v2, v2, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 6
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 222
    instance-of v0, p1, Lcom/sleepycat/je/utilint/VLSN;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 223
    return v1

    .line 226
    :cond_0
    iget-wide v2, p0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/utilint/VLSN;

    iget-wide v4, v0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 197
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    .line 198
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 231
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%,d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 185
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/VLSN;->sequence:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    .line 186
    return-void
.end method
