.class Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;
.super Ljava/lang/Object;
.source "StatsFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/StatsFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntryInfo"
.end annotation


# instance fields
.field public count:I

.field public headerBytes:I

.field public maxBytes:I

.field public minBytes:I

.field public provisionalCount:I

.field public totalBytes:J


# direct methods
.method constructor <init>()V
    .locals 3

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->count:I

    .line 542
    iput v0, p0, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->provisionalCount:I

    .line 543
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->totalBytes:J

    .line 544
    iput v0, p0, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->headerBytes:I

    .line 545
    iput v0, p0, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->minBytes:I

    .line 546
    iput v0, p0, Lcom/sleepycat/je/log/StatsFileReader$EntryInfo;->maxBytes:I

    .line 547
    return-void
.end method
