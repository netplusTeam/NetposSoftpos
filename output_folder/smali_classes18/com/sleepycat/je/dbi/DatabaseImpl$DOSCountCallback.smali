.class Lcom/sleepycat/je/dbi/DatabaseImpl$DOSCountCallback;
.super Ljava/lang/Object;
.source "DatabaseImpl.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DatabaseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DOSCountCallback"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public count:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1435
    const-class v0, Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1438
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl$DOSCountCallback;->count:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/dbi/DatabaseImpl$1;

    .line 1435
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl$DOSCountCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public canProcessWithoutBlocking(I)Z
    .locals 1
    .param p1, "nRecords"    # I

    .line 1455
    const/4 v0, 0x1

    return v0
.end method

.method public checkShutdown()V
    .locals 0

    .line 1465
    return-void
.end method

.method public getCapacity()I
    .locals 1

    .line 1460
    const v0, 0x7fffffff

    return v0
.end method

.method public process(I[B[BIZ)V
    .locals 4
    .param p1, "dbIdx"    # I
    .param p2, "key"    # [B
    .param p3, "data"    # [B
    .param p4, "expiration"    # I
    .param p5, "expirationInHours"    # Z

    .line 1448
    if-nez p2, :cond_1

    .line 1449
    if-nez p3, :cond_0

    .line 1450
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl$DOSCountCallback;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DatabaseImpl$DOSCountCallback;->count:J

    .line 1451
    return-void

    .line 1449
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1448
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
