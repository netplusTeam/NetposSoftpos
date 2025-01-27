.class public final Lcom/sleepycat/je/tree/dupConvert/DIN;
.super Lcom/sleepycat/je/tree/IN;
.source "DIN.java"


# static fields
.field private static final BEGIN_TAG:Ljava/lang/String; = "<din>"

.field private static final END_TAG:Ljava/lang/String; = "</din>"


# instance fields
.field private dupCountLNRef:Lcom/sleepycat/je/tree/ChildReference;

.field private dupKey:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Lcom/sleepycat/je/tree/IN;-><init>()V

    .line 55
    new-instance v0, Lcom/sleepycat/je/tree/ChildReference;

    invoke-direct {v0}, Lcom/sleepycat/je/tree/ChildReference;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DIN;->dupCountLNRef:Lcom/sleepycat/je/tree/ChildReference;

    .line 56
    sget-object v0, Lcom/sleepycat/je/tree/Key;->EMPTY_KEY:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/sleepycat/je/tree/dupConvert/DIN;->init(Lcom/sleepycat/je/dbi/DatabaseImpl;[BII)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V
    .locals 1
    .param p1, "marker"    # Lcom/sleepycat/je/utilint/SizeofMarker;

    .line 64
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;-><init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DIN;->dupKey:[B

    .line 66
    return-void
.end method


# virtual methods
.method public beginTag()Ljava/lang/String;
    .locals 1

    .line 198
    const-string v0, "<din>"

    return-object v0
.end method

.method public computeMemorySize()J
    .locals 4

    .line 93
    invoke-super {p0}, Lcom/sleepycat/je/tree/IN;->computeMemorySize()J

    move-result-wide v0

    .line 94
    .local v0, "size":J
    iget-object v2, p0, Lcom/sleepycat/je/tree/dupConvert/DIN;->dupCountLNRef:Lcom/sleepycat/je/tree/ChildReference;

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/ChildReference;->getKey()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 96
    iget-object v2, p0, Lcom/sleepycat/je/tree/dupConvert/DIN;->dupCountLNRef:Lcom/sleepycat/je/tree/ChildReference;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/ChildReference;->getTarget()Lcom/sleepycat/je/tree/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/sleepycat/je/tree/dupConvert/DIN;->dupCountLNRef:Lcom/sleepycat/je/tree/ChildReference;

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/ChildReference;->getTarget()Lcom/sleepycat/je/tree/Node;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/Node;->getMemorySizeIncludedByParent()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 101
    :cond_0
    return-wide v0
.end method

.method public containsDuplicates()Z
    .locals 1

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method protected dumpLogAdditional(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 185
    invoke-super {p0, p1}, Lcom/sleepycat/je/tree/IN;->dumpLogAdditional(Ljava/lang/StringBuilder;)V

    .line 186
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DIN;->dupKey:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DIN;->dupCountLNRef:Lcom/sleepycat/je/tree/ChildReference;

    if-eqz v0, :cond_0

    .line 188
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/tree/ChildReference;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 190
    :cond_0
    return-void
.end method

.method public dumpString(IZ)Ljava/lang/String;
    .locals 6
    .param p1, "nSpaces"    # I
    .param p2, "dumpTags"    # Z

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0xa

    if-eqz p2, :cond_0

    .line 214
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/dupConvert/DIN;->beginTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    :cond_0
    add-int/lit8 v2, p1, 0x2

    invoke-static {v2}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v2, "<dupkey>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v2, p0, Lcom/sleepycat/je/tree/dupConvert/DIN;->dupKey:[B

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_0

    .line 222
    :cond_1
    invoke-static {v2, v3}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v2

    .line 221
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v2, "</dupkey>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    iget-object v2, p0, Lcom/sleepycat/je/tree/dupConvert/DIN;->dupCountLNRef:Lcom/sleepycat/je/tree/ChildReference;

    if-nez v2, :cond_2

    .line 226
    add-int/lit8 v2, p1, 0x2

    invoke-static {v2}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string v2, "<dupCountLN/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 229
    :cond_2
    add-int/lit8 v4, p1, 0x4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/je/tree/ChildReference;->dumpString(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    invoke-super {p0, p1, v3}, Lcom/sleepycat/je/tree/IN;->dumpString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    if-eqz p2, :cond_3

    .line 235
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/dupConvert/DIN;->endTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public endTag()Ljava/lang/String;
    .locals 1

    .line 203
    const-string v0, "</din>"

    return-object v0
.end method

.method public getDupCountLNRef()Lcom/sleepycat/je/tree/ChildReference;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DIN;->dupCountLNRef:Lcom/sleepycat/je/tree/ChildReference;

    return-object v0
.end method

.method protected getFixedMemoryOverhead()J
    .locals 2

    .line 128
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->DIN_FIXED_OVERHEAD:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLogSize()I
    .locals 1

    .line 148
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public getLogType()Lcom/sleepycat/je/log/LogEntryType;
    .locals 1

    .line 140
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_DIN:Lcom/sleepycat/je/log/LogEntryType;

    return-object v0
.end method

.method public isDIN()Z
    .locals 1

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method protected printMemorySize()J
    .locals 12

    .line 107
    invoke-super {p0}, Lcom/sleepycat/je/tree/IN;->printMemorySize()J

    move-result-wide v0

    .line 108
    .local v0, "inTotal":J
    const-wide/16 v2, 0x0

    .line 109
    .local v2, "dupKeySize":J
    const-wide/16 v4, 0x0

    .line 111
    .local v4, "dupLNSize":J
    iget-object v6, p0, Lcom/sleepycat/je/tree/dupConvert/DIN;->dupCountLNRef:Lcom/sleepycat/je/tree/ChildReference;

    if-eqz v6, :cond_0

    .line 112
    nop

    .line 113
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/ChildReference;->getKey()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v6}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v6

    int-to-long v2, v6

    .line 114
    iget-object v6, p0, Lcom/sleepycat/je/tree/dupConvert/DIN;->dupCountLNRef:Lcom/sleepycat/je/tree/ChildReference;

    invoke-virtual {v6}, Lcom/sleepycat/je/tree/ChildReference;->getTarget()Lcom/sleepycat/je/tree/Node;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 115
    iget-object v6, p0, Lcom/sleepycat/je/tree/dupConvert/DIN;->dupCountLNRef:Lcom/sleepycat/je/tree/ChildReference;

    .line 116
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/ChildReference;->getTarget()Lcom/sleepycat/je/tree/Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/tree/Node;->getMemorySizeIncludedByParent()J

    move-result-wide v4

    .line 120
    :cond_0
    add-long v6, v0, v2

    add-long/2addr v6, v4

    .line 121
    .local v6, "dupTotal":J
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 122
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    .line 121
    const-string v10, "DIN: %d dkey: %d ln: %d %n"

    invoke-virtual {v8, v10, v9}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 123
    return-wide v6
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 6
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 165
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-ge p2, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 166
    .local v2, "unpacked":Z
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/IN;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 167
    invoke-static {p1, v2}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/tree/dupConvert/DIN;->dupKey:[B

    .line 170
    const/4 v3, 0x0

    .line 171
    .local v3, "dupCountLNRefExists":Z
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 172
    .local v4, "booleans":B
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_1

    move v0, v1

    .line 173
    .end local v3    # "dupCountLNRefExists":Z
    .local v0, "dupCountLNRefExists":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 174
    iget-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/DIN;->dupCountLNRef:Lcom/sleepycat/je/tree/ChildReference;

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/tree/ChildReference;->readFromLog(Ljava/nio/ByteBuffer;I)V

    goto :goto_1

    .line 176
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/tree/dupConvert/DIN;->dupCountLNRef:Lcom/sleepycat/je/tree/ChildReference;

    .line 178
    :goto_1
    return-void
.end method

.method public shortClassName()Ljava/lang/String;
    .locals 1

    .line 248
    const-string v0, "DIN"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 243
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/tree/dupConvert/DIN;->dumpString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 156
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method
