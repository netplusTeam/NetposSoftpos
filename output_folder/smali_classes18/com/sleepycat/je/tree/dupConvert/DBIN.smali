.class public final Lcom/sleepycat/je/tree/dupConvert/DBIN;
.super Lcom/sleepycat/je/tree/BIN;
.source "DBIN.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# static fields
.field private static final BEGIN_TAG:Ljava/lang/String; = "<dbin>"

.field private static final END_TAG:Ljava/lang/String; = "</dbin>"


# instance fields
.field private dupKey:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/sleepycat/je/tree/BIN;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V
    .locals 1
    .param p1, "marker"    # Lcom/sleepycat/je/utilint/SizeofMarker;

    .line 52
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/BIN;-><init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DBIN;->dupKey:[B

    .line 54
    return-void
.end method


# virtual methods
.method public beginTag()Ljava/lang/String;
    .locals 1

    .line 77
    const-string v0, "<dbin>"

    return-object v0
.end method

.method public containsDuplicates()Z
    .locals 1

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method protected dumpLogAdditional(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 152
    invoke-super {p0, p1}, Lcom/sleepycat/je/tree/BIN;->dumpLogAdditional(Ljava/lang/StringBuilder;)V

    .line 153
    iget-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DBIN;->dupKey:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    return-void
.end method

.method public dumpString(IZ)Ljava/lang/String;
    .locals 4
    .param p1, "nSpaces"    # I
    .param p2, "dumpTags"    # Z

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/dupConvert/DBIN;->beginTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    add-int/lit8 v2, p1, 0x2

    invoke-static {v2}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v2, "<dupkey>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v2, p0, Lcom/sleepycat/je/tree/dupConvert/DBIN;->dupKey:[B

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, "</dupkey>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    invoke-super {p0, p1, v3}, Lcom/sleepycat/je/tree/BIN;->dumpString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/dupConvert/DBIN;->endTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public endTag()Ljava/lang/String;
    .locals 1

    .line 82
    const-string v0, "</dbin>"

    return-object v0
.end method

.method protected getFixedMemoryOverhead()J
    .locals 2

    .line 72
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->DBIN_FIXED_OVERHEAD:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLogSize()I
    .locals 1

    .line 126
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public getLogType()Lcom/sleepycat/je/log/LogEntryType;
    .locals 1

    .line 114
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_DBIN:Lcom/sleepycat/je/log/LogEntryType;

    return-object v0
.end method

.method public isDBIN()Z
    .locals 1

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 143
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/BIN;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 144
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/dupConvert/DBIN;->dupKey:[B

    .line 145
    return-void
.end method

.method public shortClassName()Ljava/lang/String;
    .locals 1

    .line 158
    const-string v0, "DBIN"

    return-object v0
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 134
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method
