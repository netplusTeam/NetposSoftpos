.class public Lcom/sleepycat/je/CheckpointConfig;
.super Ljava/lang/Object;
.source "CheckpointConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/sleepycat/je/CheckpointConfig;


# instance fields
.field private force:Z

.field private kBytes:I

.field private minimizeRecoveryTime:Z

.field private minutes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/sleepycat/je/CheckpointConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/CheckpointConfig;-><init>()V

    sput-object v0, Lcom/sleepycat/je/CheckpointConfig;->DEFAULT:Lcom/sleepycat/je/CheckpointConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/CheckpointConfig;->force:Z

    .line 29
    iput v0, p0, Lcom/sleepycat/je/CheckpointConfig;->kBytes:I

    .line 30
    iput v0, p0, Lcom/sleepycat/je/CheckpointConfig;->minutes:I

    .line 31
    iput-boolean v0, p0, Lcom/sleepycat/je/CheckpointConfig;->minimizeRecoveryTime:Z

    .line 38
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/CheckpointConfig;
    .locals 2

    .line 181
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/CheckpointConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
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

    .line 20
    invoke-virtual {p0}, Lcom/sleepycat/je/CheckpointConfig;->clone()Lcom/sleepycat/je/CheckpointConfig;

    move-result-object v0

    return-object v0
.end method

.method public getForce()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/sleepycat/je/CheckpointConfig;->force:Z

    return v0
.end method

.method public getKBytes()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/sleepycat/je/CheckpointConfig;->kBytes:I

    return v0
.end method

.method public getMinimizeRecoveryTime()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/sleepycat/je/CheckpointConfig;->minimizeRecoveryTime:Z

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/sleepycat/je/CheckpointConfig;->minutes:I

    return v0
.end method

.method public setForce(Z)Lcom/sleepycat/je/CheckpointConfig;
    .locals 0
    .param p1, "force"    # Z

    .line 120
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/CheckpointConfig;->setForceVoid(Z)V

    .line 121
    return-object p0
.end method

.method public setForceVoid(Z)V
    .locals 0
    .param p1, "force"    # Z

    .line 129
    iput-boolean p1, p0, Lcom/sleepycat/je/CheckpointConfig;->force:Z

    .line 130
    return-void
.end method

.method public setKBytes(I)Lcom/sleepycat/je/CheckpointConfig;
    .locals 0
    .param p1, "kBytes"    # I

    .line 52
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/CheckpointConfig;->setKBytesVoid(I)V

    .line 53
    return-object p0
.end method

.method public setKBytesVoid(I)V
    .locals 0
    .param p1, "kBytes"    # I

    .line 61
    iput p1, p0, Lcom/sleepycat/je/CheckpointConfig;->kBytes:I

    .line 62
    return-void
.end method

.method public setMinimizeRecoveryTime(Z)Lcom/sleepycat/je/CheckpointConfig;
    .locals 0
    .param p1, "minimizeRecoveryTime"    # Z

    .line 154
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/CheckpointConfig;->setMinimizeRecoveryTimeVoid(Z)V

    .line 155
    return-object p0
.end method

.method public setMinimizeRecoveryTimeVoid(Z)V
    .locals 0
    .param p1, "minimizeRecoveryTime"    # Z

    .line 163
    iput-boolean p1, p0, Lcom/sleepycat/je/CheckpointConfig;->minimizeRecoveryTime:Z

    .line 164
    return-void
.end method

.method public setMinutes(I)Lcom/sleepycat/je/CheckpointConfig;
    .locals 0
    .param p1, "minutes"    # I

    .line 88
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/CheckpointConfig;->setMinutesVoid(I)V

    .line 89
    return-object p0
.end method

.method public setMinutesVoid(I)V
    .locals 0
    .param p1, "minutes"    # I

    .line 97
    iput p1, p0, Lcom/sleepycat/je/CheckpointConfig;->minutes:I

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/CheckpointConfig;->minutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nkBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/CheckpointConfig;->kBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nforce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/CheckpointConfig;->force:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nminimizeRecoveryTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/CheckpointConfig;->minimizeRecoveryTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
