.class public Lcom/sleepycat/je/WriteOptions;
.super Ljava/lang/Object;
.source "WriteOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final TTL_MAX_DAYS:I = 0x2aaaaaa

.field public static final TTL_MAX_HOURS:I = 0x3fffffff


# instance fields
.field private cacheMode:Lcom/sleepycat/je/CacheMode;

.field private ttl:I

.field private ttlUnit:Ljava/util/concurrent/TimeUnit;

.field private updateTtl:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/WriteOptions;->cacheMode:Lcom/sleepycat/je/CacheMode;

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/WriteOptions;->ttl:I

    .line 286
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    iput-object v1, p0, Lcom/sleepycat/je/WriteOptions;->ttlUnit:Ljava/util/concurrent/TimeUnit;

    .line 287
    iput-boolean v0, p0, Lcom/sleepycat/je/WriteOptions;->updateTtl:Z

    .line 293
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/WriteOptions;
    .locals 2

    .line 298
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/WriteOptions;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Lcom/sleepycat/je/WriteOptions;->clone()Lcom/sleepycat/je/WriteOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCacheMode()Lcom/sleepycat/je/CacheMode;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/sleepycat/je/WriteOptions;->cacheMode:Lcom/sleepycat/je/CacheMode;

    return-object v0
.end method

.method public getTTL()I
    .locals 1

    .line 379
    iget v0, p0, Lcom/sleepycat/je/WriteOptions;->ttl:I

    return v0
.end method

.method public getTTLUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/sleepycat/je/WriteOptions;->ttlUnit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public getUpdateTTL()Z
    .locals 1

    .line 425
    iget-boolean v0, p0, Lcom/sleepycat/je/WriteOptions;->updateTtl:Z

    return v0
.end method

.method public setCacheMode(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/WriteOptions;
    .locals 0
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 318
    iput-object p1, p0, Lcom/sleepycat/je/WriteOptions;->cacheMode:Lcom/sleepycat/je/CacheMode;

    .line 319
    return-object p0
.end method

.method public setExpirationTime(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/WriteOptions;
    .locals 3
    .param p1, "expirationTime"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 481
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/sleepycat/je/WriteOptions;->setTTL(ILjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/WriteOptions;

    move-result-object v0

    return-object v0

    .line 487
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    if-ne p3, v0, :cond_1

    .line 488
    const/4 v0, 0x0

    .local v0, "hours":Z
    goto :goto_1

    .line 489
    .end local v0    # "hours":Z
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    if-ne p3, v0, :cond_2

    .line 490
    const/4 v0, 0x1

    .restart local v0    # "hours":Z
    goto :goto_1

    .line 491
    .end local v0    # "hours":Z
    :cond_2
    if-nez p3, :cond_4

    .line 492
    invoke-static {p1, p2}, Lcom/sleepycat/je/dbi/TTL;->isSystemTimeInHours(J)Z

    move-result v0

    .line 493
    .restart local v0    # "hours":Z
    if-eqz v0, :cond_3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    :cond_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    :goto_0
    move-object p3, v1

    .line 499
    :goto_1
    nop

    .line 501
    invoke-static {}, Lcom/sleepycat/je/dbi/TTL;->currentSystemTime()J

    move-result-wide v1

    sub-long v1, p1, v1

    .line 500
    invoke-static {v1, v2, v0}, Lcom/sleepycat/je/dbi/TTL;->systemTimeToExpiration(JZ)I

    move-result v1

    .line 499
    invoke-virtual {p0, v1, p3}, Lcom/sleepycat/je/WriteOptions;->setTTL(ILjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/WriteOptions;

    .line 504
    return-object p0

    .line 495
    .end local v0    # "hours":Z
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ttlUnits not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTTL(I)Lcom/sleepycat/je/WriteOptions;
    .locals 1
    .param p1, "ttl"    # I

    .line 345
    iput p1, p0, Lcom/sleepycat/je/WriteOptions;->ttl:I

    .line 346
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/sleepycat/je/WriteOptions;->ttlUnit:Ljava/util/concurrent/TimeUnit;

    .line 347
    return-object p0
.end method

.method public setTTL(ILjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/WriteOptions;
    .locals 0
    .param p1, "ttl"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 368
    iput p1, p0, Lcom/sleepycat/je/WriteOptions;->ttl:I

    .line 369
    iput-object p2, p0, Lcom/sleepycat/je/WriteOptions;->ttlUnit:Ljava/util/concurrent/TimeUnit;

    .line 370
    return-object p0
.end method

.method public setUpdateTTL(Z)Lcom/sleepycat/je/WriteOptions;
    .locals 0
    .param p1, "updateTtl"    # Z

    .line 415
    iput-boolean p1, p0, Lcom/sleepycat/je/WriteOptions;->updateTtl:Z

    .line 416
    return-object p0
.end method
