.class Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;
.super Ljava/lang/Object;
.source "DataEraser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/DataEraser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field final creationTime:J

.field lastVlsn:Lcom/sleepycat/je/utilint/VLSN;

.field final length:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .param p1, "creationTime"    # J
    .param p3, "length"    # J

    .line 2109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2110
    iput-wide p1, p0, Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;->creationTime:J

    .line 2111
    iput-wide p3, p0, Lcom/sleepycat/je/cleaner/DataEraser$FileInfo;->length:J

    .line 2112
    return-void
.end method
