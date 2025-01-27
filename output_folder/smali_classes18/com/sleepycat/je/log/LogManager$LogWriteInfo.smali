.class Lcom/sleepycat/je/log/LogManager$LogWriteInfo;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogWriteInfo"
.end annotation


# instance fields
.field final fileOffset:J

.field final lbs:Lcom/sleepycat/je/log/LogBufferSegment;

.field final synthetic this$0:Lcom/sleepycat/je/log/LogManager;

.field final vlsn:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/log/LogManager;Lcom/sleepycat/je/log/LogBufferSegment;Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 0
    .param p2, "bs"    # Lcom/sleepycat/je/log/LogBufferSegment;
    .param p3, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p4, "fileOffset"    # J

    .line 1530
    iput-object p1, p0, Lcom/sleepycat/je/log/LogManager$LogWriteInfo;->this$0:Lcom/sleepycat/je/log/LogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1531
    iput-object p2, p0, Lcom/sleepycat/je/log/LogManager$LogWriteInfo;->lbs:Lcom/sleepycat/je/log/LogBufferSegment;

    .line 1532
    iput-object p3, p0, Lcom/sleepycat/je/log/LogManager$LogWriteInfo;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 1533
    iput-wide p4, p0, Lcom/sleepycat/je/log/LogManager$LogWriteInfo;->fileOffset:J

    .line 1534
    return-void
.end method
