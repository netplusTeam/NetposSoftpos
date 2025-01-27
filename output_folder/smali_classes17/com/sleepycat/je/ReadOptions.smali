.class public Lcom/sleepycat/je/ReadOptions;
.super Ljava/lang/Object;
.source "ReadOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private cacheMode:Lcom/sleepycat/je/CacheMode;

.field private lockMode:Lcom/sleepycat/je/LockMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/ReadOptions;->cacheMode:Lcom/sleepycat/je/CacheMode;

    .line 28
    sget-object v0, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    iput-object v0, p0, Lcom/sleepycat/je/ReadOptions;->lockMode:Lcom/sleepycat/je/LockMode;

    .line 34
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/ReadOptions;
    .locals 2

    .line 39
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/ReadOptions;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
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

    .line 25
    invoke-virtual {p0}, Lcom/sleepycat/je/ReadOptions;->clone()Lcom/sleepycat/je/ReadOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCacheMode()Lcom/sleepycat/je/CacheMode;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sleepycat/je/ReadOptions;->cacheMode:Lcom/sleepycat/je/CacheMode;

    return-object v0
.end method

.method public getLockMode()Lcom/sleepycat/je/LockMode;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/ReadOptions;->lockMode:Lcom/sleepycat/je/LockMode;

    return-object v0
.end method

.method public setCacheMode(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/ReadOptions;
    .locals 0
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 59
    iput-object p1, p0, Lcom/sleepycat/je/ReadOptions;->cacheMode:Lcom/sleepycat/je/CacheMode;

    .line 60
    return-object p0
.end method

.method public setLockMode(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;
    .locals 1
    .param p1, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 84
    const-string v0, "lockMode"

    invoke-static {p1, v0}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/sleepycat/je/ReadOptions;->lockMode:Lcom/sleepycat/je/LockMode;

    .line 86
    return-object p0
.end method
