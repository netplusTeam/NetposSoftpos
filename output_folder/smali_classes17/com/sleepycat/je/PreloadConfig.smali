.class public Lcom/sleepycat/je/PreloadConfig;
.super Ljava/lang/Object;
.source "PreloadConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/PreloadConfig$Phases;
    }
.end annotation


# instance fields
.field private internalMemoryLimit:J

.field private loadLNs:Z

.field private lsnBatchSize:J

.field private maxBytes:J

.field private maxMillisecs:J

.field private progressListener:Lcom/sleepycat/je/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/ProgressListener<",
            "Lcom/sleepycat/je/PreloadConfig$Phases;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/sleepycat/je/PreloadConfig;->lsnBatchSize:J

    .line 26
    iput-wide v0, p0, Lcom/sleepycat/je/PreloadConfig;->internalMemoryLimit:J

    .line 33
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/PreloadConfig;
    .locals 2

    .line 268
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/PreloadConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "willNeverOccur":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/sleepycat/je/PreloadConfig;->clone()Lcom/sleepycat/je/PreloadConfig;

    move-result-object v0

    return-object v0
.end method

.method public getInternalMemoryLimit()J
    .locals 2

    .line 259
    iget-wide v0, p0, Lcom/sleepycat/je/PreloadConfig;->internalMemoryLimit:J

    return-wide v0
.end method

.method public getLSNBatchSize()J
    .locals 2

    .line 222
    iget-wide v0, p0, Lcom/sleepycat/je/PreloadConfig;->lsnBatchSize:J

    return-wide v0
.end method

.method public getLoadLNs()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/sleepycat/je/PreloadConfig;->loadLNs:Z

    return v0
.end method

.method public getMaxBytes()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/sleepycat/je/PreloadConfig;->maxBytes:J

    return-wide v0
.end method

.method public getMaxMillisecs()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/sleepycat/je/PreloadConfig;->maxMillisecs:J

    return-wide v0
.end method

.method public getProgressListener()Lcom/sleepycat/je/ProgressListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/je/ProgressListener<",
            "Lcom/sleepycat/je/PreloadConfig$Phases;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/sleepycat/je/PreloadConfig;->progressListener:Lcom/sleepycat/je/ProgressListener;

    return-object v0
.end method

.method public setInternalMemoryLimit(J)Lcom/sleepycat/je/PreloadConfig;
    .locals 0
    .param p1, "internalMemoryLimit"    # J

    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/PreloadConfig;->setInternalMemoryLimitVoid(J)V

    .line 240
    return-object p0
.end method

.method public setInternalMemoryLimitVoid(J)V
    .locals 0
    .param p1, "internalMemoryLimit"    # J

    .line 248
    iput-wide p1, p0, Lcom/sleepycat/je/PreloadConfig;->internalMemoryLimit:J

    .line 249
    return-void
.end method

.method public setLSNBatchSize(J)Lcom/sleepycat/je/PreloadConfig;
    .locals 0
    .param p1, "lsnBatchSize"    # J

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/PreloadConfig;->setLSNBatchSizeVoid(J)V

    .line 198
    return-object p0
.end method

.method public setLSNBatchSizeVoid(J)V
    .locals 0
    .param p1, "lsnBatchSize"    # J

    .line 206
    iput-wide p1, p0, Lcom/sleepycat/je/PreloadConfig;->lsnBatchSize:J

    .line 207
    return-void
.end method

.method public setLoadLNs(Z)Lcom/sleepycat/je/PreloadConfig;
    .locals 0
    .param p1, "loadLNs"    # Z

    .line 116
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/PreloadConfig;->setLoadLNsVoid(Z)V

    .line 117
    return-object p0
.end method

.method public setLoadLNsVoid(Z)V
    .locals 0
    .param p1, "loadLNs"    # Z

    .line 125
    iput-boolean p1, p0, Lcom/sleepycat/je/PreloadConfig;->loadLNs:Z

    .line 126
    return-void
.end method

.method public setMaxBytes(J)Lcom/sleepycat/je/PreloadConfig;
    .locals 0
    .param p1, "maxBytes"    # J

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/PreloadConfig;->setMaxBytesVoid(J)V

    .line 47
    return-object p0
.end method

.method public setMaxBytesVoid(J)V
    .locals 0
    .param p1, "maxBytes"    # J

    .line 55
    iput-wide p1, p0, Lcom/sleepycat/je/PreloadConfig;->maxBytes:J

    .line 56
    return-void
.end method

.method public setMaxMillisecs(J)Lcom/sleepycat/je/PreloadConfig;
    .locals 0
    .param p1, "maxMillisecs"    # J

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/PreloadConfig;->setMaxMillisecsVoid(J)V

    .line 82
    return-object p0
.end method

.method public setMaxMillisecsVoid(J)V
    .locals 0
    .param p1, "maxMillisecs"    # J

    .line 90
    iput-wide p1, p0, Lcom/sleepycat/je/PreloadConfig;->maxMillisecs:J

    .line 91
    return-void
.end method

.method public setProgressListener(Lcom/sleepycat/je/ProgressListener;)Lcom/sleepycat/je/PreloadConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/ProgressListener<",
            "Lcom/sleepycat/je/PreloadConfig$Phases;",
            ">;)",
            "Lcom/sleepycat/je/PreloadConfig;"
        }
    .end annotation

    .line 161
    .local p1, "progressListener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/PreloadConfig$Phases;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/PreloadConfig;->setProgressListenerVoid(Lcom/sleepycat/je/ProgressListener;)V

    .line 162
    return-object p0
.end method

.method public setProgressListenerVoid(Lcom/sleepycat/je/ProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/ProgressListener<",
            "Lcom/sleepycat/je/PreloadConfig$Phases;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p1, "progressListener":Lcom/sleepycat/je/ProgressListener;, "Lcom/sleepycat/je/ProgressListener<Lcom/sleepycat/je/PreloadConfig$Phases;>;"
    iput-object p1, p0, Lcom/sleepycat/je/PreloadConfig;->progressListener:Lcom/sleepycat/je/ProgressListener;

    .line 172
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/PreloadConfig;->maxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmaxMillisecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/PreloadConfig;->maxMillisecs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nloadLNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/PreloadConfig;->loadLNs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nlsnBatchSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/PreloadConfig;->lsnBatchSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ninternalMemoryLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/PreloadConfig;->internalMemoryLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
