.class public final Lcom/itextpdf/kernel/counter/data/WaitTime;
.super Ljava/lang/Object;
.source "WaitTime.java"


# instance fields
.field private final initial:J

.field private final maximum:J

.field private final time:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 7
    .param p1, "initial"    # J
    .param p3, "maximum"    # J

    .line 52
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/kernel/counter/data/WaitTime;-><init>(JJJ)V

    .line 53
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0
    .param p1, "initial"    # J
    .param p3, "maximum"    # J
    .param p5, "time"    # J

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/itextpdf/kernel/counter/data/WaitTime;->initial:J

    .line 57
    iput-wide p3, p0, Lcom/itextpdf/kernel/counter/data/WaitTime;->maximum:J

    .line 58
    iput-wide p5, p0, Lcom/itextpdf/kernel/counter/data/WaitTime;->time:J

    .line 59
    return-void
.end method


# virtual methods
.method public getInitial()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/itextpdf/kernel/counter/data/WaitTime;->initial:J

    return-wide v0
.end method

.method public getMaximum()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/itextpdf/kernel/counter/data/WaitTime;->maximum:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/itextpdf/kernel/counter/data/WaitTime;->time:J

    return-wide v0
.end method
