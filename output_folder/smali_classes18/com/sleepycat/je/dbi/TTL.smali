.class public Lcom/sleepycat/je/dbi/TTL;
.super Ljava/lang/Object;
.source "TTL.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MILLIS_PER_HOUR:J = 0x36ee80L

.field private static final MIN_JE_VERSION:Lcom/sleepycat/je/JEVersion;

.field public static TEST_MIN_JE_VERSION:Lcom/sleepycat/je/JEVersion;

.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final UTC:Ljava/util/TimeZone;

.field private static timeTestHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 133
    nop

    .line 139
    new-instance v0, Lcom/sleepycat/je/JEVersion;

    const-string v1, "6.5.0"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/TTL;->MIN_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/sleepycat/je/dbi/TTL;->TEST_MIN_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    .line 144
    sput-object v0, Lcom/sleepycat/je/dbi/TTL;->timeTestHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 146
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/dbi/TTL;->UTC:Ljava/util/TimeZone;

    .line 148
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd.HH"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/sleepycat/je/dbi/TTL;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 152
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 153
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentSystemTime()J
    .locals 2

    .line 179
    sget-object v0, Lcom/sleepycat/je/dbi/TTL;->timeTestHook:Lcom/sleepycat/je/utilint/TestHook;

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Lcom/sleepycat/je/utilint/TestHook;->getHookValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 183
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static expirationToSystemTime(IZ)J
    .locals 4
    .param p0, "expiration"    # I
    .param p1, "hours"    # Z

    .line 191
    if-ltz p0, :cond_2

    .line 193
    if-nez p0, :cond_0

    .line 194
    const-wide/16 v0, 0x0

    return-wide v0

    .line 197
    :cond_0
    int-to-long v0, p0

    if-eqz p1, :cond_1

    const-wide/32 v2, 0x36ee80

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x5265c00

    :goto_0
    mul-long/2addr v0, v2

    return-wide v0

    .line 191
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static expiresWithin(IZJ)Z
    .locals 4
    .param p0, "expiration"    # I
    .param p1, "hours"    # Z
    .param p2, "withinMs"    # J

    .line 328
    if-eqz p0, :cond_0

    .line 329
    invoke-static {}, Lcom/sleepycat/je/dbi/TTL;->currentSystemTime()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 330
    invoke-static {p0, p1}, Lcom/sleepycat/je/dbi/TTL;->expirationToSystemTime(IZ)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 328
    :goto_0
    return v0
.end method

.method public static expiresWithin(JJ)Z
    .locals 2
    .param p0, "expirationTime"    # J
    .param p2, "withinMs"    # J

    .line 339
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 340
    invoke-static {}, Lcom/sleepycat/je/dbi/TTL;->currentSystemTime()J

    move-result-wide v0

    add-long/2addr v0, p2

    cmp-long v0, v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 339
    :goto_0
    return v0
.end method

.method public static formatExpiration(IZ)Ljava/lang/String;
    .locals 2
    .param p0, "expiration"    # I
    .param p1, "hours"    # Z

    .line 287
    invoke-static {p0, p1}, Lcom/sleepycat/je/dbi/TTL;->expirationToSystemTime(IZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/TTL;->formatExpirationTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatExpirationTime(J)Ljava/lang/String;
    .locals 3
    .param p0, "time"    # J

    .line 293
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 295
    .local v0, "date":Ljava/util/Date;
    sget-object v1, Lcom/sleepycat/je/dbi/TTL;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    .line 296
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 297
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getMinJEVersion()Lcom/sleepycat/je/JEVersion;
    .locals 1

    .line 156
    sget-object v0, Lcom/sleepycat/je/dbi/TTL;->TEST_MIN_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    if-eqz v0, :cond_0

    .line 157
    return-object v0

    .line 159
    :cond_0
    sget-object v0, Lcom/sleepycat/je/dbi/TTL;->MIN_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    return-object v0
.end method

.method public static isExpired(IZ)Z
    .locals 4
    .param p0, "expiration"    # I
    .param p1, "hours"    # Z

    .line 306
    if-eqz p0, :cond_0

    .line 307
    invoke-static {}, Lcom/sleepycat/je/dbi/TTL;->currentSystemTime()J

    move-result-wide v0

    .line 308
    invoke-static {p0, p1}, Lcom/sleepycat/je/dbi/TTL;->expirationToSystemTime(IZ)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 306
    :goto_0
    return v0
.end method

.method public static isExpired(J)Z
    .locals 2
    .param p0, "expirationTime"    # J

    .line 316
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 317
    invoke-static {}, Lcom/sleepycat/je/dbi/TTL;->currentSystemTime()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0
.end method

.method public static isSystemTimeInHours(J)Z
    .locals 6
    .param p0, "systemMs"    # J

    .line 266
    const-wide/32 v0, 0x36ee80

    add-long v2, p0, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    .line 268
    .local v2, "hours":J
    const-wide/16 v0, 0x18

    rem-long v0, v2, v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setTimeTestHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p0, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/lang/Long;>;"
    sput-object p0, Lcom/sleepycat/je/dbi/TTL;->timeTestHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 175
    return-void
.end method

.method public static systemTimeToExpiration(JZ)I
    .locals 6
    .param p0, "systemMs"    # J
    .param p2, "hours"    # Z

    .line 278
    const-wide/16 v0, 0x1

    if-eqz p2, :cond_0

    const-wide/32 v2, 0x36ee80

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x5265c00

    :goto_0
    add-long v4, p0, v2

    sub-long/2addr v4, v0

    div-long/2addr v4, v2

    long-to-int v0, v4

    return v0
.end method

.method public static ttlToExpiration(ILjava/util/concurrent/TimeUnit;)I
    .locals 6
    .param p0, "ttl"    # I
    .param p1, "ttlUnits"    # Ljava/util/concurrent/TimeUnit;

    .line 206
    const-string v0, "TTL value: "

    if-ltz p0, :cond_6

    .line 211
    if-nez p0, :cond_0

    .line 212
    const/4 v0, 0x0

    return v0

    .line 217
    :cond_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    if-ne p1, v1, :cond_2

    .line 219
    const v1, 0x2aaaaaa

    if-gt p0, v1, :cond_1

    .line 226
    invoke-static {}, Lcom/sleepycat/je/dbi/TTL;->currentSystemTime()J

    move-result-wide v0

    const-wide/32 v4, 0x5265c00

    add-long/2addr v0, v4

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-int v0, v0

    .local v0, "currentTime":I
    goto :goto_0

    .line 220
    .end local v0    # "currentTime":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must not exceed WriteOptions.TTL_MAX_DAYS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    if-ne p1, v1, :cond_5

    .line 231
    const v1, 0x3fffffff    # 1.9999999f

    if-gt p0, v1, :cond_4

    .line 238
    invoke-static {}, Lcom/sleepycat/je/dbi/TTL;->currentSystemTime()J

    move-result-wide v0

    const-wide/32 v4, 0x36ee80

    add-long/2addr v0, v4

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 247
    .restart local v0    # "currentTime":I
    :goto_0
    add-int v1, v0, p0

    .line 249
    .local v1, "result":I
    if-lez v1, :cond_3

    .line 257
    return v1

    .line 250
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " results in int overflow, expiration time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". System time may be set incorrectly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 254
    invoke-static {}, Lcom/sleepycat/je/dbi/TTL;->currentSystemTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 232
    .end local v0    # "currentTime":I
    .end local v1    # "result":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must not exceed WriteOptions.TTL_MAX_HOURS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ttlUnits not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must not be negative."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
