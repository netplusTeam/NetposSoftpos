.class public Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;
.super Ljava/lang/Object;
.source "LDiffConfig.java"


# static fields
.field private static final DEFAULT_BLOCK_SIZE:I = 0x2000

.field private static final DEFAULT_MAX_ERRORS:I


# instance fields
.field private blockSize:I

.field private diffAnalysis:Z

.field private maxConnectionAttempts:I

.field private maxErrors:I

.field private reconnectDelay:I

.field public verbose:Z

.field private waitIfBusy:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->maxErrors:I

    .line 21
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->diffAnalysis:Z

    .line 22
    const/16 v1, 0x2000

    iput v1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->blockSize:I

    .line 23
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->waitIfBusy:Z

    .line 24
    const/4 v1, 0x1

    iput v1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->maxConnectionAttempts:I

    .line 25
    iput v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->reconnectDelay:I

    .line 26
    iput-boolean v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->verbose:Z

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->blockSize:I

    return v0
.end method

.method public getDiffAnalysis()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->diffAnalysis:Z

    return v0
.end method

.method public getMaxConnectionAttempts()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->maxConnectionAttempts:I

    return v0
.end method

.method public getMaxErrors()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->maxErrors:I

    return v0
.end method

.method public getReconnectDelay()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->reconnectDelay:I

    return v0
.end method

.method public getVerbose()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->verbose:Z

    return v0
.end method

.method public getWaitIfBusy()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->waitIfBusy:Z

    return v0
.end method

.method public setBlockSize(I)Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;
    .locals 0
    .param p1, "size"    # I

    .line 110
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->setBlockSizeVoid(I)V

    .line 111
    return-object p0
.end method

.method public setBlockSizeVoid(I)V
    .locals 0
    .param p1, "size"    # I

    .line 119
    iput p1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->blockSize:I

    .line 120
    return-void
.end method

.method public setDiffAnalysis(Z)Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;
    .locals 0
    .param p1, "analysis"    # Z

    .line 79
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->setDiffAnalysisVoid(Z)V

    .line 80
    return-object p0
.end method

.method public setDiffAnalysisVoid(Z)V
    .locals 0
    .param p1, "analysis"    # Z

    .line 88
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->diffAnalysis:Z

    .line 89
    return-void
.end method

.method public setMaxConnectionAttempts(I)Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;
    .locals 0
    .param p1, "maxAttempts"    # I

    .line 186
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->setMaxConnectionAttemptsVoid(I)V

    .line 187
    return-object p0
.end method

.method public setMaxConnectionAttemptsVoid(I)V
    .locals 0
    .param p1, "maxAttempts"    # I

    .line 195
    iput p1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->maxConnectionAttempts:I

    .line 196
    return-void
.end method

.method public setMaxErrors(I)Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;
    .locals 0
    .param p1, "max"    # I

    .line 48
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->setMaxErrorsVoid(I)V

    .line 49
    return-object p0
.end method

.method public setMaxErrorsVoid(I)V
    .locals 0
    .param p1, "max"    # I

    .line 57
    iput p1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->maxErrors:I

    .line 58
    return-void
.end method

.method public setReconnectDelay(I)Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;
    .locals 0
    .param p1, "delay"    # I

    .line 203
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->setReconnectDelayVoid(I)V

    .line 204
    return-object p0
.end method

.method public setReconnectDelayVoid(I)V
    .locals 0
    .param p1, "delay"    # I

    .line 212
    iput p1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->reconnectDelay:I

    .line 213
    return-void
.end method

.method public setVerbose(Z)Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;
    .locals 0
    .param p1, "verbose"    # Z

    .line 233
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->verbose:Z

    .line 234
    return-object p0
.end method

.method public setVerboseVoid(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 242
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->verbose:Z

    .line 243
    return-void
.end method

.method public setWaitIfBusy(ZII)Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;
    .locals 0
    .param p1, "wait"    # Z
    .param p2, "maxAttempts"    # I
    .param p3, "delay"    # I

    .line 167
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->waitIfBusy:Z

    .line 168
    iput p2, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->maxConnectionAttempts:I

    .line 169
    iput p3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->reconnectDelay:I

    .line 170
    return-object p0
.end method

.method public setWaitIfBusyVoid(Z)V
    .locals 0
    .param p1, "wait"    # Z

    .line 178
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->waitIfBusy:Z

    .line 179
    return-void
.end method
