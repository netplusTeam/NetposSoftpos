.class public final Lcom/sleepycat/je/tree/dupConvert/DupCountLN;
.super Lcom/sleepycat/je/tree/LN;
.source "DupCountLN.java"


# static fields
.field private static final BEGIN_TAG:Ljava/lang/String; = "<dupCountLN>"

.field private static final END_TAG:Ljava/lang/String; = "</dupCountLN>"


# instance fields
.field private dupCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/sleepycat/je/tree/LN;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupCountLN;->dupCount:I

    .line 46
    return-void
.end method


# virtual methods
.method public beginTag()Ljava/lang/String;
    .locals 1

    .line 86
    const-string v0, "<dupCountLN>"

    return-object v0
.end method

.method public containsDuplicates()Z
    .locals 1

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method protected dumpLogAdditional(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 169
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/LN;->dumpLogAdditional(Ljava/lang/StringBuilder;Z)V

    .line 170
    const-string v0, "<count v=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/tree/dupConvert/DupCountLN;->dupCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    return-void
.end method

.method public dumpString(IZ)Ljava/lang/String;
    .locals 4
    .param p1, "nSpaces"    # I
    .param p2, "dumpTags"    # Z

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0xa

    if-eqz p2, :cond_0

    .line 98
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/dupConvert/DupCountLN;->beginTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    add-int/lit8 v2, p1, 0x2

    invoke-static {v2}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v2, "<count v=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sleepycat/je/tree/dupConvert/DupCountLN;->dupCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    const/4 v1, 0x0

    invoke-super {p0, p1, v1}, Lcom/sleepycat/je/tree/LN;->dumpString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    if-eqz p2, :cond_1

    .line 106
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/dupConvert/DupCountLN;->endTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public endTag()Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, "</dupCountLN>"

    return-object v0
.end method

.method public getDupCount()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupCountLN;->dupCount:I

    return v0
.end method

.method public getLogSize()I
    .locals 1

    .line 133
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method protected getLogType(ZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/log/LogEntryType;
    .locals 1
    .param p1, "isInsert"    # Z
    .param p2, "isTransactional"    # Z
    .param p3, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 124
    if-eqz p2, :cond_0

    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_DUPCOUNTLN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_DUPCOUNTLN:Lcom/sleepycat/je/log/LogEntryType;

    :goto_0
    return-object v0
.end method

.method public getMemorySizeIncludedByParent()J
    .locals 2

    .line 72
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->DUPCOUNTLN_OVERHEAD:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 150
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/LN;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 151
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/tree/dupConvert/DupCountLN;->dupCount:I

    .line 152
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/tree/dupConvert/DupCountLN;->dumpString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 141
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method
