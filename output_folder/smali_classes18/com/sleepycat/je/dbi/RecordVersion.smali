.class public Lcom/sleepycat/je/dbi/RecordVersion;
.super Ljava/lang/Object;
.source "RecordVersion.java"


# instance fields
.field private final lsn:J

.field private final vlsn:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .param p1, "vlsn"    # J
    .param p3, "lsn"    # J

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/sleepycat/je/dbi/RecordVersion;->vlsn:J

    .line 27
    iput-wide p3, p0, Lcom/sleepycat/je/dbi/RecordVersion;->lsn:J

    .line 28
    return-void
.end method


# virtual methods
.method public getLSN()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/RecordVersion;->lsn:J

    return-wide v0
.end method

.method public getVLSN()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/RecordVersion;->vlsn:J

    return-wide v0
.end method
