.class public Lcom/sleepycat/je/SequenceConfig;
.super Ljava/lang/Object;
.source "SequenceConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/sleepycat/je/SequenceConfig;


# instance fields
.field private allowCreate:Z

.field private autoCommitNoSync:Z

.field private cacheSize:I

.field private decrement:Z

.field private exclusiveCreate:Z

.field private initialValue:J

.field private rangeMax:J

.field private rangeMin:J

.field private wrap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/sleepycat/je/SequenceConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/SequenceConfig;-><init>()V

    sput-object v0, Lcom/sleepycat/je/SequenceConfig;->DEFAULT:Lcom/sleepycat/je/SequenceConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/SequenceConfig;->cacheSize:I

    .line 29
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sleepycat/je/SequenceConfig;->rangeMin:J

    .line 30
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/sleepycat/je/SequenceConfig;->rangeMax:J

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/SequenceConfig;->initialValue:J

    .line 45
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/SequenceConfig;
    .locals 2

    .line 435
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/SequenceConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 436
    :catch_0
    move-exception v0

    .line 437
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
    invoke-virtual {p0}, Lcom/sleepycat/je/SequenceConfig;->clone()Lcom/sleepycat/je/SequenceConfig;

    move-result-object v0

    return-object v0
.end method

.method public getAllowCreate()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/sleepycat/je/SequenceConfig;->allowCreate:Z

    return v0
.end method

.method public getAutoCommitNoSync()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/sleepycat/je/SequenceConfig;->autoCommitNoSync:Z

    return v0
.end method

.method public getCacheSize()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/sleepycat/je/SequenceConfig;->cacheSize:I

    return v0
.end method

.method public getDecrement()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/sleepycat/je/SequenceConfig;->decrement:Z

    return v0
.end method

.method public getExclusiveCreate()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/sleepycat/je/SequenceConfig;->exclusiveCreate:Z

    return v0
.end method

.method public getInitialValue()J
    .locals 2

    .line 250
    iget-wide v0, p0, Lcom/sleepycat/je/SequenceConfig;->initialValue:J

    return-wide v0
.end method

.method public getRangeMax()J
    .locals 2

    .line 384
    iget-wide v0, p0, Lcom/sleepycat/je/SequenceConfig;->rangeMax:J

    return-wide v0
.end method

.method public getRangeMin()J
    .locals 2

    .line 372
    iget-wide v0, p0, Lcom/sleepycat/je/SequenceConfig;->rangeMin:J

    return-wide v0
.end method

.method public getWrap()Z
    .locals 1

    .line 426
    iget-boolean v0, p0, Lcom/sleepycat/je/SequenceConfig;->wrap:Z

    return v0
.end method

.method public setAllowCreate(Z)Lcom/sleepycat/je/SequenceConfig;
    .locals 0
    .param p1, "allowCreate"    # Z

    .line 64
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SequenceConfig;->setAllowCreateVoid(Z)V

    .line 65
    return-object p0
.end method

.method public setAllowCreateVoid(Z)V
    .locals 0
    .param p1, "allowCreate"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/sleepycat/je/SequenceConfig;->allowCreate:Z

    .line 74
    return-void
.end method

.method public setAutoCommitNoSync(Z)Lcom/sleepycat/je/SequenceConfig;
    .locals 0
    .param p1, "autoCommitNoSync"    # Z

    .line 268
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SequenceConfig;->setAutoCommitNoSyncVoid(Z)V

    .line 269
    return-object p0
.end method

.method public setAutoCommitNoSyncVoid(Z)V
    .locals 0
    .param p1, "autoCommitNoSync"    # Z

    .line 277
    iput-boolean p1, p0, Lcom/sleepycat/je/SequenceConfig;->autoCommitNoSync:Z

    .line 278
    return-void
.end method

.method public setCacheSize(I)Lcom/sleepycat/je/SequenceConfig;
    .locals 0
    .param p1, "cacheSize"    # I

    .line 107
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SequenceConfig;->setCacheSizeVoid(I)V

    .line 108
    return-object p0
.end method

.method public setCacheSizeVoid(I)V
    .locals 0
    .param p1, "cacheSize"    # I

    .line 116
    iput p1, p0, Lcom/sleepycat/je/SequenceConfig;->cacheSize:I

    .line 117
    return-void
.end method

.method public setDecrement(Z)Lcom/sleepycat/je/SequenceConfig;
    .locals 0
    .param p1, "decrement"    # Z

    .line 145
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SequenceConfig;->setDecrementVoid(Z)V

    .line 146
    return-object p0
.end method

.method public setDecrementVoid(Z)V
    .locals 0
    .param p1, "decrement"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/sleepycat/je/SequenceConfig;->decrement:Z

    .line 155
    return-void
.end method

.method public setExclusiveCreate(Z)Lcom/sleepycat/je/SequenceConfig;
    .locals 0
    .param p1, "exclusiveCreate"    # Z

    .line 185
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SequenceConfig;->setExclusiveCreateVoid(Z)V

    .line 186
    return-object p0
.end method

.method public setExclusiveCreateVoid(Z)V
    .locals 0
    .param p1, "exclusiveCreate"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/sleepycat/je/SequenceConfig;->exclusiveCreate:Z

    .line 195
    return-void
.end method

.method public setInitialValue(J)Lcom/sleepycat/je/SequenceConfig;
    .locals 0
    .param p1, "initialValue"    # J

    .line 229
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/SequenceConfig;->setInitialValueVoid(J)V

    .line 230
    return-object p0
.end method

.method public setInitialValueVoid(J)V
    .locals 0
    .param p1, "initialValue"    # J

    .line 238
    iput-wide p1, p0, Lcom/sleepycat/je/SequenceConfig;->initialValue:J

    .line 239
    return-void
.end method

.method public setRange(JJ)Lcom/sleepycat/je/SequenceConfig;
    .locals 0
    .param p1, "min"    # J
    .param p3, "max"    # J

    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/SequenceConfig;->setRangeMin(J)Lcom/sleepycat/je/SequenceConfig;

    .line 310
    invoke-virtual {p0, p3, p4}, Lcom/sleepycat/je/SequenceConfig;->setRangeMax(J)Lcom/sleepycat/je/SequenceConfig;

    .line 311
    return-object p0
.end method

.method public setRangeMax(J)Lcom/sleepycat/je/SequenceConfig;
    .locals 0
    .param p1, "max"    # J

    .line 351
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/SequenceConfig;->setRangeMaxVoid(J)V

    .line 352
    return-object p0
.end method

.method public setRangeMaxVoid(J)V
    .locals 0
    .param p1, "max"    # J

    .line 360
    iput-wide p1, p0, Lcom/sleepycat/je/SequenceConfig;->rangeMax:J

    .line 361
    return-void
.end method

.method public setRangeMin(J)Lcom/sleepycat/je/SequenceConfig;
    .locals 0
    .param p1, "min"    # J

    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/SequenceConfig;->setRangeMinVoid(J)V

    .line 327
    return-object p0
.end method

.method public setRangeMinVoid(J)V
    .locals 0
    .param p1, "min"    # J

    .line 335
    iput-wide p1, p0, Lcom/sleepycat/je/SequenceConfig;->rangeMin:J

    .line 336
    return-void
.end method

.method public setWrap(Z)Lcom/sleepycat/je/SequenceConfig;
    .locals 0
    .param p1, "wrap"    # Z

    .line 403
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/SequenceConfig;->setWrapVoid(Z)V

    .line 404
    return-object p0
.end method

.method public setWrapVoid(Z)V
    .locals 0
    .param p1, "wrap"    # Z

    .line 412
    iput-boolean p1, p0, Lcom/sleepycat/je/SequenceConfig;->wrap:Z

    .line 413
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowCreate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/SequenceConfig;->allowCreate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncacheSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/SequenceConfig;->cacheSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndecrement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/SequenceConfig;->decrement:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nexclusiveCreate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/SequenceConfig;->exclusiveCreate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ninitialValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/SequenceConfig;->initialValue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nautoCommitNoSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/SequenceConfig;->autoCommitNoSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nrangeMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/SequenceConfig;->rangeMin:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nrangeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/SequenceConfig;->rangeMax:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nwrap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/SequenceConfig;->wrap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
