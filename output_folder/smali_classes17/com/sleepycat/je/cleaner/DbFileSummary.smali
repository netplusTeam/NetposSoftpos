.class public Lcom/sleepycat/je/cleaner/DbFileSummary;
.super Ljava/lang/Object;
.source "DbFileSummary.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public obsoleteINCount:I

.field public obsoleteLNCount:I

.field public obsoleteLNSize:I

.field public obsoleteLNSizeCounted:I

.field public totalINCount:I

.field public totalINSize:I

.field public totalLNCount:I

.field public totalLNSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/cleaner/DbFileSummary;
    .locals 2

    .line 116
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/DbFileSummary;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/DbFileSummary;->clone()Lcom/sleepycat/je/cleaner/DbFileSummary;

    move-result-object v0

    return-object v0
.end method

.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 78
    const-string v0, "<summary totalINCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummary;->totalINCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v0, "\" totalINSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummary;->totalINSize:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v0, "\" totalLNCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummary;->totalLNCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v0, "\" totalLNSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummary;->totalLNSize:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v0, "\" obsoleteINCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummary;->obsoleteINCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string v0, "\" obsoleteLNCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummary;->obsoleteLNCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v0, "\" obsoleteLNSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummary;->obsoleteLNSize:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v0, "\" obsoleteLNSizeCounted=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummary;->obsoleteLNSizeCounted:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    return-void
.end method

.method public getLogSize()I
    .locals 1

    .line 48
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 102
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "entryTypeVersion"    # I

    .line 63
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummary;->totalINCount:I

    .line 64
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummary;->totalINSize:I

    .line 65
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummary;->totalLNCount:I

    .line 66
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummary;->totalLNSize:I

    .line 67
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummary;->obsoleteINCount:I

    .line 68
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummary;->obsoleteLNCount:I

    .line 69
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummary;->obsoleteLNSize:I

    .line 70
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummary;->obsoleteLNSizeCounted:I

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/cleaner/DbFileSummary;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 55
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method
