.class public Lch/qos/logback/core/util/FixedDelay;
.super Ljava/lang/Object;
.source "FixedDelay.java"

# interfaces
.implements Lch/qos/logback/core/util/DelayStrategy;


# instance fields
.field private nextDelay:J

.field private final subsequentDelay:J


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "delay"    # I

    .line 46
    int-to-long v0, p1

    int-to-long v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lch/qos/logback/core/util/FixedDelay;-><init>(JJ)V

    .line 47
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "initialDelay"    # J
    .param p3, "subsequentDelay"    # J

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lch/qos/logback/core/util/FixedDelay;->nextDelay:J

    .line 36
    iput-wide p3, p0, Lch/qos/logback/core/util/FixedDelay;->subsequentDelay:J

    .line 37
    return-void
.end method


# virtual methods
.method public nextDelay()J
    .locals 4

    .line 53
    iget-wide v0, p0, Lch/qos/logback/core/util/FixedDelay;->nextDelay:J

    .line 54
    .local v0, "delay":J
    iget-wide v2, p0, Lch/qos/logback/core/util/FixedDelay;->subsequentDelay:J

    iput-wide v2, p0, Lch/qos/logback/core/util/FixedDelay;->nextDelay:J

    .line 55
    return-wide v0
.end method
