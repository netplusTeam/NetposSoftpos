.class public Lcom/sleepycat/je/rep/NetworkRestoreConfig;
.super Ljava/lang/Object;
.source "NetworkRestoreConfig.java"


# instance fields
.field private logProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/ReplicationNode;",
            ">;"
        }
    .end annotation
.end field

.field private receiveBufferSize:I

.field private retainLogFiles:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/NetworkRestoreConfig;->retainLogFiles:Z

    .line 33
    const/high16 v0, 0x200000

    iput v0, p0, Lcom/sleepycat/je/rep/NetworkRestoreConfig;->receiveBufferSize:I

    return-void
.end method


# virtual methods
.method public getLogProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/ReplicationNode;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/sleepycat/je/rep/NetworkRestoreConfig;->logProviders:Ljava/util/List;

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/sleepycat/je/rep/NetworkRestoreConfig;->receiveBufferSize:I

    return v0
.end method

.method public getRetainLogFiles()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/NetworkRestoreConfig;->retainLogFiles:Z

    return v0
.end method

.method public setLogProviders(Ljava/util/List;)Lcom/sleepycat/je/rep/NetworkRestoreConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/ReplicationNode;",
            ">;)",
            "Lcom/sleepycat/je/rep/NetworkRestoreConfig;"
        }
    .end annotation

    .line 149
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/ReplicationNode;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/NetworkRestoreConfig;->setLogProvidersVoid(Ljava/util/List;)V

    .line 150
    return-object p0
.end method

.method public setLogProvidersVoid(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/ReplicationNode;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/ReplicationNode;>;"
    iput-object p1, p0, Lcom/sleepycat/je/rep/NetworkRestoreConfig;->logProviders:Ljava/util/List;

    .line 159
    return-void
.end method

.method public setReceiveBufferSize(I)Lcom/sleepycat/je/rep/NetworkRestoreConfig;
    .locals 3
    .param p1, "receiveBufferSize"    # I

    .line 105
    if-ltz p1, :cond_0

    .line 110
    iput p1, p0, Lcom/sleepycat/je/rep/NetworkRestoreConfig;->receiveBufferSize:I

    .line 111
    return-object p0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receiveBufferSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is negative."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReceiveBufferSizeVoid(I)V
    .locals 0
    .param p1, "receiveBufferSize"    # I

    .line 119
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/NetworkRestoreConfig;->setReceiveBufferSize(I)Lcom/sleepycat/je/rep/NetworkRestoreConfig;

    .line 120
    return-void
.end method

.method public setRetainLogFiles(Z)Lcom/sleepycat/je/rep/NetworkRestoreConfig;
    .locals 0
    .param p1, "retainLogFiles"    # Z

    .line 70
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/NetworkRestoreConfig;->setRetainLogFilesVoid(Z)V

    .line 71
    return-object p0
.end method

.method public setRetainLogFilesVoid(Z)V
    .locals 0
    .param p1, "retainLogFiles"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/NetworkRestoreConfig;->retainLogFiles:Z

    .line 80
    return-void
.end method
