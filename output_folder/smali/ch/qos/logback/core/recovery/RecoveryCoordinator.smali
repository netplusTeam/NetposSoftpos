.class public Lch/qos/logback/core/recovery/RecoveryCoordinator;
.super Ljava/lang/Object;
.source "RecoveryCoordinator.java"


# static fields
.field static BACKOFF_COEFFICIENT_MAX:J = 0x0L

.field public static final BACKOFF_COEFFICIENT_MIN:J = 0x14L

.field public static final BACKOFF_MULTIPLIER:J = 0x4L

.field private static UNSET:J


# instance fields
.field private backOffCoefficient:J

.field private currentTime:J

.field private next:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const-wide/32 v0, 0x50000

    sput-wide v0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->BACKOFF_COEFFICIENT_MAX:J

    .line 24
    const-wide/16 v0, -0x1

    sput-wide v0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->UNSET:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->backOffCoefficient:J

    .line 26
    sget-wide v0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->UNSET:J

    iput-wide v0, p0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->currentTime:J

    .line 30
    invoke-direct {p0}, Lch/qos/logback/core/recovery/RecoveryCoordinator;->getCurrentTime()J

    move-result-wide v0

    invoke-direct {p0}, Lch/qos/logback/core/recovery/RecoveryCoordinator;->getBackoffCoefficient()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->next:J

    .line 31
    return-void
.end method

.method public constructor <init>(J)V
    .locals 4
    .param p1, "currentTime"    # J

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->backOffCoefficient:J

    .line 26
    sget-wide v0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->UNSET:J

    iput-wide v0, p0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->currentTime:J

    .line 34
    iput-wide p1, p0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->currentTime:J

    .line 35
    invoke-direct {p0}, Lch/qos/logback/core/recovery/RecoveryCoordinator;->getCurrentTime()J

    move-result-wide v0

    invoke-direct {p0}, Lch/qos/logback/core/recovery/RecoveryCoordinator;->getBackoffCoefficient()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->next:J

    .line 36
    return-void
.end method

.method private getBackoffCoefficient()J
    .locals 6

    .line 60
    iget-wide v0, p0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->backOffCoefficient:J

    .line 61
    .local v0, "currentCoeff":J
    iget-wide v2, p0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->backOffCoefficient:J

    sget-wide v4, Lch/qos/logback/core/recovery/RecoveryCoordinator;->BACKOFF_COEFFICIENT_MAX:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 62
    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->backOffCoefficient:J

    .line 64
    :cond_0
    return-wide v0
.end method

.method private getCurrentTime()J
    .locals 4

    .line 53
    iget-wide v0, p0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->currentTime:J

    sget-wide v2, Lch/qos/logback/core/recovery/RecoveryCoordinator;->UNSET:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 54
    return-wide v0

    .line 56
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public isTooSoon()Z
    .locals 4

    .line 39
    invoke-direct {p0}, Lch/qos/logback/core/recovery/RecoveryCoordinator;->getCurrentTime()J

    move-result-wide v0

    .line 40
    .local v0, "now":J
    iget-wide v2, p0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->next:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 41
    invoke-direct {p0}, Lch/qos/logback/core/recovery/RecoveryCoordinator;->getBackoffCoefficient()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->next:J

    .line 42
    const/4 v2, 0x0

    return v2

    .line 44
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method setCurrentTime(J)V
    .locals 0
    .param p1, "forcedTime"    # J

    .line 49
    iput-wide p1, p0, Lch/qos/logback/core/recovery/RecoveryCoordinator;->currentTime:J

    .line 50
    return-void
.end method
