.class public Lcom/sleepycat/je/dbi/ExpirationInfo;
.super Ljava/lang/Object;
.source "ExpirationInfo.java"


# static fields
.field public static final DEFAULT:Lcom/sleepycat/je/dbi/ExpirationInfo;


# instance fields
.field public final expiration:I

.field public final expirationInHours:Z

.field private expirationUpdated:Z

.field private oldExpirationTime:J

.field public final updateExpiration:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/sleepycat/je/dbi/ExpirationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/sleepycat/je/dbi/ExpirationInfo;-><init>(IZZ)V

    sput-object v0, Lcom/sleepycat/je/dbi/ExpirationInfo;->DEFAULT:Lcom/sleepycat/je/dbi/ExpirationInfo;

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 2
    .param p1, "expiration"    # I
    .param p2, "expirationInHours"    # Z
    .param p3, "updateExpiration"    # Z

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/ExpirationInfo;->expirationUpdated:Z

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/ExpirationInfo;->oldExpirationTime:J

    .line 40
    iput p1, p0, Lcom/sleepycat/je/dbi/ExpirationInfo;->expiration:I

    .line 41
    iput-boolean p2, p0, Lcom/sleepycat/je/dbi/ExpirationInfo;->expirationInHours:Z

    .line 42
    iput-boolean p3, p0, Lcom/sleepycat/je/dbi/ExpirationInfo;->updateExpiration:Z

    .line 43
    return-void
.end method

.method public static getInfo(Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/dbi/ExpirationInfo;
    .locals 4
    .param p0, "options"    # Lcom/sleepycat/je/WriteOptions;

    .line 57
    invoke-virtual {p0}, Lcom/sleepycat/je/WriteOptions;->getTTL()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/je/WriteOptions;->getUpdateTTL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Lcom/sleepycat/je/dbi/ExpirationInfo;

    .line 62
    invoke-virtual {p0}, Lcom/sleepycat/je/WriteOptions;->getTTL()I

    move-result v1

    invoke-virtual {p0}, Lcom/sleepycat/je/WriteOptions;->getTTLUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sleepycat/je/dbi/TTL;->ttlToExpiration(ILjava/util/concurrent/TimeUnit;)I

    move-result v1

    .line 63
    invoke-virtual {p0}, Lcom/sleepycat/je/WriteOptions;->getTTLUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 64
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/WriteOptions;->getUpdateTTL()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/dbi/ExpirationInfo;-><init>(IZZ)V

    .line 61
    return-object v0
.end method


# virtual methods
.method public getExpirationUpdated()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/ExpirationInfo;->expirationUpdated:Z

    return v0
.end method

.method public getOldExpirationTime()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/ExpirationInfo;->oldExpirationTime:J

    return-wide v0
.end method

.method public setExpirationUpdated(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/sleepycat/je/dbi/ExpirationInfo;->expirationUpdated:Z

    .line 69
    return-void
.end method

.method public setOldExpirationTime(J)V
    .locals 0
    .param p1, "val"    # J

    .line 76
    iput-wide p1, p0, Lcom/sleepycat/je/dbi/ExpirationInfo;->oldExpirationTime:J

    .line 77
    return-void
.end method
