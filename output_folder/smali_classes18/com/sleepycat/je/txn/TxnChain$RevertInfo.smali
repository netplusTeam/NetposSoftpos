.class public Lcom/sleepycat/je/txn/TxnChain$RevertInfo;
.super Ljava/lang/Object;
.source "TxnChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/txn/TxnChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevertInfo"
.end annotation


# instance fields
.field public revertData:[B

.field public revertExpiration:I

.field public revertExpirationInHours:Z

.field public revertKD:Z

.field public revertKey:[B

.field public revertLsn:J

.field public revertPD:Z

.field public revertVLSN:J


# direct methods
.method constructor <init>(JZ[B[BJIZ)V
    .locals 1
    .param p1, "revertLsn"    # J
    .param p3, "revertKD"    # Z
    .param p4, "revertKey"    # [B
    .param p5, "revertData"    # [B
    .param p6, "revertVLSN"    # J
    .param p8, "revertExpiration"    # I
    .param p9, "revertExpirationInHours"    # Z

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-wide p1, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertLsn:J

    .line 354
    iput-boolean p3, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertKD:Z

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertPD:Z

    .line 356
    iput-object p4, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertKey:[B

    .line 357
    iput-object p5, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertData:[B

    .line 358
    iput-wide p6, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertVLSN:J

    .line 359
    iput p8, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertExpiration:I

    .line 360
    iput-boolean p9, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertExpirationInHours:Z

    .line 361
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "revertLsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-wide v1, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertLsn:J

    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v1, " revertKD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertKD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 369
    const-string v1, " revertPD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertPD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 370
    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertKey:[B

    if-eqz v1, :cond_0

    .line 371
    const-string v1, " revertKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertKey:[B

    invoke-static {v1}, Lcom/sleepycat/je/tree/Key;->getNoFormatString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertData:[B

    if-eqz v1, :cond_1

    .line 375
    const-string v1, " revertData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertData:[B

    invoke-static {v1}, Lcom/sleepycat/je/tree/Key;->getNoFormatString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_1
    const-string v1, " revertVLSN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertVLSN:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 379
    const-string v1, " revertExpires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    iget v1, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertExpiration:I

    iget-boolean v2, p0, Lcom/sleepycat/je/txn/TxnChain$RevertInfo;->revertExpirationInHours:Z

    invoke-static {v1, v2}, Lcom/sleepycat/je/dbi/TTL;->formatExpiration(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
